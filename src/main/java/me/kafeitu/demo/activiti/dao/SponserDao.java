package me.kafeitu.demo.activiti.dao;

import me.kafeitu.demo.activiti.entity.zhuxue.Sponser;
import me.kafeitu.demo.activiti.entity.zhuxue.Student;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
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
public interface SponserDao extends CrudRepository<Sponser, Long> {

	@Modifying
	@Query(value = "delete from zhuxue_student_transfers where transfers in (select id from zhuxue_transfer where sponser_id = ?1)",nativeQuery=true)
	public void deleteTransferForeignKey(Long sponser_id);
	
	@Query(value = "select a from Sponser a where sponserNo like %:queryString% or name like %:queryString%")
	public Iterable<Sponser> search(@Param("queryString")String queryString);
	
	@Query(value = "select a.sponserNo,a.name from Sponser a where sponserNo like %:queryString% or name like %:queryString%")
	public List  getNameandSponserNo(@Param("queryString")String queryString);
	Iterable<Sponser> findBySponserNoOrderByIdAsc(String ponserNo);
}
