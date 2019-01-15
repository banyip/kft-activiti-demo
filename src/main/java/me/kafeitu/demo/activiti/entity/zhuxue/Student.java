package me.kafeitu.demo.activiti.entity.zhuxue;

import me.kafeitu.demo.activiti.entity.IdEntity;
import me.kafeitu.demo.activiti.entity.zhuxue.Relative;
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
 * Entity: Student
 *
 * @author HenryYan
 */
@Entity
@Table(name = "ZHUXUE_STUDENT")
public class Student extends IdEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    private Map<String, Object> variables;
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
    private String applicantCompany;
    
    @Column(columnDefinition="varchar(30)")
    public String getApplicantCompany() {
		return applicantCompany;
	}

	public void setApplicantCompany(String applicantCompany) {
		this.applicantCompany = applicantCompany;
	}

	@Column(columnDefinition="varchar(30)")
	public String getAuditNo() {
		return auditNo;
	}

	public void setAuditNo(String auditNo) {
		this.auditNo = auditNo;
	}

	@Column(columnDefinition="varchar(30)")
	public String getSponseState() {
		return sponseState;
	}

	public void setSponseState(String sponseState) {
		this.sponseState = sponseState;
	}

	private String auditNo;
    
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
    private String sponseState;
    private String bankCard;
    private String bank;
    private String age;
    private String qq;
    private String email;
    private String farmArea;
    private String farmPlanting;
    private String farmPlantingIncome;
    private String farmAnimalUsage;
    private String farmAnimalIncome;
    private String workSituation;
    private String workIncome;
    private String otherIncomeSource;
    private String otherIncome;
    private String otherAsset;
    @Column(columnDefinition="varchar(30)")
    public String getBankCard() {
		return bankCard;
	}

	public void setBankCard(String bankCard) {
		this.bankCard = bankCard;
	}

	@Column(columnDefinition="varchar(30)")
	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	@Column(columnDefinition="varchar(30)")
	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	@Column(columnDefinition="varchar(30)")
	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	@Column(columnDefinition="varchar(30)")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(columnDefinition="varchar(30)")
	public String getFarmArea() {
		return farmArea;
	}

	public void setFarmArea(String farmArea) {
		this.farmArea = farmArea;
	}

	@Column(columnDefinition="varchar(30)")
	public String getFarmPlanting() {
		return farmPlanting;
	}

	public void setFarmPlanting(String farmPlanting) {
		this.farmPlanting = farmPlanting;
	}

	@Column(columnDefinition="varchar(30)")
	public String getFarmPlantingIncome() {
		return farmPlantingIncome;
	}

	public void setFarmPlantingIncome(String farmPlantingIncome) {
		this.farmPlantingIncome = farmPlantingIncome;
	}

	@Column(columnDefinition="varchar(30)")
	public String getFarmAnimalUsage() {
		return farmAnimalUsage;
	}

	public void setFarmAnimalUsage(String farmAnimalUsage) {
		this.farmAnimalUsage = farmAnimalUsage;
	}

	@Column(columnDefinition="varchar(30)")
	public String getFarmAnimalIncome() {
		return farmAnimalIncome;
	}

	public void setFarmAnimalIncome(String farmAnimalIncome) {
		this.farmAnimalIncome = farmAnimalIncome;
	}

	@Column(columnDefinition="varchar(30)")
	public String getWorkSituation() {
		return workSituation;
	}

	public void setWorkSituation(String workSituation) {
		this.workSituation = workSituation;
	}

	@Column(columnDefinition="varchar(30)")
	public String getWorkIncome() {
		return workIncome;
	}

	public void setWorkIncome(String workIncome) {
		this.workIncome = workIncome;
	}

	@Column(columnDefinition="varchar(30)")
	public String getOtherIncomeSource() {
		return otherIncomeSource;
	}

	public void setOtherIncomeSource(String otherIncomeSource) {
		this.otherIncomeSource = otherIncomeSource;
	}

	@Column(columnDefinition="varchar(30)")
	public String getOtherIncome() {
		return otherIncome;
	}

	public void setOtherIncome(String otherIncome) {
		this.otherIncome = otherIncome;
	}

	@Column(columnDefinition="varchar(30)")
	public String getOtherAsset() {
		return otherAsset;
	}

	public void setOtherAsset(String otherAsset) {
		this.otherAsset = otherAsset;
	}

	@Column(columnDefinition="varchar(30)")
	public String getMainExpenditure() {
		return mainExpenditure;
	}

	public void setMainExpenditure(String mainExpenditure) {
		this.mainExpenditure = mainExpenditure;
	}

	@Column(columnDefinition="varchar(30)")
	public String getFamilyIllness() {
		return familyIllness;
	}

	public void setFamilyIllness(String familyIllness) {
		this.familyIllness = familyIllness;
	}

	@Column(columnDefinition="varchar(30)")
	public String getIllnessExpenditure() {
		return illnessExpenditure;
	}

	public void setIllnessExpenditure(String illnessExpenditure) {
		this.illnessExpenditure = illnessExpenditure;
	}

	@Column(columnDefinition="varchar(30)")
	public String getFamilyIllnessDescribe() {
		return familyIllnessDescribe;
	}

	public void setFamilyIllnessDescribe(String familyIllnessDescribe) {
		this.familyIllnessDescribe = familyIllnessDescribe;
	}

	@Column(columnDefinition="varchar(30)")
	public String getOtherExpenditure() {
		return otherExpenditure;
	}

	public void setOtherExpenditure(String otherExpenditure) {
		this.otherExpenditure = otherExpenditure;
	}

	@Column(columnDefinition="varchar(30)")
	public String getDebt() {
		return debt;
	}

	public void setDebt(String debt) {
		this.debt = debt;
	}


	@Column(columnDefinition="varchar(30)")
	public Date getSponseStartTime() {
		return sponseStartTime;
	}

	public void setSponseStartTime(Date sponseStartTime) {
		this.sponseStartTime = sponseStartTime;
	}

	@Column(columnDefinition="varchar(30)")
	public Date getSponseEndTime() {
		return sponseEndTime;
	}

	public void setSponseEndTime(Date sponseEndTime) {
		this.sponseEndTime = sponseEndTime;
	}

	@Column(columnDefinition="varchar(30)")
	public String getEndReason() {
		return endReason;
	}

	public void setEndReason(String endReason) {
		this.endReason = endReason;
	}

	private String mainExpenditure;
    private String familyIllness;
    private String illnessExpenditure;
    private String familyIllnessDescribe;
    private String otherExpenditure;
    private String debt;
    private String ifRaw ;
    private String ifBrick;
    private String ifConcrete;
    private String ifWood ;
    private String ifTwoFloor;
    private String ifSelfHouse;
    private String ifBorrowHouse;
    private String ifRentHouse;
    private String ifSimple;
    private String ifConcreteFloor;
    private String ifConcreteTile;
    private String ifNeat;
    private String ifHighClass;
    
    @Column(columnDefinition="varchar(30)")
    public String getIfSelfHouse() {
		return ifSelfHouse;
	}

	public void setIfSelfHouse(String ifSelfHouse) {
		this.ifSelfHouse = ifSelfHouse;
	}

	@Column(columnDefinition="varchar(30)")
	public String getIfBorrowHouse() {
		return ifBorrowHouse;
	}

	public void setIfBorrowHouse(String ifBorrowHouse) {
		this.ifBorrowHouse = ifBorrowHouse;
	}

	@Column(columnDefinition="varchar(30)")
	public String getIfRentHouse() {
		return ifRentHouse;
	}

	public void setIfRentHouse(String ifRentHouse) {
		this.ifRentHouse = ifRentHouse;
	}

	@Column(columnDefinition="varchar(30)")
	public String getIfSimple() {
		return ifSimple;
	}

	public void setIfSimple(String ifSimple) {
		this.ifSimple = ifSimple;
	}

	@Column(columnDefinition="varchar(30)")
	public String getIfConcreteFloor() {
		return ifConcreteFloor;
	}

	public void setIfConcreteFloor(String ifConcreteFloor) {
		this.ifConcreteFloor = ifConcreteFloor;
	}

	@Column(columnDefinition="varchar(30)")
	public String getIfConcreteTile() {
		return ifConcreteTile;
	}

	public void setIfConcreteTile(String ifConcreteTile) {
		this.ifConcreteTile = ifConcreteTile;
	}

	@Column(columnDefinition="varchar(30)")
	public String getIfNeat() {
		return ifNeat;
	}

	public void setIfNeat(String ifNeat) {
		this.ifNeat = ifNeat;
	}

	@Column(columnDefinition="varchar(30)")
	public String getIfHighClass() {
		return ifHighClass;
	}

	public void setIfHighClass(String ifHighClass) {
		this.ifHighClass = ifHighClass;
	}

	@Column(columnDefinition="varchar(30)")
    public String getIfRaw() {
		return ifRaw;
	}


	public void setIfRaw(String ifRaw) {
		this.ifRaw = ifRaw;
	}

    @Column(columnDefinition="varchar(30)")
	public String getIfBrick() {
		return ifBrick;
	}

	public void setIfBrick(String ifBrick) {
		this.ifBrick = ifBrick;
	}

	@Column(columnDefinition="varchar(30)")
	public String getIfConcrete() {
		return ifConcrete;
	}

	public void setIfConcrete(String ifConcrete) {
		this.ifConcrete = ifConcrete;
	}

	@Column(columnDefinition="varchar(30)")
	public String getIfWood() {
		return ifWood;
	}

	public void setIfWood(String ifWood) {
		this.ifWood = ifWood;
	}

	@Column(columnDefinition="varchar(30)")
	public String getIfTwoFloor() {
		return ifTwoFloor;
	}

	public void setIfTwoFloor(String ifTwoFloor) {
		this.ifTwoFloor = ifTwoFloor;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date sponseStartTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date sponseEndTime;
    private String endReason;
    
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
    
    @Column(columnDefinition="varchar(30)")
    public String getFirstAuditNote() {
		return firstAuditNote;
	}

	public void setFirstAuditNote(String firstAuditNote) {
		this.firstAuditNote = firstAuditNote;
	}

	@Column(columnDefinition="varchar(30)")
    public String getIfAgreeToMail() {
		return ifAgreeToMail;
	}

	public void setIfAgreeToMail(String ifAgreeToMail) {
		this.ifAgreeToMail = ifAgreeToMail;
	}

	@Column(columnDefinition="varchar(30)")
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
    @Column(columnDefinition="varchar(30)")
    public String getScorePosition() {
		return scorePosition;
	}

	public void setScorePosition(String scorePosition) {
		this.scorePosition = scorePosition;
	}

	@Column(columnDefinition="varchar(30)")
    public String getParentName() {
		return parentName;
	}





	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	@Column(columnDefinition="varchar(30)")
	public String getParentContactNo() {
		return parentContactNo;
	}

	public void setParentContactNo(String parentContactNo) {
		this.parentContactNo = parentContactNo;
	}



	@Column(columnDefinition="varchar(30)")
	public String getSchoolContactPerson() {
		return schoolContactPerson;
	}

	public void setSchoolContactPerson(String schoolContactPerson) {
		this.schoolContactPerson = schoolContactPerson;
	}

	@Column(columnDefinition="varchar(30)")
	public String getSchoolContactNo() {
		return schoolContactNo;
	}

	public void setSchoolContactNo(String schoolContactNo) {
		this.schoolContactNo = schoolContactNo;
	}

	@Column(columnDefinition="varchar(30)")
    public String getStudentContactNo() {
		return studentContactNo;
	}

	public void setStudentContactNo(String studentContactNo) {
		this.studentContactNo = studentContactNo;
	}

	@Column(columnDefinition="varchar(30)")
    public String getApplicantId() {
		return applicantId;
	}

	public void setApplicantId(String applicantId) {
		this.applicantId = applicantId;
	}

	@Column(columnDefinition="varchar(30)")
	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	@Column(columnDefinition="varchar(30)")
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
	@Column(columnDefinition="varchar(30)")
    public String getApplicantName() {
		return applicantName;
	}

	public void setApplicantName(String applicantName) {
		this.applicantName = applicantName;
	}

	@Column(columnDefinition="varchar(30)")
	public String getApplicantContactNum() {
		return applicantContactNum;
	}

	public void setApplicantContactNum(String applicantContactNum) {
		this.applicantContactNum = applicantContactNum;
	}

	@Column(columnDefinition="varchar(30)")
	public String getHeadteacher() {
		return headteacher;
	}

	public void setHeadteacher(String headteacher) {
		this.headteacher = headteacher;
	}

	@Column(columnDefinition="varchar(30)")
	public String getHeadteachercontactNum() {
		return headteachercontactNum;
	}

	public void setHeadteachercontactNum(String headteachercontactNum) {
		this.headteachercontactNum = headteachercontactNum;
	}

	@Column(columnDefinition="varchar(30)")
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	@Column(columnDefinition="varchar(30)")
	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	@Column(columnDefinition="varchar(30)")
	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Column(columnDefinition="varchar(30)")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	private String userId;

	@Column(columnDefinition="varchar(30)")
    public String getSchoolPerfomance() {
		return schoolPerfomance;
	}

	public void setSchoolPerfomance(String schoolPerfomance) {
		this.schoolPerfomance = schoolPerfomance;
	}


	@Column(columnDefinition="varchar(30)")
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
	@Column(columnDefinition="varchar(30)")
	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	@Column(columnDefinition="varchar(30)")
	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	@Column(columnDefinition="varchar(30)")
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
	
	@Column(columnDefinition="varchar(30)")
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
    
    @Column(columnDefinition="varchar(30)")
    public String getFamilyCondiction() {
		return familyCondiction;
	}

	public void setFamilyCondiction(String familyCondiction) {
		this.familyCondiction = familyCondiction;
	}

	@Column(columnDefinition="varchar(30)")
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



    @Column(columnDefinition="varchar(30)")
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(columnDefinition="varchar(30)")(name = "START_TIME")
    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(columnDefinition="varchar(30)")(name = "END_TIME")
    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    @Column(columnDefinition="varchar(30)")
    @Temporal(TemporalType.TIMESTAMP)
    public Date getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(Date applyTime) {
        this.applyTime = applyTime;
    }

    @Column(columnDefinition="varchar(30)")
    public String getLeaveType() {
        return leaveType;
    }

    public void setLeaveType(String leaveType) {
        this.leaveType = leaveType;
    }

    @Column(columnDefinition="varchar(30)")
    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(columnDefinition="varchar(30)")(name = "REALITY_START_TIME")
    public Date getRealityStartTime() {
        return realityStartTime;
    }

    public void setRealityStartTime(Date realityStartTime) {
        this.realityStartTime = realityStartTime;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(columnDefinition="varchar(30)")(name = "REALITY_END_TIME")
    public Date getRealityEndTime() {
        return realityEndTime;
    }

    public void setRealityEndTime(Date realityEndTime) {
        this.realityEndTime = realityEndTime;
    }

  
    @Transient
    public Map<String, Object> getVariables() {
        return variables;
    }

    public void setVariables(Map<String, Object> variables) {
        this.variables = variables;
    }

   
  


    @Column(columnDefinition="varchar(30)")
	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	//贫困评分相关
	@Column(columnDefinition="varchar(30)")
	public String getPoorEvaluateScore0() {
		return poorEvaluateScore0;
	}

	@Column(columnDefinition="varchar(30)")
	public String getPoorEvaluateScore1() {
		return poorEvaluateScore1;
	}

	@Column(columnDefinition="varchar(30)")
	public String getPoorEvaluateScore2() {
		return poorEvaluateScore2;
	}

	@Column(columnDefinition="varchar(30)")
	public String getPoorEvaluateScore3() {
		return poorEvaluateScore3;
	}

	@Column(columnDefinition="varchar(30)")
	public String getPoorEvaluateScore4() {
		return poorEvaluateScore4;
	}

	@Column(columnDefinition="varchar(30)")
	public String getPoorEvaluateScore5() {
		return poorEvaluateScore5;
	}

	@Column(columnDefinition="varchar(30)")
	public String getPoorEvaluateScore6() {
		return poorEvaluateScore6;
	}

	@Column(columnDefinition="varchar(30)")
	public String getPoorEvaluateScore7() {
		return poorEvaluateScore7;
	}

	@Column(columnDefinition="varchar(30)")
	public String getPoorEvaluateScore8() {
		return poorEvaluateScore8;
	}

	@Column(columnDefinition="varchar(30)")
	public String getPoorEvaluateTotalScore() {
		return poorEvaluateTotalScore;
	}

	@Column(columnDefinition="varchar(30)")
	public String getPoorEvaluateNote() {
		return poorEvaluateNote;
	}

	@Column(columnDefinition="varchar(30)")
	public String getPoorEvaluatePerson() {
		return poorEvaluatePerson;
	}

	@Column(columnDefinition="varchar(30)")
	public String getPoorEvaluatePersonContact() {
		return poorEvaluatePersonContact;
	}

	@Column(columnDefinition="varchar(30)")
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
