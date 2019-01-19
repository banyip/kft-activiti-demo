package me.kafeitu.demo.activiti.entity.zhuxue;


import me.kafeitu.demo.activiti.entity.IdEntity;

import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.format.annotation.DateTimeFormat;



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

    private static final long serialVersionUID = 1L;
	private Date transferTime;
	private int amount;
	private String semester;
	private String method;
	private String transferMan;
	private String contactNo;
	
	@Column
	public Date getTransferTime() {
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
	@Column
	public String getTransferMan() {
		return transferMan;
	}
	@Column
	public String getContactNo() {
		return contactNo;
	}

	public void setTransferTime(Date transferTime) {
		this.transferTime = transferTime;
	}
	public void setTransferTime(String transferTime) throws ParseException {
		SimpleDateFormat sDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm");
		this.transferTime = sDateFormat.parse(transferTime);
	}
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
