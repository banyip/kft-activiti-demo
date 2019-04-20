package me.kafeitu.demo.activiti.service.zhuxue.student;

import me.kafeitu.demo.activiti.dao.StudentDao;
import me.kafeitu.demo.activiti.dao.TransferDao;
import me.kafeitu.demo.activiti.entity.zhuxue.Exam;
import me.kafeitu.demo.activiti.entity.zhuxue.Relative;
import me.kafeitu.demo.activiti.entity.zhuxue.Student;
import me.kafeitu.demo.activiti.entity.zhuxue.Transfer;
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
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

/**
 * 请假实体管理
 *
 * @author HenryYan
 */
@Component
@Transactional(readOnly = true)
public class StudentManager {

	@PersistenceContext
	private EntityManager em;
	public List<Student> searchStudents(String queryString)
	{

		/*
		FullTextSession fullTextSession = Search.getFullTextSession(currentSession());
		Transaction tx = fullTextSession.beginTransaction();
		QueryBuilder qb = fullTextSession.getSearchFactory() .buildQueryBuilder().forEntity(entityType).get();
		org.apache.lucene.search.Query query = qb .keyword() .onFields("taskName", "content") .matching("扫黄") .createQuery();
		org.hibernate.Query hibQuery =  fullTextSession.createFullTextQuery(query, entityType);
		List result = hibQuery.list();
		return result;
*/
		
//		EntityManager em = Persistence.createEntityManagerFactory("default").createEntityManager();
		FullTextEntityManager fullTextEntityManager =
		    org.hibernate.search.jpa.Search.getFullTextEntityManager(em);
		em.getTransaction().begin();

		// create native Lucene query unsing the query DSL
		// alternatively you can write the Lucene query using the Lucene query parser
		// or the Lucene programmatic API. The Hibernate Search DSL is recommended though
		QueryBuilder qb = fullTextEntityManager.getSearchFactory()
		    .buildQueryBuilder().forEntity(Student.class).get();
		org.apache.lucene.search.Query luceneQuery = qb
		  .keyword()
		  .onFields("studentName", "auditNo")
		  .matching("Java rocks!")
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
    
    //获取某sponser资助的所有学生
    public List<Student> getAllStudentBysponserId(String sponserNo) {
    	Iterable<Student> geted = studentDao.findBySponserIdOrderByIdAsc(sponserNo);
    	List<Student> studentList = Lists.newArrayList(geted);  
        return  studentList;
    }      
    
    //获取某指定学期没有被汇款的所有学生
    public List<Student> getAllStudentsWithoutTransfer(String semester) {
    	Iterable<Student> geted = studentDao.findAllStudentsWithoutTransfer(semester);
    	List<Student> studentList = Lists.newArrayList(geted);  
        return  studentList;
    }      
    
    //获取审核编号为auditNo的所有学生
    public List<Student> getAllStudentByAuditNo(String auditNo) {
    	Iterable<Student> geted = studentDao.findByAuditNoOrderByIdAsc(auditNo);
    	List<Student> studentList = Lists.newArrayList(geted);  
        return  studentList;
    }      
    
    
    @Autowired
    public void setStudentDao(StudentDao studentDao) {
        this.studentDao = studentDao;
    }

}
