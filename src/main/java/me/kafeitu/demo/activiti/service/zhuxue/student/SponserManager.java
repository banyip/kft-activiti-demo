package me.kafeitu.demo.activiti.service.zhuxue.student;

import me.kafeitu.demo.activiti.dao.SponserDao;
import me.kafeitu.demo.activiti.entity.zhuxue.Exam;
import me.kafeitu.demo.activiti.entity.zhuxue.Relative;
import me.kafeitu.demo.activiti.entity.zhuxue.Sponser;
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
public class SponserManager {


    private SponserDao sponserDao;

    public Sponser getSponser(Long id) {
        return sponserDao.findOne(id);
    }

    @Transactional(readOnly = false)
    public void delSponser(Long id)
    {
    	sponserDao.delete(id);
    }
    
    public List<Sponser> getAllSponser() {
    	Iterable<Sponser> geted = sponserDao.findAll();

    	List<Sponser> sponserList = Lists.newArrayList(geted);  
        return  sponserList;
    }

    
    @Transactional(readOnly = false)
    public void saveSponser(Sponser entity) throws IllegalArgumentException, IllegalAccessException {
    	
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
        sponserDao.save(entity);
    }

    @Autowired
    public void setSponserDao(SponserDao sponserDao) {
        this.sponserDao = sponserDao;
    }

}
