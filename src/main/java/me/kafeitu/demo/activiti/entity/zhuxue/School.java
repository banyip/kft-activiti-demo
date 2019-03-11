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
@Table(name = "ZHUXUE_SCHOOL")
public class School extends IdEntity implements Serializable {

	
    private static final long serialVersionUID = 1L;
    private String school;
	private String grade;
	private String className;
	private String headTeacher;
	private String schoolContactNo;
	public School() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Column(length = 50)
	public String getSchool() {
		return school;
	}
	@Column(length = 50)
	public String getGrade() {
		return grade;
	}
	@Column(length = 50)
	public String getClassName() {
		return className;
	}
	@Column(length = 50)
	public String getHeadTeacher() {
		return headTeacher;
	}
	@Column(length = 50)
	public String getSchoolContactNo() {
		return schoolContactNo;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public void setHeadTeacher(String headTeacher) {
		this.headTeacher = headTeacher;
	}
	public void setSchoolContactNo(String schoolContactNo) {
		this.schoolContactNo = schoolContactNo;
	}
    
  
    
    
    
    
    
    
    

}
