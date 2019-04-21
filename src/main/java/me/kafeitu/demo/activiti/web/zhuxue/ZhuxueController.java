package me.kafeitu.demo.activiti.web.zhuxue;
import org.apache.poi.hssf.usermodel.*;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;

import me.kafeitu.demo.activiti.entity.zhuxue.Student;
import me.kafeitu.demo.activiti.entity.zhuxue.Transfer;
import me.kafeitu.demo.activiti.entity.zhuxue.Audit;
import me.kafeitu.demo.activiti.entity.zhuxue.AuditPhoto;
import me.kafeitu.demo.activiti.entity.zhuxue.Communicate;
import me.kafeitu.demo.activiti.service.zhuxue.student.DataViewManager;
import me.kafeitu.demo.activiti.entity.zhuxue.Evaluate;
import me.kafeitu.demo.activiti.entity.zhuxue.Exam;
import me.kafeitu.demo.activiti.entity.zhuxue.Feedback;
import me.kafeitu.demo.activiti.entity.zhuxue.Relative;
import me.kafeitu.demo.activiti.entity.zhuxue.School;
import me.kafeitu.demo.activiti.entity.zhuxue.Sponser;
import me.kafeitu.demo.activiti.service.zhuxue.student.SponserManager;
import me.kafeitu.demo.activiti.service.zhuxue.student.StudentManager;

import me.kafeitu.demo.activiti.util.Page;
import me.kafeitu.demo.activiti.util.PageUtil;
import me.kafeitu.demo.activiti.util.UserUtil;
import me.kafeitu.demo.activiti.util.Variable;

import org.activiti.engine.identity.User;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import me.kafeitu.demo.activiti.util.ExcelUtil;
/**
 * 请假控制器，包含保存、启动流程
 *
 * @author HenryYan
 */
@Controller
@RequestMapping(value = "/zhuxue/student")
public class ZhuxueController {

	/*
	private <T> void inputHandle(String invokeClassName,Object value,String key,Student student)
		{
			//Object value = variables.get(key);
			//String invokeClassName = invokeClass.getName()+"s";   				
			int pos = (invokeClassName).length();
			int index = Integer.parseInt(key.substring(pos+1,pos+2));
			List<T> items = student.getCommunicates();
			while(index>=items.size())
			{
				items.add(new Communicate());
			}
			Communicate item = items.get(index);
			String methodname="set" + key.substring(pos+4,pos+5).toUpperCase()+key.substring(pos+5);
			
			invoke(methodname,value,(Object)items.get(index),invokeClassName,"java.lang.String");   					
		}*/

	private void invoke(String methodname,Object value,Object invoker,String invokerClass, String param)
	{
			try {
				    logger.debug("学生信息保存内容method："+methodname);
					logger.debug("学生信息保存内容value："+value);
					Class clazz = Class.forName("me.kafeitu.demo.activiti.entity.zhuxue."+invokerClass);
			        // 定义参数类型
			        Class[] params = new Class[1];
			        params[0] = Class.forName(param);
			        Method m = clazz.getDeclaredMethod(methodname, params);
			        // 设置参数
			        Object[] p = new Object[1];
			        p[0] = value;
			        m.invoke(invoker, p);				        
				}
				catch(Exception e)
				{
					logger.error("信息保存失败：", e);
				}
	}
	
    private Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    protected StudentManager studentManager;
    @Autowired
    protected SponserManager sponserManager;
    @Autowired
    protected DataViewManager dataview;
    private Map<String, Object> variables;



    
    /**
     * 读取支助人员列表
     *
     * @param sponser
     */
    @RequestMapping(value = "list/sponser")
    public ModelAndView sponserList(HttpSession session, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("/zhuxue/student/sponserList");
        Page<Sponser> page = new Page<Sponser>(PageUtil.PAGE_SIZE);
        int[] pageParams = PageUtil.init(page, request);
        
		List<Sponser> results=sponserManager.getAllSponser();
		List<Student> studentList = studentManager.getAllStudent();
        String userId = UserUtil.getUserFromSession(session).getId();
        page.setTotalCount(results.size());
        page.setResult(results);
        mav.addObject("page", page);
        mav.addObject("studentList",studentList);
        return mav;
    }

    


    /**
     * 读取学生列表
     *
     * @param student
     */
    @RequestMapping(value = "list/student")
    public ModelAndView taskList(HttpSession session, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("/zhuxue/student/studentList");
        Page<Student> page = new Page<Student>(PageUtil.PAGE_SIZE);
        int[] pageParams = PageUtil.init(page, request);
        List<Student> results=studentManager.getAllStudent();
        List<Sponser> sponserList = sponserManager.getAllSponser();
        String userId = UserUtil.getUserFromSession(session).getId();
        page.setTotalCount(results.size());
        page.setResult(results);
        mav.addObject("page", page);
        mav.addObject("sponserList",sponserList);
        return mav;
    }

    

    
    
    /**
     * 获取提示
     *
     * @param student
     * @throws IOException 
     */
    @RequestMapping(value = "query/sponsertips")
    public void sponserTips(HttpSession session, HttpServletRequest request,HttpServletResponse response) throws IOException {
        String userId = UserUtil.getUserFromSession(session).getId();
    	String result="";
    	String queryString = request.getParameter("queryString");
        if(queryString.length()>0)
			result=sponserManager.getNamesAndSponserNo(queryString);
       	logger.debug("tips:"+result);
        response.getWriter().write(result);
    }   
    
    /**
     * 获取提示
     *
     * @param student
     * @throws IOException 
     */
    @RequestMapping(value = "query/studenttips")
    public void studentTips(HttpSession session, HttpServletRequest request,HttpServletResponse response) throws IOException {
        String userId = UserUtil.getUserFromSession(session).getId();
    	String result="";
    	String queryString = request.getParameter("queryString");
        if(queryString.length()>0)
			result=studentManager.getAuditNoandStudentName(queryString);
       	logger.debug("tips:"+result);
        response.getWriter().write(result);
    }      
    
    
    /**
     * 搜索学生
     *
     * @param student
     */
    @RequestMapping(value = "query/student")
    public ModelAndView studentQuery(HttpSession session, HttpServletRequest request) {
        ModelAndView mav ;
        String queryString = request.getParameter("queryString");
        String keyup = request.getParameter("keyup");
        if(keyup != null && keyup.equals("1"))
        	mav = new ModelAndView("/zhuxue/student/studentListTbody");
        else
        	mav = new ModelAndView("/zhuxue/student/studentList");
		Page<Student> page = new Page<Student>(PageUtil.PAGE_SIZE);
        int[] pageParams = PageUtil.init(page, request);
        List<Student> results;
        if(queryString.length()>0)
			results=studentManager.search(queryString);
		else
			results=studentManager.getAllStudent();
		logger.debug("query string:"+queryString);
        logger.debug("query result numbers:"+results.size());
        if(results.size()>0)
        	logger.debug("query result name:"+results.get(0).getStudentName());
  //     	List<Sponser> sponserList = sponserManager.getAllSponser();
        String userId = UserUtil.getUserFromSession(session).getId();
        page.setTotalCount(results.size());
        page.setResult(results);
        mav.addObject("page", page);
//        mav.addObject("sponserList",sponserList);
        return mav;
    }   
    
    /**
     * 搜索资助人
     *
     * @param student
     */
    @RequestMapping(value = "query/sponser")
    public ModelAndView sponserQuery(HttpSession session, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("/zhuxue/student/sponserList");
        String queryString = request.getParameter("queryString");
		Page<Sponser> page = new Page<Sponser>(PageUtil.PAGE_SIZE);
        int[] pageParams = PageUtil.init(page, request);
        List<Sponser> results;
        if(queryString.length()>0)
			results=sponserManager.search(queryString);
		else
			results=sponserManager.getAllSponser();
		logger.debug("query string:"+queryString);
        logger.debug("query result numbers:"+results.size());
 //      	List<Student> studentList = studentManager.getAllStudent();
        String userId = UserUtil.getUserFromSession(session).getId();
        page.setTotalCount(results.size());
        page.setResult(results);
        mav.addObject("page", page);
 //       mav.addObject("studentList",studentList);
        return mav;
    }   
   
    
    /**
     * 读取学生列表
     *
     * @param student
     */
    @RequestMapping(value = "list/studentsimple")
    public ModelAndView studentsimpleList(HttpSession session, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("/zhuxue/student/studentList");
        Page<Student> page = new Page<Student>(PageUtil.PAGE_SIZE);
        int[] pageParams = PageUtil.init(page, request);
        List<Student> results=studentManager.getAllStudent();
        String userId = UserUtil.getUserFromSession(session).getId();
        page.setTotalCount(results.size());
        page.setResult(results);
        mav.addObject("page", page);
        return mav;
    }
   
    
    /*
    * newstudent
    *
    * @param id
    * @return
    */
   @RequestMapping(value = "newstudent", method = {RequestMethod.POST})
   @ResponseBody
   public String newstudent(Variable var,@RequestParam("filenames") String filenames,@RequestParam("studentpictures") MultipartFile[] studentPictureFiles) {
			try {
			   Student student = new Student();
			   return complete(var,filenames,studentPictureFiles,student);
		    }catch (Exception e) {
			  	logger.error("error on complete task", e);
			  	logger.error("error on complete , variables={}", new Object[]{var.getVariableMap(), e});
			  	return "error";
		  }	   
   }
   
   /*
    * newsponser
    *
    * @param id
    * @return
    */
   @RequestMapping(value = "newsponser", method = {RequestMethod.POST})
   @ResponseBody
   public String newsSponser(Variable var,@RequestParam("filenames") String filenames,@RequestParam("studentpictures") MultipartFile[] studentPictureFiles) {
			try {
			   Sponser sponser = new Sponser();
			   return completesponser(var,filenames,studentPictureFiles,sponser);
		    }catch (Exception e) {
			  	logger.error("error on complete task", e);
			  	logger.error("error on complete , variables={}", new Object[]{var.getVariableMap(), e});
			  	return "error";
		  }	   
   }
   
   
   /*
    * editstudent
    *
    * @param id
    * @return
    */
   @RequestMapping(value = "editstudent", method = {RequestMethod.POST})
   @ResponseBody
   public String editstudent(Variable var,@RequestParam("filenames") String filenames,@RequestParam("studentpictures") MultipartFile[] studentPictureFiles) {
       try {
           Map<String, Object> variables = var.getVariableMap();
           
           Set<String> variableNames = variables.keySet();
           String studentId = (String)variables.get("student_id");
           variables.remove("student_id");
           Student student =studentManager.getStudent(Long.parseLong(studentId));

		   return complete(var,filenames,studentPictureFiles,student);
	    }catch (Exception e) {
		  	logger.error("error on complete task", e);
		  	logger.error("error on complete , variables={}", new Object[]{var.getVariableMap(), e});
		  	return "error";
	  }	   
      
  }  
   
   
   /*
    * editsponser
    *
    * @param id
    * @return
    */
   @RequestMapping(value = "editsponser", method = {RequestMethod.POST})
   @ResponseBody
   public String editSponser(Variable var,@RequestParam("filenames") String filenames,@RequestParam("studentpictures") MultipartFile[] studentPictureFiles) {
			try {
				Map<String, Object> variables = var.getVariableMap();
		           
		        Set<String> variableNames = variables.keySet();
		        String sponserId = (String)variables.get("sponser_id");
		        Sponser sponser =sponserManager.getSponser(Long.parseLong(sponserId));
		        variables.remove("sponser_id");
				
			   return completesponser(var,filenames,studentPictureFiles,sponser);
		    }catch (Exception e) {
			  	logger.error("error on complete task", e);
			  	logger.error("error on complete , variables={}", new Object[]{var.getVariableMap(), e});
			  	return "error";
		  }	   
   }
    
   
   
   
   private String complete(Variable var,String filenames,MultipartFile[] studentPictureFiles,Student student) throws Exception {
  
           Map<String, Object> variables = var.getVariableMap();
           
           Set<String> variableNames = variables.keySet();

 /*          //把student.relatives存放到list
           List<Relative> relatives = new ArrayList<Relative>();
*/

           logger.debug("学生信息保存中filenames："+filenames);
           //logger.debug("学生信息保存中filenames："+studentPictureFiles);
   		for (String key : variableNames) {
/*			if(key.indexOf("sponserId")>=0)
			{
				Object value = variables.get(key);
				Sponser sponser = sponserManager.getSponser(Long.parseLong((String)  value));
				if(!sponser.getStudentsToSponse().contains(student))
					sponser.addStudent(student);
				student.setSponserId((String)value);
			}else*/
   			if(key.indexOf("student_")==0)
   			{
 
   				logger.debug("学生信息保存内容key："+key);
   				String methodname= "set"+key.substring(8,9).toUpperCase()+key.substring(9);
   				Object value = variables.get(key);
   				invoke(methodname,value,(Object)student,"Student","java.lang.String");
 				logger.debug("学生信息保存成功："+key);
   			}
   			/*else if(key.equals("relative"))
   			{
   		        String relatives = (String)variables.get(key);
   		        student.setRelatives(relatives);
   			}*/
   			else if(key.indexOf("audits")==0)
   			{
   				Object value = variables.get(key);
   				String invokeClassName = "Audit";   				
   				int pos = (invokeClassName).length()+1;
   				int index = Integer.parseInt(key.substring(pos+1,pos+2));
   				List<Audit> audits = student.getAudits();
   				while(index>=audits.size())
   				{
   					audits.add(new Audit());
   				}
   				Audit audit = audits.get(index);
   				String methodname;
   				if(key.indexOf("auditPhotos")>0)
   				{
   					int photopos = "audits[0]_auditPhotos".length();
   					int photoindex = Integer.parseInt(key.substring(photopos+1,photopos+2));
   					List<AuditPhoto> auditPhotos = audit.getAuditPhotos();
   					while(photoindex>=auditPhotos.size())
   					{
   						auditPhotos.add(new AuditPhoto());
   					}
    					AuditPhoto auditPhoto = auditPhotos.get(photoindex);
   					auditPhoto.setPhotoDate((String) value);
   					methodname="set" + key.substring(photopos+4,photopos+5).toUpperCase()+key.substring(photopos+5);
   	   				invokeClassName="AuditPhoto";
   	   				invoke(methodname,value,(Object)auditPhoto,invokeClassName,"java.lang.String");   					
   	   				
   				}
   				else
   				{
   					methodname="set" + key.substring(pos+4,pos+5).toUpperCase()+key.substring(pos+5);
   					invoke(methodname,value,(Object)audits.get(index),invokeClassName,"java.lang.String"); 
   				}
   			}else if(key.indexOf("communicates")==0)
   			{
   				Object value = variables.get(key);
   				String invokeClassName = "Communicate";   				
   				int pos = (invokeClassName).length()+1;
   				int index = Integer.parseInt(key.substring(pos+1,pos+2));
   				List<Communicate> items = student.getCommunicates();
   				while(index>=items.size())
   				{
   					items.add(new Communicate());
   				}
   				Communicate item = items.get(index);
   				String methodname="set" + key.substring(pos+4,pos+5).toUpperCase()+key.substring(pos+5);
   				
   				invoke(methodname,value,(Object)items.get(index),invokeClassName,"java.lang.String");   					
   			}else if(key.indexOf("exams")==0)
   			{
   				Object value = variables.get(key);
   				String invokeClassName = "Exam";   				
   				int pos = (invokeClassName).length()+1;
   				int index = Integer.parseInt(key.substring(pos+1,pos+2));
   				List<Exam> items = student.getExams();
   				while(index>=items.size())
   				{
   					items.add(new Exam());
   				}
   				Exam item = items.get(index);
   				String methodname="set" + key.substring(pos+4,pos+5).toUpperCase()+key.substring(pos+5);
   				
   				invoke(methodname,value,(Object)items.get(index),invokeClassName,"java.lang.String");   					
   			}/*else if(key.indexOf("transfers")==0)
   			{
   				Object value = variables.get(key);
   				String invokeClassName = "Transfer";   				
   				int pos = (invokeClassName).length()+1;
   				int index = Integer.parseInt(key.substring(pos+1,pos+2));
   				List<Transfer> items = student.getTransfers();
   				while(index>=items.size())
   				{
   					Transfer newTransfer = new Transfer();
   					newTransfer.setStudentToSponse(student);
   					items.add(newTransfer);
   				}
   				Transfer item = items.get(index);
   				String methodname="set" + key.substring(pos+4,pos+5).toUpperCase()+key.substring(pos+5);   				
   				invoke(methodname,value,(Object)items.get(index),invokeClassName,"java.lang.String");   					
   			}*/
   			else if(key.indexOf("schools")==0)
   			{
   				Object value = variables.get(key);
   				String invokeClassName = "School";   				
   				int pos = (invokeClassName).length()+1;
   				int index = Integer.parseInt(key.substring(pos+1,pos+2));
   				List<School> items = student.getSchools();
   				while(index>=items.size())
   				{
   					items.add(new School());
   				}
   				//School item = items.get(index);
   				String methodname="set" + key.substring(pos+4,pos+5).toUpperCase()+key.substring(pos+5);
   				
   				invoke(methodname,value,(Object)items.get(index),invokeClassName,"java.lang.String");   					
   			}else if(key.indexOf("evaluates")==0)
   			{
   				Object value = variables.get(key);
   				String invokeClassName = "Evaluate";   				
   				int pos = (invokeClassName).length()+1;
   				int index = Integer.parseInt(key.substring(pos+1,pos+2));
   				List<Evaluate> items = student.getEvaluates();
   				while(index>=items.size())
   				{
   					items.add(new Evaluate());
   				}
   				Evaluate item = items.get(index);
   				String methodname="set" + key.substring(pos+4,pos+5).toUpperCase()+key.substring(pos+5);   				
   				invoke(methodname,value,(Object)items.get(index),invokeClassName,"java.lang.String");
   			
   			}else if(key.indexOf("relatives")==0)
   			{
   				Object value = variables.get(key);
   				String invokeClassName = "Relative";   				
   				int pos = (invokeClassName).length()+1;
   				logger.debug("亲戚信息保存key："+key);
   				int index = Integer.parseInt(key.substring(pos+1,pos+2));
   				List<Relative> items = student.getRelatives();
   				while(index>=items.size())
   				{
   					items.add(new Relative());
   				}
   				Relative item = items.get(index);
   				String methodname="set" + key.substring(pos+4,pos+5).toUpperCase()+key.substring(pos+5);   				
   				invoke(methodname,value,(Object)items.get(index),invokeClassName,"java.lang.String");
   			
   			}
   			else if(key.indexOf("transfers")==0)
   			{
   				Object value = variables.get(key);
   				String invokeClassName = "Transfer";   				
   				int pos = (invokeClassName).length()+1;
   				logger.debug("转账信息保存key："+key);
   				int index = Integer.parseInt(key.substring(pos+1,pos+2));
   				List<Transfer> items = student.getTransfers();
   				Transfer item = items.get(index);
   				String methodname="set" + key.substring(pos+4,pos+5).toUpperCase()+key.substring(pos+5);   				
   				invoke(methodname,value,(Object)items.get(index),invokeClassName,"java.lang.String");
   				
   			}   			
   			
   		}
   		//保存所有图片
   		
   		if(filenames.length()>0)
   		{
	   		String[] fileNameList = filenames.split(":",-1);
	        for(int i=0;i<fileNameList.length;i++)
	        {
	        	String filename = fileNameList[i];
	        	logger.debug("保存照片filename:"+filename);
	        	MultipartFile studentPictureFile = studentPictureFiles[i];
		   		if(!studentPictureFile.isEmpty())
		        {
		        	if(filename.indexOf("student_")==0)
		        	{
		        		int pos = "Student_".length();
		        		String whatPhoto = filename.substring(pos);
		        		student.savePicture(studentPictureFile,whatPhoto);
		        	}else if(filename.indexOf("audits")==0)
		        	{
		 				String invokeClassName = "audits"; 
		        		int pos = (invokeClassName).length();
		        		int index = Integer.parseInt(filename.substring(pos+1,pos+2));
		   				List<Audit> audits =  student.getAudits();
		   				while(index>=audits.size())
		   				{
		   					audits.add(new Audit());
		   				}
		   				Audit audit = audits.get(index);
		   				if(filename.indexOf("auditPhotos")>=0)
		   				{
			   				pos = "audits[0]_auditPhotos".length();
			   				index = Integer.parseInt(filename.substring(pos+1,pos+2));
			   				String whattosave=filename.substring(pos+4,pos+5).toUpperCase()+filename.substring(pos+5);
			   				List<AuditPhoto> auditPhotos = audit.getAuditPhotos();
			   				while(index>=auditPhotos.size())
			   				{
			   					auditPhotos.add(new AuditPhoto());
			   				}	   				
			   				AuditPhoto auditPhoto = auditPhotos.get(index);
			   				auditPhoto.savePicture(studentPictureFile, whattosave);
			   			}		        	
		   				else {
  			
			   				String whattosave=filename.substring(pos+4,pos+5).toUpperCase()+filename.substring(pos+5);
			   				audit.savePicture(studentPictureFile, whattosave);
		   				}
	   				}	else if(filename.indexOf("communicates")>=0)
		        	{
		        		logger.debug("开始保存communicates照片");
		 				String invokeClassName = "communicates";   				
		   				int pos = (invokeClassName).length();
		   				int index = Integer.parseInt(filename.substring(pos+1,pos+2));
		   				List<Communicate> items =  student.getCommunicates();
		   				while(index>=items.size())
		   				{
		   					items.add(new Communicate());
		   				}
		   				Communicate item = items.get(index);
		   				String whattosave=filename.substring(pos+4,pos+5).toUpperCase()+filename.substring(pos+5);
		   				logger.debug("保存照片whattosave:"+whattosave);
		   				item.savePicture(studentPictureFile, whattosave);
		   				logger.debug("保存照片成功");
		        	}
		        }
	        }
	    }
        studentManager.saveStudent(student);
        return "success";	 

      
  }

   private String completesponser(Variable var,String filenames,MultipartFile[] studentPictureFiles,Sponser sponser) throws Exception {
	   
       Map<String, Object> variables = var.getVariableMap();
       
       Set<String> variableNames = variables.keySet();

/*          //把student.relatives存放到list
       List<Relative> relatives = new ArrayList<Relative>();
*/

       logger.debug("学生信息保存中filenames："+filenames);
       //logger.debug("学生信息保存中filenames："+studentPictureFiles);
		for (String key : variableNames) {
			
			if(key.indexOf("transfers")==0)
			{
					
				Object value = variables.get(key);
				String invokeClassName = "Transfer";   				
				int pos = (invokeClassName).length()+1;
				int index = Integer.parseInt(key.substring(pos+1,pos+2));
				List<Transfer> items = sponser.getTransfers();
				while(index>=items.size())
				{
					Transfer newTransfer = new Transfer();
					newTransfer.setSponser(sponser);
					items.add(newTransfer);
				}
				Transfer item = items.get(index);
				String methodname="set" + key.substring(pos+4,pos+5).toUpperCase()+key.substring(pos+5);   				
				if(key.indexOf("studentId")>=0)
				{
				//	Student student = studentManager.getStudent(Long.parseLong((String) value));
					item.setStudentId((String)value);
				//	student.addTransfer(item);
					
				}else
					invoke(methodname,value,(Object)item,invokeClassName,"java.lang.String");   					
			}else if(key.indexOf("communicates")==0)
			{
					
				Object value = variables.get(key);
				String invokeClassName = "Communicate";   				
				int pos = (invokeClassName).length()+1;
				int index = Integer.parseInt(key.substring(pos+1,pos+2));
				List<Communicate> items = sponser.getCommunicates();
				while(index>=items.size())
				{
					Communicate newCommunicate = new Communicate();
					items.add(newCommunicate);
				}
				Communicate item = items.get(index);
				String methodname="set" + key.substring(pos+4,pos+5).toUpperCase()+key.substring(pos+5);   				
				invoke(methodname,value,(Object)item,invokeClassName,"java.lang.String");   					
			}else if(key.indexOf("feedbacks")==0)
			{
					
				Object value = variables.get(key);
				String invokeClassName = "Feedback";   				
				int pos = (invokeClassName).length()+1;
				int index = Integer.parseInt(key.substring(pos+1,pos+2));
				List<Feedback> items = sponser.getFeedbacks();
				while(index>=items.size())
				{
					Feedback newFeedback = new Feedback();
					items.add(newFeedback);
				}
				Feedback item = items.get(index);
				String methodname="set" + key.substring(pos+4,pos+5).toUpperCase()+key.substring(pos+5);   				
				invoke(methodname,value,(Object)item,invokeClassName,"java.lang.String");   					
			} else 
			{
				logger.debug("资助人信息保存内容key："+key);
				String methodname= "set"+key.substring(0,1).toUpperCase()+key.substring(1);
				Object value = variables.get(key);
				invoke(methodname,value,(Object)sponser,"Sponser","java.lang.String");
				logger.debug("资助人信息保存成功："+key);
			}
			
		}
		//保存所有图片
		
		if(filenames.length()>0)
		{
   		String[] fileNameList = filenames.split(":",-1);
        for(int i=0;i<fileNameList.length;i++)
        {
        	String filename = fileNameList[i];

        	MultipartFile studentPictureFile = studentPictureFiles[i];
	   		if(!studentPictureFile.isEmpty())
	        {
	        	if(filename.indexOf("communicates")==0)
	        	{
	 				String invokeClassName = "communicates";   				
	   				int pos = (invokeClassName).length();
	   				int index = Integer.parseInt(filename.substring(pos+1,pos+2));
	   				List<Communicate> items =  sponser.getCommunicates();
	   				while(index>=items.size())
	   				{
	   					items.add(new Communicate());
	   				}
	   				Communicate item = items.get(index);
	   				String whattosave=filename.substring(pos+4,pos+5).toUpperCase()+filename.substring(pos+5);
	   				item.savePicture(studentPictureFile, whattosave);
	        	}else if(filename.indexOf("feedbacks")==0)
	        	{
	 				String invokeClassName = "feedbacks";   				
	   				int pos = (invokeClassName).length();
	   				int index = Integer.parseInt(filename.substring(pos+1,pos+2));
	   				List<Feedback> items =  sponser.getFeedbacks();
	   				while(index>=items.size())
	   				{
	   					items.add(new Feedback());
	   				}
	   				Feedback item = items.get(index);
	   				String whattosave=filename.substring(pos+4,pos+5).toUpperCase()+filename.substring(pos+5);
	   				item.savePicture(studentPictureFile, whattosave);
	        	}else 
	        	{
	        		String whatPhoto = filename;
	        		sponser.savePicture(studentPictureFile,whatPhoto);
	        	}
	        	
	        }
        }

   }
   sponserManager.saveSponser(sponser);
   
   return "success";	 

  
}


   


    /**
     * 读取详细数据
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "detail/{id}")
    @ResponseBody
    public Student getStudent(@PathVariable("id") Long id) {
        Student student = studentManager.getStudent(id);
        return student;
    }

    /**
     * 读取详细数据
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "deletestudent/{id}")
    @ResponseBody
    public String delStudent(HttpSession session,@PathVariable("id") Long id) {
        String userId = UserUtil.getUserFromSession(session).getId();
        studentManager.delStudent(id);
        logger.debug("学生删除成功：id="+id);
       // Map<String, Object> variables = taskService.getVariables(taskId);
        return "success";
    }

    /**
     * 读取详细数据
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "deletesponser/{id}")
    @ResponseBody
    public String delsponser(HttpSession session,@PathVariable("id") Long id) {
        String userId = UserUtil.getUserFromSession(session).getId();
        sponserManager.delSponser(id);
        logger.debug("资助人删除成功：id="+id);
       // Map<String, Object> variables = taskService.getVariables(taskId);
        return "success";
    }   
    
    /**
     * 读取详细数据
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "detail-with-vars/{id}")
    @ResponseBody
    public Student getStudentWithVars(@PathVariable("id") Long id) {
        Student student = studentManager.getStudent(id) ;
        logger.debug("学生信息读取成功：id="+ student.getId());
       // Map<String, Object> variables = taskService.getVariables(taskId);
        student.setVariables(variables);
        return student;
    }
    
    /**
     * 读取详细数据
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "sponserdetail-with-vars/{id}")
    @ResponseBody
    public Sponser getSponserWithVars(@PathVariable("id") Long id) {
        Sponser sponser = sponserManager.getSponser(id) ;
        sponser.getCommunicates();
        logger.debug("资助人信息读取成功：id="+ sponser.getId());
        logger.debug("资助人信息读取成功：name="+ sponser.getName());
       // Map<String, Object> variables = taskService.getVariables(taskId);
        logger.debug("资助人信息读取成功sponser："+ sponser);
        //sponser.setVariables(variables);
        
        return sponser;
    }   
    
    /**
     * 处理图片显示请求
     * @param fileName
     */
    @RequestMapping("showPic/{fileName}.{suffix}")
    public void showPicture(@PathVariable("fileName") String fileName,
                            @PathVariable("suffix") String suffix,
                            HttpServletResponse response){
        File imgFile = new File("pictures/" + fileName + "." + suffix);
        responseFile(response, imgFile);
    }

    /**
     * 响应输出图片文件
     * @param response
     * @param imgFile
     */
    private void responseFile(HttpServletResponse response, File imgFile) {
        try(InputStream is = new FileInputStream(imgFile);
            OutputStream os = response.getOutputStream();){
            byte [] buffer = new byte[1024]; // 图片文件流缓存池
            while(is.read(buffer) != -1){
                os.write(buffer);
            }
            os.flush();
        } catch (IOException ioe){
            ioe.printStackTrace();
        }
    }

   
  //导出学生到EXCEL
    @RequestMapping(value = "exportstudent")
    public void exportStudentExcel(HttpServletResponse response) throws Exception {

        // 响应到客户端
        try {        		
        		String fileName = dataview.setStudentRows();
           		this.setResponseHeader(response, fileName);
        		OutputStream os = response.getOutputStream();
                dataview.writeStudentsToExcelFile(os);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //导出资助人到EXCEL
    @RequestMapping(value = "exportsponser")
    public void exportSponserExcel(HttpServletResponse response) throws Exception {

        // 响应到客户端
        try {        		
        		String fileName = dataview.setSponserRows();
           		this.setResponseHeader(response, fileName);
        		OutputStream os = response.getOutputStream();
                dataview.writeSponsersToExcelFile(os);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
 
    //导出资助登记到EXCEL
    @RequestMapping(value = "exportsponseregistry")
    public void exportSponseRegistryExcel(HttpServletResponse response) throws Exception {

        // 响应到客户端
        try {        		
        		String fileName = dataview.setSponseRegistryRows();
           		this.setResponseHeader(response, fileName);
        		OutputStream os = response.getOutputStream();
                dataview.writeSponsersToExcelFile(os);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    
    
    /**
     * @return void
     * @Author 
     * @Description 发送响应流方法//TODO
     * @Date 2019/1/9 10:32
     * @Param [response, fileName]
     **/
    public void setResponseHeader(HttpServletResponse response, String fileName) {
        try {
            try {
                fileName = new String(fileName.getBytes(), "ISO8859-1");
            } catch (UnsupportedEncodingException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            response.setContentType("application/x-download");
            response.addHeader("Content-Disposition", "attachment;filename=" + fileName);
            response.addHeader("Pargam", "no-cache");
            response.addHeader("Cache-Control", "no-cache");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }


}
