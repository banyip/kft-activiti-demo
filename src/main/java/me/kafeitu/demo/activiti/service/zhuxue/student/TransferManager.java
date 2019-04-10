package me.kafeitu.demo.activiti.service.zhuxue.student;

import me.kafeitu.demo.activiti.dao.TransferDao;
import me.kafeitu.demo.activiti.entity.zhuxue.Exam;
import me.kafeitu.demo.activiti.entity.zhuxue.Relative;
import me.kafeitu.demo.activiti.entity.zhuxue.Transfer;
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
public class TransferManager {


    private TransferDao transferDao;

    public Transfer getTransfer(Long id) {
        return transferDao.findOne(id);
    }

    @Transactional(readOnly = false)
    public void delTransfer(Long id)
    {
    	transferDao.delete(id);
    }
    
    public List<Transfer> getAllTransfer(String semester) {
    	Iterable<Transfer> geted = transferDao.findBySemesterOrderBySemesterDesc(semester);
    	List<Transfer> transferList = Lists.newArrayList(geted);  
        return  transferList;
    }
    
    public List<Transfer> getAllTransferByStudentId(String studentId) {
    	Iterable<Transfer> geted = transferDao.findByStudentStudentIdOrderByIdAsc(studentId);
    	List<Transfer> transferList = Lists.newArrayList(geted);  
        return  transferList;
    }    
    
    public List<Object> getAllSemester(){
    	List<Object> geted = transferDao.findAllSemester();
    	return geted;
    }

    @Transactional(readOnly = false)
    public void saveTransfer(Transfer entity) throws IllegalArgumentException, IllegalAccessException {
    	
    	if (entity.getId() == null) {
//            entity.setApplyTime(new Date());
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
        transferDao.save(entity);
    }

    @Autowired
    public void setTransferDao(TransferDao transferDao) {
        this.transferDao = transferDao;
    }

}
