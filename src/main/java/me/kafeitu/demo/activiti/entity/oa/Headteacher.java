package me.kafeitu.demo.activiti.entity.oa;

import me.kafeitu.demo.activiti.entity.IdEntity;

import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import java.util.HashSet;
/**
 * Entity: Relative
 *
 * @author HenryYan
 */
@Entity
@Table(name = "OA_HEADTEACHER")
public class Headteacher extends IdEntity implements Serializable {

    private static final long serialVersionUID = 1L;

	@Column
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column
	public String getContactNum() {
		return contactNum;
	}
	public void setContactNum(String contactNum) {
		this.contactNum = contactNum;
	}
	private String name;
    private String contactNum;

    
    
    
    

}
