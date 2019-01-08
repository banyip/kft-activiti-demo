package me.kafeitu.demo.activiti.service.oa.leave;

import me.kafeitu.demo.activiti.entity.oa.Leave;
import me.kafeitu.demo.activiti.entity.oa.Relative;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;
import org.activiti.engine.runtime.ProcessInstance;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

/**
 * 销假后处理器
 * <p>设置销假时间</p>
 * <p>使用Spring代理，可以注入Bean，管理事物</p>
 *
 * @author HenryYan
 */
@Component
@Transactional
public class PostVisitProcessor implements TaskListener {

    private static final long serialVersionUID = 1L;

    private Logger logger = LoggerFactory.getLogger(getClass());
    
    @Autowired
    LeaveManager leaveManager;

    @Autowired
    RuntimeService runtimeService;

    /* (non-Javadoc)
     * @see org.activiti.engine.delegate.TaskListener#notify(org.activiti.engine.delegate.DelegateTask)
     */
    public void notify(DelegateTask delegateTask) {
        String processInstanceId = delegateTask.getProcessInstanceId();
        ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();
        Leave leave = leaveManager.getLeave(new Long(processInstance.getBusinessKey()));
        Set<String> variableNames = delegateTask.getVariableNames();

        //把leave.relatives存放到list
        List<Relative> relatives = new ArrayList<Relative>();
        for (Relative relative: leave.getRelatives()) {  
            relatives.add(relative);  
      }  
        logger.debug("走访信息保存中："+variableNames);
		for (String key : variableNames) {
			if(key.indexOf("leave_")==0)
			{
				logger.debug("走访信息保存内容key："+key);
				String methodname= key.substring(6,7).toUpperCase()+key.substring(7);
				Object value = delegateTask.getVariable(key);
				try {
					    logger.debug("走访信息保存内容method："+methodname);
						logger.debug("走访信息保存内容value："+value);
						Class clazz = Class.forName("me.kafeitu.demo.activiti.entity.oa.Leave");
				        // 定义参数类型
				        Class[] params = new Class[1];
				        params[0] = String.class;
				        Method m = clazz.getDeclaredMethod("set"+methodname, params);
				        // 设置参数
				        Object[] p = new Object[1];
				        p[0] = delegateTask.getVariable(key);
				        m.invoke(leave, p);				        
				        logger.debug("走访信息保存："+leave.getStudentId());
					}
					catch(Exception e)
					{
						logger.error("走访信息保存失败：", e);
					}
					logger.debug("走访信息保存成功："+key);
			} else if(key.indexOf("relatives")==0)
			{ 
				
				int index = Integer.parseInt(key.substring(10,11));
				Relative relative = relatives.get(index);
				String methodname= key.substring(13,14).toUpperCase()+key.substring(14);
				Object value = delegateTask.getVariable(key);
				try {
					    logger.debug("走访信息保存内容method：set"+methodname);
						logger.debug("走访信息保存内容value："+value);
				        Class clazz = Class.forName("me.kafeitu.demo.activiti.entity.oa.Relative");
				        // 定义参数类型
				        Class[] params = new Class[1];
				        params[0] = String.class;
				        Method m = clazz.getDeclaredMethod("set"+methodname, params);
				        // 设置参数
				        Object[] p = new Object[1];
				        p[0] = delegateTask.getVariable(key);
				        m.invoke(relative, p);
				        logger.debug("亲戚信息保存内容：set"+methodname);
				        logger.debug("亲戚信息保存内容："+p[0]);
					}
					catch(Exception e)
					{
						logger.error("走访信息保存失败：", e);
					}
					logger.debug("走访信息保存成功："+key);
					
			}
		}

/*        		
        Object realityStartTime = delegateTask.getVariable("realityStartTime");
        leave.setRealityStartTime((Date) realityStartTime);
        Object realityEndTime = delegateTask.getVariable("realityEndTime");
        leave.setRealityEndTime((Date) realityEndTime);
*/
        leaveManager.saveLeave(leave);
    }

}
