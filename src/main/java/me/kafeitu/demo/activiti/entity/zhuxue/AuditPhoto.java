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

@Entity
@Table(name = "ZHUXUE_AUDITPHOTO")
public class AuditPhoto  extends IdEntity implements Serializable{
	public AuditPhoto() {
		
	}
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
	private Date photoDate;
	private String familyPhoto;
	private String studentPhoto;
	private String feedbackPhoto;
	private String recieptphoto;
	private String otherPhoto;
	
	@Column
	public Date getPhotoDate() {
		return photoDate;
	}
	@Column
	public String getFamilyPhoto() {
		return familyPhoto;
	}
	@Column
	public String getStudentPhoto() {
		return studentPhoto;
	}
	@Column
	public String getFeedbackPhoto() {
		return feedbackPhoto;
	}
	@Column
	public String getRecieptphoto() {
		return recieptphoto;
	}
	@Column
	public String getOtherPhoto() {
		return otherPhoto;
	}
	public void setPhotoDate(Date photoDate) {
		this.photoDate = photoDate;
	}
	public void setFamilyPhoto(String familyPhoto) {
		this.familyPhoto = familyPhoto;
	}
	public void setStudentPhoto(String studentPhoto) {
		this.studentPhoto = studentPhoto;
	}
	public void setFeedbackPhoto(String feedbackPhoto) {
		this.feedbackPhoto = feedbackPhoto;
	}
	public void setRecieptphoto(String recieptphoto) {
		this.recieptphoto = recieptphoto;
	}
	public void setOtherPhoto(String otherPhoto) {
		this.otherPhoto = otherPhoto;
	}
}
