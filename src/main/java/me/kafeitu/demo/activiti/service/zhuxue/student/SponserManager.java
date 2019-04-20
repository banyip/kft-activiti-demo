package me.kafeitu.demo.activiti.service.zhuxue.student;

import me.kafeitu.demo.activiti.dao.SponserDao;
import me.kafeitu.demo.activiti.entity.zhuxue.Exam;
import me.kafeitu.demo.activiti.entity.zhuxue.Relative;
import me.kafeitu.demo.activiti.entity.zhuxue.Sponser;
import me.kafeitu.demo.activiti.entity.zhuxue.Student;
import me.kafeitu.demo.activiti.util.Page;

import com.google.common.collect.Lists;

import org.hibernate.search.jpa.FullTextEntityManager;
import org.hibernate.search.query.dsl.QueryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;

/**
 * 请假实体管理
 *
 * @author HenryYan
 */
@Component
@Transactional(readOnly = true)
public class SponserManager {


    private SponserDao sponserDao;
    @Autowired
    private StudentManager studentManager;
	@PersistenceUnit(unitName="default")
	private EntityManagerFactory entityManagerFactory;
	public List<Sponser> search(String queryString)
	{

		
		EntityManager em = entityManagerFactory.createEntityManager();
		FullTextEntityManager fullTextEntityManager =
		    org.hibernate.search.jpa.Search.getFullTextEntityManager(em);
		em.getTransaction().begin();

		// create native Lucene query unsing the query DSL
		// alternatively you can write the Lucene query using the Lucene query parser
		// or the Lucene programmatic API. The Hibernate Search DSL is recommended though
		QueryBuilder qb = fullTextEntityManager.getSearchFactory()
		    .buildQueryBuilder().forEntity(Sponser.class).get();
		org.apache.lucene.search.Query luceneQuery = qb
		  .keyword()		  
		  .onFields("SponserNo", "name")
		  .ignoreAnalyzer()
		  .matching(queryString)
		  .createQuery();

		// wrap Lucene query in a javax.persistence.Query
		javax.persistence.Query jpaQuery =
		    fullTextEntityManager.createFullTextQuery(luceneQuery, Student.class);

		// execute search
		List result =jpaQuery.getResultList();

		em.getTransaction().commit();
		em.close();
		return result;
		
		
		
	}

    
    public Sponser getSponser(Long id) {
    	Sponser sponser = sponserDao.findOne(id); 
    	String sponserNo=sponser.getSponserNo();
        if(sponserNo!=null)
        	sponser.setStudentsToSponse(studentManager.getAllStudentBysponserId(sponserNo));
   	
        return sponser;
        
    }
    
    //获取某sponserNo对应的资助人
    public List<Sponser> getSponserBysponserNo(String sponserNo) {
    	Iterable<Sponser> geted = sponserDao.findBySponserNoOrderByIdAsc(sponserNo);
    	List<Sponser> SponserList = Lists.newArrayList(geted);  
        return  SponserList;
    }       

    @Transactional(readOnly = false)
    public void delSponser(Long id)
    {
    	sponserDao.deleteTransferForeignKey(id);
    	sponserDao.delete(id);
    }
    
    public List<Sponser> getAllSponser() {
    	Iterable<Sponser> geted = sponserDao.findAll();

    	List<Sponser> sponserList = Lists.newArrayList(geted);  
        return  sponserList;
    }

    
    @Transactional(readOnly = false)
    public void saveSponser(Sponser entity) throws IllegalArgumentException, IllegalAccessException {
    	
 //   	if (entity.getId() == null) {
//            entity.setApplyTime(new Date());
//        }
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
    	entity.setStudentsToSponse(studentManager.getAllStudentBysponserId(entity.getSponserNo()));
        sponserDao.save(entity);
    }

    @Autowired
    public void setSponserDao(SponserDao sponserDao) {
        this.sponserDao = sponserDao;
    }

}
