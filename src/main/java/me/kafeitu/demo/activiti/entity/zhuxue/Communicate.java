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
@Table(name = "ZHUXUE_COMMUNICATE")
public class Communicate extends IdEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    private String communicateDate;
    private String content;
    @Column
    public String getCommunicateDate() {
		return communicateDate;
	}
    
    @Column
	public String getContent() {
		return content;
	}
    @Column
	public String getPicture() {
		return picture;
	}
	public void setCommunicateDate(String communicateDate) {
		this.communicateDate = communicateDate;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	private String picture;
    
    
    
    
    
    

}
