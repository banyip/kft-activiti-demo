package me.kafeitu.demo.activiti.dao;

import me.kafeitu.demo.activiti.entity.zhuxue.Transfer;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

/**
 * 请假实体管理接口
 *
 * @author HenryYan
 */
@Component
public interface TransferDao extends CrudRepository<Transfer, Long> {
	Iterable<Transfer> findBySemesterOrderBySemesterDesc(String semester);

	   @Query(
	            value = "select distinct semester from zhuxue_transfer order by semester desc",
	            nativeQuery = true
	    )
	    List<Object> findAllSemester();

}

