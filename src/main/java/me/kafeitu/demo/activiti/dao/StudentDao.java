package me.kafeitu.demo.activiti.dao;

import me.kafeitu.demo.activiti.entity.zhuxue.Sponser;
import me.kafeitu.demo.activiti.entity.zhuxue.Student;




import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;

/**
 * 请假实体管理接口
 *
 * @author HenryYan
 */
@Component
public interface StudentDao extends CrudRepository<Student, Long> {
	Iterable<Student> findBySponserIdOrderByIdAsc(String sponserId);
	Iterable<Student> findByAuditNoOrderByIdAsc(String AuditNo);
	@Query(
            value = "select a from Student a where a.auditNo not in (select distinct studentId from Transfer where semester=:semester)"
    )
	Iterable<Student> findAllStudentsWithoutTransfer(@Param("semester")String semester);
	@Query(value = "select a from Student where studentName like '%?1%' or auditNo like '%?1%’)")
	public Iterable<Student> search(String queryString);

}
