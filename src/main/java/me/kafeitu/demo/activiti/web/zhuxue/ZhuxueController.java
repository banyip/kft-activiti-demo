package me.kafeitu.demo.activiti.web.zhuxue;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import me.kafeitu.demo.activiti.entity.zhuxue.Student;
import me.kafeitu.demo.activiti.entity.zhuxue.Student;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        ModelAndView mav = new ModelAndView("zhuxue/student/studentList");
        Page<Student> page = new Page<Student>(PageUtil.PAGE_SIZE);
        int[] pageParams = PageUtil.init(page, request);
        List<Student> results=studentManager.getAllStudent();
        String userId = UserUtil.getUserFromSession(session).getId();
        page.setTotalCount(results.size());
        page.setResult(results);
        mav.addObject("page", page);
        return mav;
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
    @RequestMapping(value = "detail-with-vars/{id}")
    @ResponseBody
    public Student getStudentWithVars(@PathVariable("id") Long id) {
        Student student = studentManager.getStudent(id) ;
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
