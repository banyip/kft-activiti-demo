package me.kafeitu.demo.activiti.entity.zhuxue;


import me.kafeitu.demo.activiti.entity.IdEntity;

import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.hibernate.search.annotations.Analyze;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.Store;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;

import java.io.File;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.HashSet;
import java.util.List;

/**
 * Entity: Relative
 *
 * @author HenryYan
 */
@Entity
@Indexed
@Table(name = "ZHUXUE_SPONSER")
public class Sponser extends IdEntity implements Serializable {

    private static final long serialVersionUID = 1L;
	private String sponserNo;
	private String name;
	private String nickName;
	private String contactNo;
	private String qq;
	private String email;
	private String wechat;
	private String birthdate;
	private String address;
	private String sponseDeadline;
	private String needReciept;
	private String picture;
	private String profectional;
	private String politicFace;
	private String sponseStartTime;
	private String sponseEndTime;
	private String sponseEndReason;
	private String sendEmail;
	private String operatingFee;
	private String studentNosToSponse;
	private String company;
	
	private List<Student> studentsToSponse=new ArrayList<Student>();
	private List<Transfer> transfers=new ArrayList<Transfer>();
	private List<Feedback> feedbacks = new ArrayList<Feedback>();
	private List<Communicate> communicates = new ArrayList<Communicate>();
	private Map<String, Object> variables;
	
	public String StudentsToSponseString()
	{
		String s_studentsToSponse = "";
		for(int l=0;l<this.studentsToSponse.size();l++)
			s_studentsToSponse = s_studentsToSponse + "\\" + this.studentsToSponse.get(l).getAuditNo();
		if(s_studentsToSponse.length()>0)
			s_studentsToSponse = s_studentsToSponse.substring(1);		
		return s_studentsToSponse;
	}
	
	
	@Transient
	public Map<String, Object> getVariables() {
		return variables;
	}

	public void setVariables(Map<String, Object> variables) {
		this.variables = variables;
	}

	public Sponser() {
		super();
		// TODO Auto-generated constructor stub
	}	
	
	@Column(length=50)
	@Field(index=Index.YES, analyze=Analyze.YES, store=Store.YES)
	public String getSponserNo() {
		return sponserNo;
	}
	@Column(length=50)
	@Field(index=Index.YES, analyze=Analyze.YES, store=Store.YES)
	public String getName() {
		return name;
	}
	@Column(length=50)
	public String getNickName() {
		return nickName;
	}
	@Column(length=50)
	public String getContactNo() {
		return contactNo;
	}
	@Column(length=50)
	public String getQq() {
		return qq;
	}
	@Column(length=50)
	public String getEmail() {
		return email;
	}
	@Column(length=50)
	public String getWechat() {
		return wechat;
	}
	@Column(length=50)
	public String getBirthdate() {
		return birthdate;
	}
	@Column(length=50)
	public String getAddress() {
		return address;
	}
	@Column(length=50)
	public String getSponseDeadline() {
		return sponseDeadline;
	}
	@Column(length=10)
	public String getNeedReciept() {
		return needReciept;
	}
	@Column(length=250)
	public String getPicture() {
		return picture;
	}
	@Column(length=250)
	public String getProfectional() {
		return profectional;
	}
	@Column(length=50)
	public String getPoliticFace() {
		return politicFace;
	}
	
	@Column(length=50)
	public String getSponseStartTime() {
		return sponseStartTime;
	}
	@Column(length=50)
	public String getSponseEndTime() {
		return sponseEndTime;
	}
	@Column(length=50)
	public String getSponseEndReason() {
		return sponseEndReason;
	}
	
	@Column
	@OneToMany(fetch=FetchType.EAGER,mappedBy ="sponser",cascade = { CascadeType.ALL })
	public List<Transfer> getTransfers() {
		return transfers;
	}
	
	@Transient
	public List<Communicate> getCommunicates() {
		int studentCount = this.studentsToSponse.size();
		communicates.clear();
		for(int i=0;i<studentCount;i++)
			communicates.addAll(this.studentsToSponse.get(i).getCommunicates());;		
		return communicates;
	}

	@Column
	@OneToMany(cascade = { CascadeType.ALL })
	public List<Feedback> getFeedbacks() {
		return feedbacks;
	}

	@Column
	public String getSendEmail() {
		return sendEmail;
	}

	@Column
	public String getOperatingFee() {
		return operatingFee;
	}

	@Transient
	public List<Student> getStudentsToSponse() {
		return studentsToSponse;
	}

	@Column
	public String getStudentNosToSponse() {
//		studentNosToSponse = this.StudentsToSponseString();
		return studentNosToSponse;
	}

	@Column
	public String getCompany() {
		return company;
	}


	public void setCompany(String company) {
		this.company = company;
	}


	public void setStudentNosToSponse(String studentNosToSponse) {
		this.studentNosToSponse = studentNosToSponse;
	}


	/**
	 * @param studentsToSponse the studentsToSponse to set
	 */
	public void setStudentsToSponse(List<Student> studentsToSponse) {
		this.studentsToSponse = studentsToSponse;
		this.studentNosToSponse = this.StudentsToSponseString();
	}

	public void setSendEmail(String sendEmail) {
		this.sendEmail = sendEmail;
	}

	public void setOperatingFee(String operatingFee) {
		this.operatingFee = operatingFee;
	}

	public void setFeedbacks(List<Feedback> feedbacks) {
		this.feedbacks = feedbacks;
	}

	public void setCommunicates(List<Communicate> communicates) {
		this.communicates = communicates;
	}

	public void setSponserNo(String sponserNo) {
		this.sponserNo = sponserNo;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setWechat(String wechat) {
		this.wechat = wechat;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setSponseDeadline(String sponseDeadline) {
		this.sponseDeadline = sponseDeadline;
	}
	public void setNeedReciept(String needReciept) {
		this.needReciept = needReciept;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public void setProfectional(String profectional) {
		this.profectional = profectional;
	}
	public void setPoliticFace(String politicFace) {
		this.politicFace = politicFace;
	}
	public void setSponseStartTime(String sponseStartTime) {
		this.sponseStartTime = sponseStartTime;
	}
	public void setSponseEndTime(String sponseEndTime) {
		this.sponseEndTime = sponseEndTime;
	}
	public void setSponseEndReason(String sponseEndReason) {
		this.sponseEndReason = sponseEndReason;
	}
	public void setTransfers(List<Transfer> transfers) {
		this.transfers = transfers;
	}
	public void addStudent(Student student)
	{
		if(student!=null)
			this.studentsToSponse.add(student);
	}
	
	public void savePicture(MultipartFile file,String whatPhoto) throws Exception {
		// 原始文件名
		String originalFileName = file.getOriginalFilename();
		// 获取图片后缀
		String suffix = originalFileName.substring(originalFileName.lastIndexOf("."));
		// 生成图片存储的名称，UUID 避免相同图片名冲突，并加上图片后缀
		String fileName = this.getName() + whatPhoto + UUID.randomUUID().toString() + suffix;
		// 图片存储路径
		String filePath = "pictures/" + fileName;
		File saveFile = new File(filePath);
		// 将上传的文件保存到服务器文件系统
		String methodname = "set" + whatPhoto.substring(0, 1).toUpperCase() + whatPhoto.substring(1);
		Class clazz = this.getClass();		
        Class[] params = new Class[1];
        params[0] = String.class;
        Method m = clazz.getDeclaredMethod(methodname, params);
        Object[] p = new Object[1];
        p[0]=fileName;
        m.invoke(this,p);   
		file.transferTo(saveFile);
		// 记录服务器文件系统图片名称

	}
	
    
    
    
    
    
    

}
