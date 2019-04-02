package me.kafeitu.demo.activiti.entity.zhuxue;


import me.kafeitu.demo.activiti.entity.IdEntity;
import me.kafeitu.demo.activiti.service.zhuxue.student.StudentManager;

import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
@Table(name = "ZHUXUE_TRANSFER")
public class Transfer extends IdEntity implements Serializable {

    private Logger logger = LoggerFactory.getLogger(getClass());
    private static final long serialVersionUID = 1L;
	private String transferTime;
	private String transferBank;
	private int amount=0;
	private String semester;
	private String method;
	private String transferMan;
	private String contactNo;
    private String studentId;
    private String memo;
    private Sponser sponser;
    private String grantTime;
    private int grantAmount=0;
    

    @Column
    public String getTransferBank() {
		return transferBank;
	}
    @Column
	public String getMemo() {
		return memo;
	}
	public void setTransferBank(String transferBank) {
		this.transferBank = transferBank;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}

	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="sponserId")
	@JsonBackReference
    public Sponser getSponser() {
		return sponser;
	}
	public void setSponser(Sponser sponser) {
		this.sponser = sponser;
	}

	@Column(length = 20)
    public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentToSponse) {
	this.studentId = studentToSponse;
	
	}



	
	@Column
	public String getTransferTime() {
		return transferTime;
	}
	@Column
	public int getAmount() {
		return amount;
	}
	@Column
	public String getSemester() {
		return semester;
	}
	@Column
	public String getMethod() {
		return method;
	}

	public String getTransferMan() {
		if(sponser!=null)
			transferMan=sponser.getName();
		return transferMan;
	}

	public String getContactNo() {
		if(sponser!=null)
			contactNo=sponser.getContactNo();
		return contactNo;
	}

	@Column
	public String getGrantTime() {
		return grantTime;
	}
	@Column
	public int getGrantAmount() {
		return grantAmount;
	}
	public void setGrantTime(String grantTime) {
		this.grantTime = grantTime;
	}
	public void setGrantAmount(int grantAmount) {
		this.grantAmount = grantAmount;
	}
	public void setGrantAmount(String grantAmount) {
		this.grantAmount = Integer.parseInt(grantAmount);
	}
	public void setTransferTime(String transferTime) {
		this.transferTime = transferTime;
	}
/*
	public void setTransferTime(String transferTime) throws ParseException {
		SimpleDateFormat sDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm");
		this.transferTime = sDateFormat.parse(transferTime);
	}
	*/
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public void setAmount(String amount) {
		this.amount = Integer.parseInt(amount);
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public void setTransferMan(String transferMan) {
		this.transferMan = transferMan;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public Transfer() {
		super();
	}
    
    
    
    
    
    
    

}
