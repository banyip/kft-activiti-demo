package me.kafeitu.demo.activiti.dao;

import me.kafeitu.demo.activiti.entity.zhuxue.Sponser;
import me.kafeitu.demo.activiti.entity.zhuxue.Student;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

/**
 * 请假实体管理接口
 *
 * @author HenryYan
 */
@Component
public interface SponserDao extends CrudRepository<Sponser, Long> {

	@Modifying
	@Query(value = "delete from zhuxue_student_transfers where transfers in (select id from zhuxue_transfer where sponser_id = ?1)",nativeQuery=true)
	public void deleteTransferForeignKey(Long sponser_id);
	
	@Query(value = "select a from sponser a where sponserNo like '%?1%' or name like '%?1%’)")
	public Iterable<Sponser> search(String queryString);
	Iterable<Sponser> findBySponserNoOrderByIdAsc(String ponserNo);
}
