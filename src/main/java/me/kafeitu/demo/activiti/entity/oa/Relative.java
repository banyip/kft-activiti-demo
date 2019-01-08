package me.kafeitu.demo.activiti.entity.oa;


import me.kafeitu.demo.activiti.entity.IdEntity;

import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.format.annotation.DateTimeFormat;



import javax.persistence.*;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import java.util.HashSet;
import java.util.List;

/**
 * Entity: Relative
 *
 * @author HenryYan
 */
@Entity
@Table(name = "OA_RELATIVE")
public class Relative extends IdEntity implements Serializable {

	
	public Relative(String relative)
	{
		List<String> relativeInfos = Arrays.asList(relative.split(":"));
		System.out.println(relativeInfos);
		this.relationship= relativeInfos.get(0);
		this.name = relativeInfos.get(1);
		this.relativeId = relativeInfos.get(2);		
		this.contactNum = relativeInfos.get(3);
		this.profectional = relativeInfos.get(4);
		this.anualIncome = Integer.parseInt(relativeInfos.get(5));
		this.health = relativeInfos.get(6);
		return;
	}
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

	@Column
	public String getContactNum() {
		return contactNum;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setContactNum(String contactNum) {
		this.contactNum = contactNum;
	}
	@Column
	public String getprofectional() {
		return profectional;
	}
	public void setprofectional(String profectional) {
		this.profectional = profectional;
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

	
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
 

	private String relativeId;
    private String relationship;
    private String name;
    private String contactNum;
    private String profectional;
    private String job;
    private int anualIncome=0;
    private String health;
    private String education;
    public Relative() {}
    
    
    
    
    
    

}
