package me.kafeitu.demo.activiti.service.zhuxue.student;

import me.kafeitu.demo.activiti.dao.StudentDao;
import me.kafeitu.demo.activiti.entity.zhuxue.Student;
import me.kafeitu.demo.activiti.util.Page;

import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

/**
 * 请假实体管理
 *
 * @author HenryYan
 */
@Component
@Transactional(readOnly = true)
public class StudentManager {

    private StudentDao studentDao;

    public Student getStudent(Long id) {
        return studentDao.findOne(id);
    }

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
    public void saveStudent(Student entity) {
        if (entity.getId() == null) {
            entity.setApplyTime(new Date());
        }
        studentDao.save(entity);
    }

    @Autowired
    public void setStudentDao(StudentDao studentDao) {
        this.studentDao = studentDao;
    }

}
