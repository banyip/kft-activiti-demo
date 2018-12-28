package me.kafeitu.demo.activiti.entity.oa;

import me.kafeitu.demo.activiti.entity.IdEntity;
import me.kafeitu.demo.activiti.entity.oa.Relative;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.format.annotation.DateTimeFormat;



import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import java.util.HashSet;
import java.util.List;
/**
 * Entity: Leave
 *
 * @author HenryYan
 */
@Entity
@Table(name = "OA_LEAVE")
public class Leave extends IdEntity implements Serializable {

    private static final long serialVersionUID = 1L;
    private String processInstanceId;
    private String picture;
    @Column
    public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	@Column
    public String getApplicantName() {
		return applicantName;
	}

	public void setApplicantName(String applicantName) {
		this.applicantName = applicantName;
	}

	@Column
	public String getApplicantContactNum() {
		return applicantContactNum;
	}

	public void setApplicantContactNum(String applicantContactNum) {
		this.applicantContactNum = applicantContactNum;
	}

	@Column
	public String getHeadteacher() {
		return headteacher;
	}

	public void setHeadteacher(String headteacher) {
		this.headteacher = headteacher;
	}

	@Column
	public String getHeadteachercontactNum() {
		return headteachercontactNum;
	}

	public void setHeadteachercontactNum(String headteachercontactNum) {
		this.headteachercontactNum = headteachercontactNum;
	}

	@Column
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	@Column
	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	@Column
	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Column
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	private String userId;

	@Column
    public String getSchoolPerfomance() {
		return schoolPerfomance;
	}

	public void setSchoolPerfomance(String schoolPerfomance) {
		this.schoolPerfomance = schoolPerfomance;
	}

	@Column
	public boolean isIfAgreeToPublish() {
		return ifAgreeToPublish;
	}

	public void setIfAgreeToPublish(boolean ifAgreeToPublish) {
		this.ifAgreeToPublish = ifAgreeToPublish;
	}
	@Column
	public boolean isIfAgreeToMail() {
		return ifAgreeToMail;
	}

	public void setIfAgreeToMail(boolean ifAgreeToMail) {
		this.ifAgreeToMail = ifAgreeToMail;
	}

	private String applicantName;
    private String applicantContactNum;
    private String schoolPerfomance;
    private boolean ifAgreeToPublish=true;
    private boolean ifAgreeToMail=true;
    private String headteacher;
    private String headteachercontactNum;
    /*
    private Applicant applicant;
    @ManyToOne
    @JoinColumn(name = "applicantid")

    public Applicant getApplicant() {
		return applicant;
	}

	public void setApplicant(Applicant applicant) {
		this.applicant = applicant;
	}
*/
	@Column
	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	@Column
	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	@Column
	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	/*
	private Headteacher headteacher;
    @ManyToOne
    @JoinColumn(name = "headteacherid")
	public Headteacher getHeadteacher() {
		return headteacher;
	}

	public void setHeadteacher(Headteacher headteacher) {
		this.headteacher = headteacher;
	}
*/
	
	@Column
	@OneToMany
	public Set<Relative> getRelatives() {
		return relatives;
	}
	
	public void setRelatives(Set<Relative> relatives) {
		this.relatives = relatives;
	}
	
	public void setRelatives(String relatives) {
		List<String> relativeList = Arrays.asList(relatives.split(";"));
		this.relatives =  new HashSet<Relative>();
		for(int i=0;i<relativeList.size();i++)			
			this.relatives.add(new Relative(relativeList.get(i)));
	}
	private String sex;
	private String nationality;
	private Date birthday;
	private String address;
	
    private String studentName;
    private String school;
    private String grade;
    private String className;
    private String familyCondiction;
    private String sponseReason;
    
    @Column
    public String getFamilyCondiction() {
		return familyCondiction;
	}

	public void setFamilyCondiction(String familyCondiction) {
		this.familyCondiction = familyCondiction;
	}

	@Column
	public String getSponseReason() {
		return sponseReason;
	}

	public void setSponseReason(String sponseReason) {
		this.sponseReason = sponseReason;
	}

	private Set<Relative> relatives = new HashSet<Relative>();
    private Date applyTime;
   

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date startTime;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date endTime;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date realityStartTime;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date realityEndTime;

    private String leaveType;
    private String reason;

    //-- 临时属性 --//

    // 流程任务
    private Task task;

    private Map<String, Object> variables;

    // 运行中的流程实例
    private ProcessInstance processInstance;

    // 历史的流程实例
    private HistoricProcessInstance historicProcessInstance;

    // 流程定义
    private ProcessDefinition processDefinition;

    @Column
    public String getProcessInstanceId() {
        return processInstanceId;
    }

    public void setProcessInstanceId(String processInstanceId) {
        this.processInstanceId = processInstanceId;
    }

    @Column
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "START_TIME")
    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "END_TIME")
    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    @Column
    @Temporal(TemporalType.TIMESTAMP)
    public Date getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(Date applyTime) {
        this.applyTime = applyTime;
    }

    @Column
    public String getLeaveType() {
        return leaveType;
    }

    public void setLeaveType(String leaveType) {
        this.leaveType = leaveType;
    }

    @Column
    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "REALITY_START_TIME")
    public Date getRealityStartTime() {
        return realityStartTime;
    }

    public void setRealityStartTime(Date realityStartTime) {
        this.realityStartTime = realityStartTime;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "REALITY_END_TIME")
    public Date getRealityEndTime() {
        return realityEndTime;
    }

    public void setRealityEndTime(Date realityEndTime) {
        this.realityEndTime = realityEndTime;
    }

    @Transient
    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
    }

    @Transient
    public Map<String, Object> getVariables() {
        return variables;
    }

    public void setVariables(Map<String, Object> variables) {
        this.variables = variables;
    }

    @Transient
    public ProcessInstance getProcessInstance() {
        return processInstance;
    }

    public void setProcessInstance(ProcessInstance processInstance) {
        this.processInstance = processInstance;
    }

    @Transient
    public HistoricProcessInstance getHistoricProcessInstance() {
        return historicProcessInstance;
    }

    public void setHistoricProcessInstance(HistoricProcessInstance historicProcessInstance) {
        this.historicProcessInstance = historicProcessInstance;
    }

    @Transient
    public ProcessDefinition getProcessDefinition() {
        return processDefinition;
    }

    public void setProcessDefinition(ProcessDefinition processDefinition) {
        this.processDefinition = processDefinition;
    }

    @Column
	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}
	

}
