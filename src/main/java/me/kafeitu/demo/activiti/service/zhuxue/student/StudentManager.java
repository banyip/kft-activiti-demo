package me.kafeitu.demo.activiti.service.zhuxue.student;

import me.kafeitu.demo.activiti.dao.StudentDao;
import me.kafeitu.demo.activiti.dao.TransferDao;
import me.kafeitu.demo.activiti.entity.zhuxue.Exam;
import me.kafeitu.demo.activiti.entity.zhuxue.Relative;
import me.kafeitu.demo.activiti.entity.zhuxue.Student;
import me.kafeitu.demo.activiti.util.Page;

import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/**
 * 请假实体管理
 *
 * @author HenryYan
 */
@Component
@Transactional(readOnly = true)
public class StudentManager {

	private <T> void cleanEmpty(List<T> list) throws IllegalArgumentException, IllegalAccessException
	{
		int valueSize=0;
		List<T> objtodel = new ArrayList<T>();
		for (T obj: list) { 

			Class c=obj.getClass(); 
			Field[] fields=c.getDeclaredFields();
			for (Field field: fields)			
				if(field.isAccessible()&&field.getType().getCanonicalName()=="java.lang.String")
					valueSize = valueSize + ((String)field.get(obj)).length();
	
			if(valueSize==0)
				objtodel.add(obj);
			
			/*{
		          Iterator<T> iterator = list.iterator();
		          while (iterator.hasNext()) {
		              T objinlist = iterator.next();
		             if (objinlist == obj) {
		                 iterator.remove();
		             }
		         }
			}*/
			
		}
		for(T obj: objtodel)
			list.remove(obj);
	}

    private StudentDao studentDao;
    @Autowired
    private TransferManager transferManager;
    public Student getStudent(Long id) {
        Student student = studentDao.findOne(id);        
        String studentAuditNo=student.getAuditNo();
        if(studentAuditNo!=null)
        	student.setTransfer(transferManager.getAllTransferByStudentId(studentAuditNo));
        return student;
    }

    @Transactional(readOnly = false)
    public void delStudent(Long id)
    {
    	studentDao.delete(id);
    }
    
    public List<Student> getAllStudent() {
    	Iterable<Student> geted = studentDao.findAll();

    	List<Student> studentList = Lists.newArrayList(geted);  
        return  studentList;
    }

    
    @Transactional(readOnly = false)
    public void saveStudent(Student entity) throws IllegalArgumentException, IllegalAccessException {
    	
    	if (entity.getId() == null) {
            entity.setApplyTime(new Date());
        }
//        List<Relative> items = entity.getRelatives();
//        this.<Relative>cleanEmpty(items);
//        List<Exam> exams=entity.getExams();
//        this.<Exam>cleanEmpty(exams);
        /*
        for (Relative item: items) {  
            if(emptyOrNot(item))
            	items.remove(item);  

           
      }  
   */     
        studentDao.save(entity);
    }

    @Autowired
    public void setStudentDao(StudentDao studentDao) {
        this.studentDao = studentDao;
    }

}
