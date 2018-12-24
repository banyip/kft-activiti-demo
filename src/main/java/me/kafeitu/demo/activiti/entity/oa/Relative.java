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

/**
 * Entity: Relative
 *
 * @author HenryYan
 */
@Entity
@Table(name = "OA_RELATIVE")
public class Relative extends IdEntity implements Serializable {

    private static final long serialVersionUID = 1L;
    @Column
    public String getRelativeId() {
		return relativeId;
	}
	public void setRelativeId(String relativeId) {
		this.relativeId = relativeId;
	}
	@Column
	public String getRelationship() {
		return relationship;
	}
	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
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
	@Column
	public String getProfecional() {
		return profecional;
	}
	public void setProfecional(String profecional) {
		this.profecional = profecional;
	}
	
	@Column
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	
	@Column
	public int getAnualIncome() {
		return anualIncome;
	}
	public void setAnualIncome(int anualIncome) {
		this.anualIncome = anualIncome;
	}
	
	@Column
	public String getHealth() {
		return health;
	}
	public void setHealth(String health) {
		this.health = health;
	}
	
	@Column
	public Leave getLeave() {
		return leave;
	}
	public void setLeave(Leave leave) {
		this.leave = leave;
	}

	private String relativeId;
    private String relationship;
    private String name;
    private String contactNum;
    private String profecional;
    private String job;
    private int anualIncome;
    private String health;
    private Leave leave;

    
    
    
    
    

}
