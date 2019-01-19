package me.kafeitu.demo.activiti.entity.zhuxue;


import me.kafeitu.demo.activiti.entity.IdEntity;

import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.format.annotation.DateTimeFormat;



import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
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
@Table(name = "ZHUXUE_AUDIT")
public class Audit extends IdEntity implements Serializable {

	public Audit()
	{
		
	}

    private String auditDate;
    private String poorReason;
    private String studentEvaluation;
    private String auditResult;
    private String ifAuditPass;
    private String auditPerson;
    private String auditPersonContactNo;
    private String applyEvaluationPicture;
    private List<AuditPhoto> auditphotos = new ArrayList <AuditPhoto>();
    

    @Column
	public String getAuditDate() {
		return auditDate;
	}
    @Column
	public String getPoorReason() {
		return poorReason;
	}
    @Column
	public String getStudentEvaluation() {
		return studentEvaluation;
	}
    @Column
	public String getAuditResult() {
		return auditResult;
	}
    @Column
	public String getIfAuditPass() {
		return ifAuditPass;
	}
    @Column
	public String getAuditPerson() {
		return auditPerson;
	}
    @Column
    @OneToMany(cascade = {CascadeType.ALL})
	public List<AuditPhoto> getAuditphotos() {
		return auditphotos;
	}
	public void setAuditDate(String auditDate) {
		this.auditDate = auditDate;
	}
	public void setPoorReason(String poorReason) {
		this.poorReason = poorReason;
	}
	public void setStudentEvaluation(String studentEvaluation) {
		this.studentEvaluation = studentEvaluation;
	}
	public void setAuditResult(String auditResult) {
		this.auditResult = auditResult;
	}
	public void setIfAuditPass(String ifAuditPass) {
		this.ifAuditPass = ifAuditPass;
	}
	public void setAuditPerson(String auditPerson) {
		this.auditPerson = auditPerson;
	}
	public void setAuditphotos(List<AuditPhoto> auditphotos) {
		this.auditphotos = auditphotos;
	} 
    
    
    

}
