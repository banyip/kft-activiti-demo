package me.kafeitu.demo.activiti.web.zhuxue;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.lang.reflect.Method;

import me.kafeitu.demo.activiti.entity.zhuxue.Student;
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
   public String complete(Variable var,@RequestParam("student_picture") MultipartFile studentPictureFile) {
       try {
           Map<String, Object> variables = var.getVariableMap();
           Student student = new Student();
           Set<String> variableNames = variables.keySet();

 /*          //把student.relatives存放到list
           List<Relative> relatives = new ArrayList<Relative>();
*/
           if(!studentPictureFile.isEmpty())
           {
        	   try {  
        		   student.savePicture(studentPictureFile);
               } catch (Exception e) {  
                  logger.error("学生照片保存出错");  
               }  
           }
           logger.debug("学生信息保存中："+variableNames);
   		for (String key : variableNames) {
   			
   			if(key.indexOf("student_")==0)
   			{
   				logger.debug("学生信息保存内容key："+key);
   				String methodname= key.substring(8,9).toUpperCase()+key.substring(9);
   				Object value = variables.get(key);
   				try {
   					    logger.debug("学生信息保存内容method："+methodname);
   						logger.debug("学生信息保存内容value："+value);
   						Class clazz = Class.forName("me.kafeitu.demo.activiti.entity.zhuxue.Student");
   				        // 定义参数类型
   				        Class[] params = new Class[1];
   				        params[0] = String.class;
   				        Method m = clazz.getDeclaredMethod("set"+methodname, params);
   				        // 设置参数
   				        Object[] p = new Object[1];
   				        p[0] = value;
   				        m.invoke(student, p);				        
   					}
   					catch(Exception e)
   					{
   						logger.error("学生信息保存失败：", e);
   					}
   					logger.debug("学生信息保存成功："+key);
   			}else if(key.equals("relative"))
   			{
   		        String relatives = (String)variables.get(key);
   		        student.setRelatives(relatives);
   			}
/*   			else if(key.indexOf("relatives[")==0)
   			{ 
   				
   				int index = Integer.parseInt(key.substring(10,11));
   				Relative relative = relatives.get(index);
   				String methodname= key.substring(13,14).toUpperCase()+key.substring(14);
   				Object value = variables.get(key);
   				try {
   					    logger.debug("亲戚信息保存内容method：set"+methodname);
   						logger.debug("亲戚信息保存内容value："+value);
   				        Class clazz = Class.forName("me.kafeitu.demo.activiti.entity.zhuxue.Relative");
   				        // 定义参数类型
   				        Class[] params = new Class[1];
   				        params[0] = String.class;
   				        Method m = clazz.getDeclaredMethod("set"+methodname, params);
   				        // 设置参数
   				        Object[] p = new Object[1];
   				        p[0] = value;
   				        m.invoke(relative, p);   				     
   				        logger.debug("亲戚信息保存成功p0：set"+methodname+p[0]);
   					}
   					catch(Exception e)
   					{
   						logger.error("亲戚信息保存失败：", e);
   					}
   					logger.debug("亲戚信息保存成功："+key);
   					
   			}
  */
   		}
           studentManager.saveStudent(student);
           return "success";
       } catch (Exception e) {
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
