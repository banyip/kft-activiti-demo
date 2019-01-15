package me.kafeitu.demo.activiti.entity.zhuxue;


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
@Table(name = "ZHUXUE_RELATIVE")
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
		this.anualIncome = relativeInfos.get(5);
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
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	

	
	@Column
	public String getHealth() {
		return health;
	}
	public void setHealth(String health) {
		this.health = health;
	}

	@Column
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
 

	private String relativeId ="";
    private String relationship="";
    private String name="";
    private String contactNum="";
    private String profectional="";
    private String job="";
    private String anualIncome="";
    private String health="";
    private String education="";
    private String otherSponse="";
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date birthDate;
    
    @Column
    public String getProfectional() {
		return profectional;
	}
	public void setProfectional(String profectional) {
		this.profectional = profectional;
	}
	
	@Column
	public String getOtherSponse() {
		return otherSponse;
	}
	public void setOtherSponse(String otherSponse) {
		this.otherSponse = otherSponse;
	}
	public Relative() {}
	public String getAnualIncome() {
		return anualIncome;
	}
	public void setAnualIncome(String anualIncome) {
		this.anualIncome = anualIncome;
	}
    
	public boolean isEmpty()
	{
		if(relativeId.length()+relationship.length()+name.length()+contactNum.length()+profectional.length()+job.length()+anualIncome.length()+health.length()+education.length()+otherSponse.length()==0)
			return true;
		else 
			return false;
	}
	
    
    
    
    
    

}
