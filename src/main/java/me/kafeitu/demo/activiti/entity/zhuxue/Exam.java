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
@Table(name = "ZHUXUE_EXAM")
public class Exam extends IdEntity implements Serializable {

	
    private static final long serialVersionUID = 1L;
    private String examTime;
    private String chinese;
    private String english;
    private String math;
    private String chemical;
    private String physical;
    private String profectional;
    private String position;
    @Column
	public String getExamTime() {
		return examTime;
	}
    @Column
	public String getChinese() {
		return chinese;
	}
    @Column
	public String getEnglish() {
		return english;
	}
    @Column
	public String getMath() {
		return math;
	}
    @Column
	public String getChemical() {
		return chemical;
	}
    @Column
	public String getPhysical() {
		return physical;
	}
    @Column
	public String getProfectional() {
		return profectional;
	}
    @Column
	public String getPosition() {
		return position;
	}
	public void setExamTime(String examTime) {
		this.examTime = examTime;
	}
	public void setChinese(String chinese) {
		this.chinese = chinese;
	}
	public void setEnglish(String english) {
		this.english = english;
	}
	public void setMath(String math) {
		this.math = math;
	}
	public void setChemical(String chemical) {
		this.chemical = chemical;
	}
	public void setPhysical(String physical) {
		this.physical = physical;
	}
	public void setProfectional(String profectional) {
		this.profectional = profectional;
	}
	public void setPosition(String position) {
		this.position = position;
	}
    
    
    
    
    
    
    

}
