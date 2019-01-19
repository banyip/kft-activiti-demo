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
public class Evaluate extends IdEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    private String evaluateDate;
    private String provider;
    private String familyChange;
    private String studentSituation;
    
    @Column
	public String getEvaluateDate() {
		return evaluateDate;
	}
    
 	@Column
	public String getProvider() {
		return provider;
	}
    @Column
	public String getFamilyChange() {
		return familyChange;
	}@Column
	public String getStudentSituation() {
		return studentSituation;
	}  
    
	   public void setEvaluateDate(String evaluateDate) {
			this.evaluateDate = evaluateDate;
		}

		public void setProvider(String provider) {
			this.provider = provider;
		}

		public void setFamilyChange(String familyChange) {
			this.familyChange = familyChange;
		}

		public void setStudentSituation(String studentSituation) {
			this.studentSituation = studentSituation;
		}
   
    

}
