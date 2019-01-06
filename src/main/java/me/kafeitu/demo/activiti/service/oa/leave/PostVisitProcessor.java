package me.kafeitu.demo.activiti.service.oa.leave;

import me.kafeitu.demo.activiti.entity.oa.Leave;
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
import java.util.Date;
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

        logger.debug("走访信息保存中："+variableNames);
		for (String key : variableNames) {
			if(key.indexOf("leave_")==0)
			{
				key = key.substring(6);
				Object value = delegateTask.getVariable(key);
				System.out.println(key + " = " + value);
				try {
		        Class clazz = Class.forName("me.kafeitu.demo.activiti.entity.oa.Leave");
		        // 定义参数类型
		        Class[] params = new Class[1];
		        params[0] = String.class;
		        Method m = clazz.getDeclaredMethod("set"+key, params);
		        // 设置参数
		        m.invoke(leave, delegateTask.getVariable(key));
				}
				catch(Exception e)
				{
					logger.error("走访信息保存失败：", e);
				}
				logger.debug("走访信息保存成功："+key);
			}
			logger.debug("走访信息保存中："+variableNames);
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
