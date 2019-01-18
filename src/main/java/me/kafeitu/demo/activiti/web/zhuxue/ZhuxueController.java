package me.kafeitu.demo.activiti.web.zhuxue;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.lang.reflect.Method;

import me.kafeitu.demo.activiti.entity.zhuxue.Student;
import me.kafeitu.demo.activiti.entity.zhuxue.Audit;
import me.kafeitu.demo.activiti.entity.zhuxue.AuditPhoto;
import me.kafeitu.demo.activiti.entity.zhuxue.Relative;

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

/**
 * 请假控制器，包含保存、启动流程
 *
 * @author HenryYan
 */
@Controller
@RequestMapping(value = "/zhuxue/student")
public class ZhuxueController {

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

    private Map<String, Object> variables;



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
   public String complete(Variable var,@RequestParam("filenames") String filenames,@RequestParam("studentpictures") MultipartFile[] studentPictureFiles) {
       try {
           Map<String, Object> variables = var.getVariableMap();
           Student student = new Student();
           Set<String> variableNames = variables.keySet();

 /*          //把student.relatives存放到list
           List<Relative> relatives = new ArrayList<Relative>();
*/

           logger.debug("学生信息保存中filenames："+filenames);
           //logger.debug("学生信息保存中filenames："+studentPictureFiles);
   		for (String key : variableNames) {
   			
   			if(key.indexOf("student_")==0)
   			{
   				logger.debug("学生信息保存内容key："+key);
   				String methodname= "set"+key.substring(8,9).toUpperCase()+key.substring(9);
   				Object value = variables.get(key);
   				invoke(methodname,value,(Object)student,"Student","java.lang.String");
 				logger.debug("学生信息保存成功："+key);
   			}else if(key.equals("relative"))
   			{
   		        String relatives = (String)variables.get(key);
   		        student.setRelatives(relatives);
   			}else if(key.indexOf("audit")==0)
   			{
   				Object value = variables.get(key);
   				String invokeClassName = "Audit";   				
   				int pos = (invokeClassName).length();
   				int index = Integer.parseInt(key.substring(pos+1,pos+2));
   				List<Audit> audits = student.getAudits();
   				while(index>=audits.size())
   				{
   					audits.add(new Audit());
   				}
   				Audit audit = audits.get(index);
   				if(key.indexOf("auditPhoto")>0)
   				{
   					int photopos = "audit[0]_auditPhoto[0]".length();
   					int photoindex = Integer.parseInt(key.substring(pos+1,pos+2));
   					List<AuditPhoto> auditphotos = audit.getAuditphotos();
   					while(photoindex>=auditphotos.size())
   					{
   						auditphotos.add(new AuditPhoto());
   					}
   					AuditPhoto auditphoto = auditphotos.get(photoindex);
   					auditphoto.setPhotoDate((String) value);
   				}
   				String methodname="set" + key.substring(pos+4,pos+5).toUpperCase()+key.substring(pos+5);
   				
   				invoke(methodname,value,(Object)audits.get(index),invokeClassName,"java.lang.String");   					
   			}
   		}
   		//保存所有图片
   		String[]  fileNameList = filenames.split(":",-1);
        for(int i=0;i<fileNameList.length;i++)
        {
        	String filename = fileNameList[i];
        	MultipartFile studentPictureFile = studentPictureFiles[i];
	   		if(!studentPictureFile.isEmpty())
	        {
	        	if(filename.indexOf("student_")==0)
	        	{
	        		student.savePicture(studentPictureFile);
	        	}
	        	if(filename.indexOf("audit")==0)
	        	{
	 				String invokeClassName = "audit";   				
	   				int pos = (invokeClassName).length();
	   				int index = Integer.parseInt(filename.substring(pos+1,pos+2));
	   				List<Audit> audits =  student.getAudits();
	   				while(index>=audits.size())
	   				{
	   					audits.add(new Audit());
	   				}
	   				Audit audit = audits.get(index);
	   				pos = "audit[0]_auditPhoto".length();
	   				index = Integer.parseInt(filename.substring(pos+1,pos+2));
	   				String whattosave=filename.substring(pos+4,pos+5).toUpperCase()+filename.substring(pos+5);
	   				List<AuditPhoto> auditPhotos = audit.getAuditphotos();
	   				while(index>=auditPhotos.size())
	   				{
	   					auditPhotos.add(new AuditPhoto());
	   				}	   				
	   				AuditPhoto auditPhoto = auditPhotos.get(index);
	   				auditPhoto.savePicture(studentPictureFile, whattosave);
	        	}
	        }
        }
        studentManager.saveStudent(student);
        return "success";	 
      }catch (Exception e) {
    	  	logger.error("error on complete task", e);
    	  	logger.error("error on complete , variables={}", new Object[]{var.getVariableMap(), e});
    	  	return "error";
      }
      
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
     * 处理图片显示请求
     * @param fileName
     */
    @RequestMapping("showPic/{fileName}.{suffix}")
    public void showPicture(@PathVariable("fileName") String fileName,
                            @PathVariable("suffix") String suffix,
                            HttpServletResponse response){
        File imgFile = new File("/studentPictures/" + fileName + "." + suffix);
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


}
