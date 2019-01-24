package me.kafeitu.demo.activiti.web.zhuxue;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.lang.reflect.Method;

import me.kafeitu.demo.activiti.entity.zhuxue.Student;
import me.kafeitu.demo.activiti.entity.zhuxue.Transfer;
import me.kafeitu.demo.activiti.entity.zhuxue.Audit;
import me.kafeitu.demo.activiti.entity.zhuxue.AuditPhoto;
import me.kafeitu.demo.activiti.entity.zhuxue.Communicate;
import me.kafeitu.demo.activiti.entity.zhuxue.Evaluate;
import me.kafeitu.demo.activiti.entity.zhuxue.Exam;
import me.kafeitu.demo.activiti.entity.zhuxue.Relative;
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

/**
 * 请假控制器，包含保存、启动流程
 *
 * @author HenryYan
 */
@Controller
@RequestMapping(value = "/zhuxue/sponser")
public class SponserController {


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
    protected SponserManager sponserManager;

    private Map<String, Object> variables;



    /**
     * 读取学生列表
     *
     * @param sponser
     */
    @RequestMapping(value = "list/sponser")
    public ModelAndView taskList(HttpSession session, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("/zhuxue/sponser/sponserList");
        Page<Sponser> page = new Page<Sponser>(PageUtil.PAGE_SIZE);
        int[] pageParams = PageUtil.init(page, request);
        List<Sponser> results=sponserManager.getAllSponser();
        String userId = UserUtil.getUserFromSession(session).getId();
        page.setTotalCount(results.size());
        page.setResult(results);
        mav.addObject("page", page);
        return mav;
    }

    

}
