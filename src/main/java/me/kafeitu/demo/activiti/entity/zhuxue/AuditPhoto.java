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
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.HashSet;
import java.util.List;

@Entity
@Table(name = "ZHUXUE_AUDITPHOTO")
public class AuditPhoto  extends IdEntity implements Serializable{
	public AuditPhoto() {
		
	}
	
	private String photoDate;
	private String familyPhoto;
	private String studentPhoto;
	private String feedbackPhoto;
	private String recieptphoto;
	private String otherPhoto;
	
	@Column
	public String getPhotoDate() {
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
	public void setPhotoDate(String photoDate) {
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
	public void savePicture( MultipartFile file ,String whatPhoto) throws Exception
	{		
		
		String methodname = "get" + whatPhoto.substring(0, 1).toUpperCase() + whatPhoto.substring(1);
		Class clazz = this.getClass();
        
		// 原始文件名
        String originalFileName = file.getOriginalFilename(); 
        // 获取图片后缀
        String suffix = originalFileName.substring(originalFileName.lastIndexOf(".")); 
        // 生成图片存储的名称，UUID 避免相同图片名冲突，并加上图片后缀
        String fileName = whatPhoto+UUID.randomUUID().toString() + suffix;
        // 图片存储路径
        String filePath = "pictures/"+fileName;
        File saveFile = new File(filePath);
        // 将上传的文件保存到服务器文件系统
        file.transferTo(saveFile);
        // 获取原有文件名
        Class[] params = new Class[1];
        params[0] = String.class;
        Method m = clazz.getDeclaredMethod(methodname, null);
//        Object[] p = new Object[1];
//        p[0]=fileName;
        String originalName = (String)m.invoke(this,null);        
        // 记录服务器文件系统图片名称
        params[0] = String.class;
        m = clazz.getDeclaredMethod(methodname, params);
        Object[] p = new Object[1];
        if(originalName.length()>0)
        	fileName=originalName + ":" +fileName;
        p[0]=fileName;
        m.invoke(this,p);
        
	}
}
