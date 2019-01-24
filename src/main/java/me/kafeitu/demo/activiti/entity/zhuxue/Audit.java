package me.kafeitu.demo.activiti.entity.zhuxue;


import me.kafeitu.demo.activiti.entity.IdEntity;

import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;

import java.io.File;
import java.io.Serializable;
import java.lang.reflect.Method;
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
@Table(name = "ZHUXUE_AUDIT")
public class Audit extends IdEntity implements Serializable {

	public Audit()
	{
		
	}

    private String auditDate;
    private String poorReason;
    private String studentEvaluation;
    private String auditResult;
    private String auditPass;
    private String auditPerson;
    private String evaluateScore;
    private String auditPersonContactNo;
    private String supplemetaryEvaluation;
    private String applyEvaluationPicture;
    private List<AuditPhoto> auditPhotos = new ArrayList <AuditPhoto>();
    
  

    @Column( length = 50)
    public String getEvaluateScore() {
		return evaluateScore;
	}
    @Column( length = 50)
	public String getAuditPersonContactNo() {
		return auditPersonContactNo;
	}
    @Column( length = 50)
	public String getSupplemetaryEvaluation() {
		return supplemetaryEvaluation;
	}
    @Column( length = 250)
	public String getApplyEvaluationPicture() {
		return applyEvaluationPicture;
	}
    @Column( length = 50)
	public void setEvaluateScore(String evaluateScore) {
		this.evaluateScore = evaluateScore;
	}
    @Column( length = 50)
	public void setAuditPersonContactNo(String auditPersonContactNo) {
		this.auditPersonContactNo = auditPersonContactNo;
	}
    @Column( length = 50)
	public void setSupplemetaryEvaluation(String supplemetaryEvaluation) {
		this.supplemetaryEvaluation = supplemetaryEvaluation;
	}
    @Column( length = 50)
	public void setApplyEvaluationPicture(String applyEvaluationPicture) {
		this.applyEvaluationPicture = applyEvaluationPicture;
	}
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
	public String getAuditPass() {
		return auditPass;
	}
    @Column
	public String getAuditPerson() {
		return auditPerson;
	}
    @Column
    @OneToMany(cascade = {CascadeType.ALL})
	public List<AuditPhoto> getAuditphotos() {
		return auditPhotos;
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
	public void setAuditPass(String auditPass) {
		this.auditPass = auditPass;
	}
	public void setAuditPerson(String auditPerson) {
		this.auditPerson = auditPerson;
	}
	public void setAuditphotos(List<AuditPhoto> auditPhotos) {
		this.auditPhotos = auditPhotos;
	} 
    
	public void savePicture(MultipartFile file,String whatPhoto) throws Exception {
		// 原始文件名
		String originalFileName = file.getOriginalFilename();
		// 获取图片后缀
		String suffix = originalFileName.substring(originalFileName.lastIndexOf("."));
		// 生成图片存储的名称，UUID 避免相同图片名冲突，并加上图片后缀
		String fileName = whatPhoto + UUID.randomUUID().toString() + suffix;
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
