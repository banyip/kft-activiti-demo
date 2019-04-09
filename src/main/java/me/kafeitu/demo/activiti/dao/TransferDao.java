package me.kafeitu.demo.activiti.dao;

import me.kafeitu.demo.activiti.entity.zhuxue.Transfer;
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
}

