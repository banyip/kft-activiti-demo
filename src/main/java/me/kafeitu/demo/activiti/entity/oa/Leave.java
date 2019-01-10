package me.kafeitu.demo.activiti.entity.oa;

import me.kafeitu.demo.activiti.entity.IdEntity;
import me.kafeitu.demo.activiti.entity.zhuxue.Relative;
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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
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
    public String getOtherSponse() {
		return otherSponse;
	}

	public void setOtherSponse(String otherSponse) {
		this.otherSponse = otherSponse;
	}

	public String getChineseScore() {
		return chineseScore;
	}

	public void setChineseScore(String chineseScore) {
		this.chineseScore = chineseScore;
	}

	public String getMathScore() {
		return mathScore;
	}

	public void setMathScore(String mathScore) {
		this.mathScore = mathScore;
	}

	private String picture;
    private String applicantId;
    private String studentId;
    
    private String studentContactNo;
    private String parentName;
    private String parentContactNo;
    private String otherSponse;
    private String schoolContactPerson;
    private String schoolContactNo;
    private String ifLiveInSchool;
    private String ifAgreeToMail;
    private String firstAuditNote;
    
    //贫困评估相关
    private String poorEvaluateScore0;
    private String poorEvaluateScore1;
    private String poorEvaluateScore2;
    private String poorEvaluateScore3;
    private String poorEvaluateScore4;
    private String poorEvaluateScore5;
    private String poorEvaluateScore6;
    private String poorEvaluateScore7;
    private String poorEvaluateScore8;
    private String poorEvaluateTotalScore;
    private String poorEvaluateNote;
    private String poorEvaluatePerson;
    private String poorEvaluatePersonContact;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date poorEvaluateDate;
    
    @Column
    public String getFirstAuditNote() {
		return firstAuditNote;
	}

	public void setFirstAuditNote(String firstAuditNote) {
		this.firstAuditNote = firstAuditNote;
	}

	@Column
    public String getIfAgreeToMail() {
		return ifAgreeToMail;
	}

	public void setIfAgreeToMail(String ifAgreeToMail) {
		this.ifAgreeToMail = ifAgreeToMail;
	}

	@Column
    public String getIfLiveInSchool() {
		return ifLiveInSchool;
	}

	public void setIfLiveInSchool(String ifLiveInSchool) {
		this.ifLiveInSchool = ifLiveInSchool;
	}

	private String englishScore;
	public String getEnglishScore() {
		return englishScore;
	}

	public void setEnglishScore(String englishScore) {
		this.englishScore = englishScore;
	}

	public String getOtherScore() {
		return otherScore;
	}

	public void setOtherScore(String otherScore) {
		this.otherScore = otherScore;
	}

	private String chineseScore ;
    private String mathScore;
    private String otherScore;
    private String scorePosition;
    @Column
    public String getScorePosition() {
		return scorePosition;
	}

	public void setScorePosition(String scorePosition) {
		this.scorePosition = scorePosition;
	}

	@Column
    public String getParentName() {
		return parentName;
	}





	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	@Column
	public String getParentContactNo() {
		return parentContactNo;
	}

	public void setParentContactNo(String parentContactNo) {
		this.parentContactNo = parentContactNo;
	}



	@Column
	public String getSchoolContactPerson() {
		return schoolContactPerson;
	}

	public void setSchoolContactPerson(String schoolContactPerson) {
		this.schoolContactPerson = schoolContactPerson;
	}

	@Column
	public String getSchoolContactNo() {
		return schoolContactNo;
	}

	public void setSchoolContactNo(String schoolContactNo) {
		this.schoolContactNo = schoolContactNo;
	}

	@Column
    public String getStudentContactNo() {
		return studentContactNo;
	}

	public void setStudentContactNo(String studentContactNo) {
		this.studentContactNo = studentContactNo;
	}

	@Column
    public String getApplicantId() {
		return applicantId;
	}

	public void setApplicantId(String applicantId) {
		this.applicantId = applicantId;
	}

	@Column
	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	@Column
    public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public void savePicture( MultipartFile file) throws IOException
	{
		// 原始文件名
        String originalFileName = file.getOriginalFilename(); 
        // 获取图片后缀
        String suffix = originalFileName.substring(originalFileName.lastIndexOf(".")); 
        // 生成图片存储的名称，UUID 避免相同图片名冲突，并加上图片后缀
        String fileName = this.getStudentName()+UUID.randomUUID().toString() + suffix;
        // 图片存储路径
        String filePath = "pictures/"+fileName;
        File saveFile = new File(filePath);
        // 将上传的文件保存到服务器文件系统
        file.transferTo(saveFile);
        // 记录服务器文件系统图片名称
        this.setPicture(fileName);
        
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
	public String getIfAgreeToPublish() {
		return ifAgreeToPublish;
	}

	public void setIfAgreeToPublish(String ifAgreeToPublish) {
		this.ifAgreeToPublish = ifAgreeToPublish;
	}

	private String applicantName;
    private String applicantContactNum;
    private String schoolPerfomance;
    private String ifAgreeToPublish;
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
	@OneToMany(cascade = {CascadeType.ALL})
	public Set<Relative> getRelatives() {
		return relatives;
	}
	
	public void setRelatives(Set<Relative> relatives) {
		this.relatives = relatives;
	}
	
	public void setRelatives(String relatives) {
		List<String> relativeList = Arrays.asList(relatives.split(";"));
		this.relatives =  new HashSet<Relative>();
		System.out.print(relativeList);
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
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
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

	//贫困评分相关
	@Column
	public String getPoorEvaluateScore0() {
		return poorEvaluateScore0;
	}

	@Column
	public String getPoorEvaluateScore1() {
		return poorEvaluateScore1;
	}

	@Column
	public String getPoorEvaluateScore2() {
		return poorEvaluateScore2;
	}

	@Column
	public String getPoorEvaluateScore3() {
		return poorEvaluateScore3;
	}

	@Column
	public String getPoorEvaluateScore4() {
		return poorEvaluateScore4;
	}

	@Column
	public String getPoorEvaluateScore5() {
		return poorEvaluateScore5;
	}

	@Column
	public String getPoorEvaluateScore6() {
		return poorEvaluateScore6;
	}

	@Column
	public String getPoorEvaluateScore7() {
		return poorEvaluateScore7;
	}

	@Column
	public String getPoorEvaluateScore8() {
		return poorEvaluateScore8;
	}

	@Column
	public String getPoorEvaluateTotalScore() {
		return poorEvaluateTotalScore;
	}

	@Column
	public String getPoorEvaluateNote() {
		return poorEvaluateNote;
	}

	@Column
	public String getPoorEvaluatePerson() {
		return poorEvaluatePerson;
	}

	@Column
	public String getPoorEvaluatePersonContact() {
		return poorEvaluatePersonContact;
	}

	@Column
	public Date getPoorEvaluateDate() {
		return poorEvaluateDate;
	}

	public void setPoorEvaluateScore0(String poorEvaluateScore0) {
		this.poorEvaluateScore0 = poorEvaluateScore0;
	}

	public void setPoorEvaluateScore1(String poorEvaluateScore1) {
		this.poorEvaluateScore1 = poorEvaluateScore1;
	}

	public void setPoorEvaluateScore2(String poorEvaluateScore2) {
		this.poorEvaluateScore2 = poorEvaluateScore2;
	}

	public void setPoorEvaluateScore3(String poorEvaluateScore3) {
		this.poorEvaluateScore3 = poorEvaluateScore3;
	}

	public void setPoorEvaluateScore4(String poorEvaluateScore4) {
		this.poorEvaluateScore4 = poorEvaluateScore4;
	}

	public void setPoorEvaluateScore5(String poorEvaluateScore5) {
		this.poorEvaluateScore5 = poorEvaluateScore5;
	}

	public void setPoorEvaluateScore6(String poorEvaluateScore6) {
		this.poorEvaluateScore6 = poorEvaluateScore6;
	}

	public void setPoorEvaluateScore7(String poorEvaluateScore7) {
		this.poorEvaluateScore7 = poorEvaluateScore7;
	}

	public void setPoorEvaluateScore8(String poorEvaluateScore8) {
		this.poorEvaluateScore8 = poorEvaluateScore8;
	}

	public void setPoorEvaluateTotalScore(String poorEvaluateTotalScore) {
		this.poorEvaluateTotalScore = poorEvaluateTotalScore;
	}

	public void setPoorEvaluateNote(String poorEvaluateNote) {
		this.poorEvaluateNote = poorEvaluateNote;
	}

	public void setPoorEvaluatePerson(String poorEvaluatePerson) {
		this.poorEvaluatePerson = poorEvaluatePerson;
	}

	public void setPoorEvaluatePersonContact(String poorEvaluatePersonContact) {
		this.poorEvaluatePersonContact = poorEvaluatePersonContact;
	}

	public void setPoorEvaluateDate(Date poorEvaluateDate) {
		this.poorEvaluateDate = poorEvaluateDate;
	}

	

}
