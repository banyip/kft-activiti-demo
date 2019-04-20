package me.kafeitu.demo.activiti.entity.zhuxue;

import me.kafeitu.demo.activiti.entity.IdEntity;
import me.kafeitu.demo.activiti.entity.zhuxue.Relative;
import me.kafeitu.demo.activiti.service.zhuxue.student.SponserManager;
import me.kafeitu.demo.activiti.entity.zhuxue.Audit;

import org.hibernate.search.annotations.Analyze;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.Store;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.sun.xml.xsom.parser.AnnotationContext;

import javax.persistence.*;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
@Indexed
@Table(name = "ZHUXUE_STUDENT")
public class Student extends IdEntity implements Serializable {

    
	private static final long serialVersionUID = 1L;

	private String address;

	private String age;

	private String applicantCompany;

	private String applicantContactNum;

	private String applicantId;

	private String applicantName;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
	private Date applyTime;

	private String auditNo;
	private List<Audit> audits = new ArrayList<Audit>();
	private String bank;

	private String bankCard;

	private String birthday;

	private String chineseScore;

	private String debt;

	private String email;

	private String endReason;

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
	private String englishScore;
	private String evaluateScore;
	private String evaluateScorePicture;
	private String familyCondiction;
	private String familyIllness;
	private String familyIllnessDescribe;
	private String farmAnimalIncome;
	private String farmAnimalUsage;
	private String farmArea;
	private String farmPlanting;
	private String farmPlantingIncome;
	private String firstAuditNote;
	private String ifAgreeToMail;
	private String ifAgreeToPublish;
	private String ifBorrowHouse;
	private String ifBrick;
	private String ifConcrete;
	private String ifConcreteFloor;
	private String ifConcreteTile;
	private String ifHighClass;
	private String ifLiveInSchool;
	private String ifNeat;
	private String ifRaw;
	private String ifRentComfort;
	private String ifRentConcreteFloor;
	private String ifRentConcreteTile;

	private String ifRentHighClass;

	private String ifRentHouse;

	private String ifRentSimple;

	private String ifSelfHouse;

	private String ifSimple;

	private String ifTwoFloor;

	private String ifWood;

	private String illnessExpenditure;

	private String mainExpenditure;

	private String mathScore;

	private String nationality;

	private String otherAsset;

	private String otherExpenditure;

	private String otherIncome;

	private String otherIncomeSource;

	private String otherScore;

	private String otherSponse;

	private String parentContactNo;

	private String parentName;

	private String picture;

	private String poorEvaluateDate;

	private String poorEvaluateNote;

	private String poorEvaluatePerson;

	private String poorEvaluatePersonContact;

	// 贫困评估相关
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

	private String publishTime;

	private String qq;

	private List<Relative> relatives = new ArrayList<Relative>();

	private String relativeSponse;

	private String relativeSponseIncome;

	private String rentFee;

	private String rentFrom;

	private String schoolContactPerson;

	private String schoolPerfomance;

	private String scorePosition;

	private String sex;

	private String sponseEndTime;

	private String sponseReason;

	private String sponseStartTime;

	private String sponseState;

	private String studentContactNo;
	private String studentId;
	@Field(index=Index.YES, analyze=Analyze.YES, store=Store.NO)
	private String studentName;

	private String supplemetaryEvaluation;
	private String userId;
	private Map<String, Object> variables;
	private String workIncome;
	private String workSituation;
	private String sponseRecommandation;
	private List<School> schools = new ArrayList<School>();
	private List<Exam> exams = new ArrayList<Exam>();
	private List<Transfer> transfers = new ArrayList<Transfer>();
	private List<Communicate> communicates = new ArrayList<Communicate>();
	private List<Evaluate> evaluates = new ArrayList<Evaluate>();
	private String studyExpenditure;
	private String studyDescribe;
	private String liveExpenditure;
	private String liveDescribe;
	private String debtDescribe;
	private String memo;
	private String sponserId;

	
	//获取指定学期反馈发送时间
	public String getFeedbackDate(String semester)
	{
		try {
		for(int i=0;i<communicates.size();i++)			
			if(communicates.get(i).getSemester().equals(semester))
				return communicates.get(i).getSendDate();
		return "";
		}
		catch(Exception e)
		{
			return "";
		}
	}
	
	@Column(length=20)
	public String getStudyExpenditure() {
		return studyExpenditure;
	}
	@Column(length=250) 
	public String getStudyDescribe() {
		return studyDescribe;
	}
	@Column(length=20)
	public String getLiveExpenditure() {
		return liveExpenditure;
	}
	@Column(length=250)
	public String getLiveDescribe() {
		return liveDescribe;
	}
	@Column(length=250)
	public String getDebtDescribe() {
		return debtDescribe;
	}
	public void setStudyExpenditure(String studyExpenditure) {
		this.studyExpenditure = studyExpenditure;
	}
	public void setStudyDescribe(String studyDescribe) {
		this.studyDescribe = studyDescribe;
	}
	public void setLiveExpenditure(String liveExpenditure) {
		this.liveExpenditure = liveExpenditure;
	}
	public void setLiveDescribe(String liveDescribe) {
		this.liveDescribe = liveDescribe;
	}
	public void setDebtDescribe(String debtDescribe) {
		this.debtDescribe = debtDescribe;
	}
	public void addTransfer(Transfer transfer)
	{
		if(transfer!=null)
			transfers.add(transfer);
	}
	@Column(length=20)
	public String getSponseRecommandation() {
		return sponseRecommandation;
	}

	public void setSponseRecommandation(String sponseRecommandation) {
		this.sponseRecommandation = sponseRecommandation;
	}

	@Column(length = 50)
	public String getRelativeSponseIncome() {
		return relativeSponseIncome;
	}

	public void setRelativeSponseIncome(String relativeSponseIncome) {
		this.relativeSponseIncome = relativeSponseIncome;
	}

	@Column(length = 50)
	public String getRelativeSponse() {
		return relativeSponse;
	}

	public void setRelativeSponse(String relativeSponse) {
		this.relativeSponse = relativeSponse;
	}

	@Column
	@OneToMany(cascade = { CascadeType.ALL })
	public List<Evaluate> getEvaluates() {
		return evaluates;
	}

	@Column
	@OneToMany(cascade = { CascadeType.ALL })
	public List<Communicate> getCommunicates() {
		return communicates;
	}

	public void setCommunicate(List<Communicate> communicates) {
		this.communicates = communicates;
	}

//	@Column	
//	@OneToMany(fetch = FetchType.EAGER)
	@Transient
	public List<Transfer> getTransfers() {
		return transfers;
	}

	public void setTransfer(List<Transfer> transfers) {
		this.transfers = transfers;		
	}

	@Column
	@OneToMany(cascade = { CascadeType.ALL })
	public List<Exam> getExams() {
		return exams;
	}

	public void setExams(List<Exam> exams) {
		this.exams = exams;
	}

	@Column(length = 255)
	public String getAddress() {
		return address;
	}

	@Column(length = 10)
	public String getAge() {
		return age;
	}

	@Column(length = 100)
	public String getApplicantCompany() {
		return applicantCompany;
	}

	@Column(length = 50)
	public String getApplicantContactNum() {
		return applicantContactNum;
	}

	@Column(length = 20)
	public String getApplicantId() {
		return applicantId;
	}

	@Column(length = 20)
	public String getApplicantName() {
		return applicantName;
	}

	@Column(length = 50)
	@Temporal(TemporalType.TIMESTAMP)
	public Date getApplyTime() {
		return applyTime;
	}

	 
	@Column(length = 20)
	@Field(index=Index.YES, analyze=Analyze.YES, store=Store.NO)
	public String getAuditNo() {
		return auditNo;
	}

	@Column
	@OneToMany(cascade = { CascadeType.ALL })
	public List<Audit> getAudits() {
		return audits;
	}

	@Column(length = 50)
	public String getBank() {
		return bank;
	}

	@Column(length = 20)
	public String getBankCard() {
		return bankCard;
	}

	@Column(length = 20)
	public String getBirthday() {
		return birthday;
	}

	@Column(length = 10)
	public String getChineseScore() {
		return chineseScore;
	}

	@Column(length = 50)
	public String getDebt() {
		return debt;
	}

	@Column(length = 50)
	public String getEmail() {
		return email;
	}

	@Column(length = 50)
	public String getEndReason() {
		return endReason;
	}
	
	@Column(length = 10)
	public String getEnglishScore() {
		return englishScore;
	}

	@Column(length = 10)
	public String getEvaluateScore() {
		return evaluateScore;
	}

	@Column(length = 250)
	public String getEvaluateScorePicture() {
		return evaluateScorePicture;
	}

	@Column(length = 255)
	public String getFamilyCondiction() {
		return familyCondiction;
	}

	@Column(length = 255)
	public String getFamilyIllness() {
		return familyIllness;
	}

	@Column(length = 255)
	public String getFamilyIllnessDescribe() {
		return familyIllnessDescribe;
	}

	@Column(length = 20)
	public String getFarmAnimalIncome() {
		return farmAnimalIncome;
	}

	@Column(length = 20)
	public String getFarmAnimalUsage() {
		return farmAnimalUsage;
	}

	@Column(length = 10)
	public String getFarmArea() {
		return farmArea;
	}

	@Column(length = 50)
	public String getFarmPlanting() {
		return farmPlanting;
	}

	@Column(length = 20)
	public String getFarmPlantingIncome() {
		return farmPlantingIncome;
	}

	@Column(length = 255)
	public String getFirstAuditNote() {
		return firstAuditNote;
	}

	@Column(length = 10)
	public String getIfAgreeToMail() {
		return ifAgreeToMail;
	}

	@Column(length = 10)
	public String getIfAgreeToPublish() {
		return ifAgreeToPublish;
	}

	@Column(length = 10)
	public String getIfBorrowHouse() {
		return ifBorrowHouse;
	}

	@Column(length = 10)
	public String getIfBrick() {
		return ifBrick;
	}

	@Column(length = 510)
	public String getIfConcrete() {
		return ifConcrete;
	}

	@Column(length = 10)
	public String getIfConcreteFloor() {
		return ifConcreteFloor;
	}

	@Column(length = 10)
	public String getIfConcreteTile() {
		return ifConcreteTile;
	}

	@Column(length = 10)
	public String getIfHighClass() {
		return ifHighClass;
	}

	@Column(length = 10)
	public String getIfLiveInSchool() {
		return ifLiveInSchool;
	}

	@Column(length = 10)
	public String getIfNeat() {
		return ifNeat;
	}

	@Column(length = 10)
	public String getIfRaw() {
		return ifRaw;
	}

	@Column
	public String getIfRentComfort() {
		return ifRentComfort;
	}

	@Column(length = 10)
	public String getIfRentConcreteFloor() {
		return ifRentConcreteFloor;
	}

	@Column(length = 10)
	public String getIfRentConcreteTile() {
		return ifRentConcreteTile;
	}

	@Column(length = 10)
	public String getIfRentHighClass() {
		return ifRentHighClass;
	}

	@Column(length = 10)
	public String getIfRentHouse() {
		return ifRentHouse;
	}

	@Column(length = 10)
	public String getIfRentSimple() {
		return ifRentSimple;
	}

	@Column(length = 10)
	public String getIfSelfHouse() {
		return ifSelfHouse;
	}

	@Column(length = 10)
	public String getIfSimple() {
		return ifSimple;
	}

	@Column(length = 10)
	public String getIfTwoFloor() {
		return ifTwoFloor;
	}

	@Column(length = 10)
	public String getIfWood() {
		return ifWood;
	}

	@Column(length = 10)
	public String getIllnessExpenditure() {
		return illnessExpenditure;
	}



	@Column(length = 20)
	public String getMainExpenditure() {
		return mainExpenditure;
	}

	@Column(length = 20)
	public String getMathScore() {
		return mathScore;
	}

	@Column(length = 20)
	public String getNationality() {
		return nationality;
	}

	@Column(length = 255)
	public String getOtherAsset() {
		return otherAsset;
	}

	@Column(length = 255)
	public String getOtherExpenditure() {
		return otherExpenditure;
	}

	@Column(length = 50)
	public String getOtherIncome() {
		return otherIncome;
	}

	@Column(length = 255)
	public String getOtherIncomeSource() {
		return otherIncomeSource;
	}

	@Column(length = 10)
	public String getOtherScore() {
		return otherScore;
	}

	@Column(length = 10)
	public String getOtherSponse() {
		return otherSponse;
	}

	@Column(length = 50)
	public String getParentContactNo() {
		return parentContactNo;
	}

	@Column(length = 20)
	public String getParentName() {
		return parentName;
	}

	@Column(length = 200)
	public String getPicture() {
		return picture;
	}

	@Column(length = 50)
	public String getPoorEvaluateDate() {
		return poorEvaluateDate;
	}

	@Column(length = 255)
	public String getPoorEvaluateNote() {
		return poorEvaluateNote;
	}

	@Column(length = 50)
	public String getPoorEvaluatePerson() {
		return poorEvaluatePerson;
	}

	@Column(length = 50)
	public String getPoorEvaluatePersonContact() {
		return poorEvaluatePersonContact;
	}

	// 贫困评分相关
	@Column(length = 20)
	public String getPoorEvaluateScore0() {
		return poorEvaluateScore0;
	}

	@Column(length = 20)
	public String getPoorEvaluateScore1() {
		return poorEvaluateScore1;
	}

	@Column(length = 20)
	public String getPoorEvaluateScore2() {
		return poorEvaluateScore2;
	}

	@Column(length = 20)
	public String getPoorEvaluateScore3() {
		return poorEvaluateScore3;
	}

	@Column(length = 20)
	public String getPoorEvaluateScore4() {
		return poorEvaluateScore4;
	}

	@Column(length = 20)
	public String getPoorEvaluateScore5() {
		return poorEvaluateScore5;
	}

	@Column(length = 20)
	public String getPoorEvaluateScore6() {
		return poorEvaluateScore6;
	}

	@Column(length = 20)
	public String getPoorEvaluateScore7() {
		return poorEvaluateScore7;
	}

	@Column(length = 20)
	public String getPoorEvaluateScore8() {
		return poorEvaluateScore8;
	}

	@Column(length = 20)
	public String getPoorEvaluateTotalScore() {
		return poorEvaluateTotalScore;
	}

	@Column
	public String getPublishTime() {
		return publishTime;
	}

	@Column(length = 30)
	public String getQq() {
		return qq;
	}

	@Column(length = 30)
	@OneToMany(cascade = { CascadeType.ALL })
	public List<Relative> getRelatives() {
		return relatives;
	}

	@Column(length = 10)
	public String getRentFee() {
		return rentFee;
	}

	@Column(length = 255)
	public String getRentFrom() {
		return rentFrom;
	}

	@Column(length = 50)
	public String getSchoolContactPerson() {
		return schoolContactPerson;
	}

	@Column(length = 255)
	public String getSchoolPerfomance() {
		return schoolPerfomance;
	}

	@Column(length = 50)
	public String getScorePosition() {
		return scorePosition;
	}

	@Column(length = 10)
	public String getSex() {
		return sex;
	}

	@Column(length = 30)
	public String getSponseEndTime() {
		return sponseEndTime;
	}

	@Column(length = 30)
	public String getSponseReason() {
		return sponseReason;
	}

	@Column(length = 30)
	public String getSponseStartTime() {
		return sponseStartTime;
	}

	@Column(length = 50)
	public String getSponseState() {
		return sponseState;
	}

	@Column(length = 50)
	public String getStudentContactNo() {
		return studentContactNo;
	}

	@Column(length = 30)
	public String getStudentId() {
		return studentId;
	}

	/*
	 * private Applicant applicant;
	 * 
	 * @ManyToOne
	 * 
	 * @JoinColumn(name = "applicantid")
	 * 
	 * public Applicant getApplicant() { return applicant; }
	 * 
	 * public void setApplicant(Applicant applicant) { this.applicant = applicant; }
	 */
	@Column(length = 20)
	public String getStudentName() {
		return studentName;
	}

	@Column(length = 255)
	public String getSupplemetaryEvaluation() {
		return supplemetaryEvaluation;
	}

	@Column(length = 30)
	public String getUserId() {
		return userId;
	}

	@Transient
	public Map<String, Object> getVariables() {
		return variables;
	}

	@Column(length = 20)
	public String getWorkIncome() {
		return workIncome;
	}

	@Column(length = 255)
	public String getWorkSituation() {
		return workSituation;
	}

	@Column
	@OneToMany(cascade = { CascadeType.ALL })
	public List<School> getSchools() {
		return schools;
	}
	
	@Column(length = 600)
	public String getMemo() {
		return memo;
	}
 
	@Column(length = 600)
	public String getSponserId() {
		return sponserId;
	}
	public void setSponserId(String sponserId) {
		this.sponserId = sponserId;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public void setSchools(List<School> schools) {
		this.schools = schools;
	}
	public void savePicture(MultipartFile file,String whatPhoto) throws Exception {
		// 原始文件名
		String originalFileName = file.getOriginalFilename();
		// 获取图片后缀
		String suffix = originalFileName.substring(originalFileName.lastIndexOf("."));
		// 生成图片存储的名称，UUID 避免相同图片名冲突，并加上图片后缀
		String fileName = this.getStudentName() + whatPhoto + UUID.randomUUID().toString() + suffix;
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

	public void setAddress(String address) {
		this.address = address;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public void setApplicantCompany(String applicantCompany) {
		this.applicantCompany = applicantCompany;
	}

	public void setApplicantContactNum(String applicantContactNum) {
		this.applicantContactNum = applicantContactNum;
	}

	public void setApplicantId(String applicantId) {
		this.applicantId = applicantId;
	}

	public void setApplicantName(String applicantName) {
		this.applicantName = applicantName;
	}

	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}

	public void setAuditNo(String auditNo) {
		this.auditNo = auditNo;
	}

	public void setAudits(List<Audit> audits) {
		this.audits = audits;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public void setBankCard(String bankCard) {
		this.bankCard = bankCard;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public void setChineseScore(String chineseScore) {
		this.chineseScore = chineseScore;
	}

	public void setDebt(String debt) {
		this.debt = debt;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setEndReason(String endReason) {
		this.endReason = endReason;
	}

	/*
	 * private HeadTeacher headTeacher;
	 * 
	 * @ManyToOne
	 * 
	 * @JoinColumn(name = "headTeacherid") public HeadTeacher getHeadTeacher() {
	 * return headTeacher; }
	 * 
	 * public void setHeadTeacher(HeadTeacher headTeacher) { this.headTeacher =
	 * headTeacher; }
	 */

	public void setEnglishScore(String englishScore) {
		this.englishScore = englishScore;
	}

	public void setEvaluateScore(String evaluateScore) {
		this.evaluateScore = evaluateScore;
	}

	public void setEvaluateScorePicture(String evaluateScorePicture) {
		this.evaluateScorePicture = evaluateScorePicture;
	}

	public void setFamilyCondiction(String familyCondiction) {
		this.familyCondiction = familyCondiction;
	}

	public void setFamilyIllness(String familyIllness) {
		this.familyIllness = familyIllness;
	}

	public void setFamilyIllnessDescribe(String familyIllnessDescribe) {
		this.familyIllnessDescribe = familyIllnessDescribe;
	}

	public void setFarmAnimalIncome(String farmAnimalIncome) {
		this.farmAnimalIncome = farmAnimalIncome;
	}

	public void setFarmAnimalUsage(String farmAnimalUsage) {
		this.farmAnimalUsage = farmAnimalUsage;
	}

	public void setFarmArea(String farmArea) {
		this.farmArea = farmArea;
	}

	public void setFarmPlanting(String farmPlanting) {
		this.farmPlanting = farmPlanting;
	}

	public void setFarmPlantingIncome(String farmPlantingIncome) {
		this.farmPlantingIncome = farmPlantingIncome;
	}

	public void setFirstAuditNote(String firstAuditNote) {
		this.firstAuditNote = firstAuditNote;
	}

	public void setIfAgreeToMail(String ifAgreeToMail) {
		this.ifAgreeToMail = ifAgreeToMail;
	}

	public void setIfAgreeToPublish(String ifAgreeToPublish) {
		this.ifAgreeToPublish = ifAgreeToPublish;
	}

	public void setIfBorrowHouse(String ifBorrowHouse) {
		this.ifBorrowHouse = ifBorrowHouse;
	}

	public void setIfBrick(String ifBrick) {
		this.ifBrick = ifBrick;
	}

	public void setIfConcrete(String ifConcrete) {
		this.ifConcrete = ifConcrete;
	}

	public void setIfConcreteFloor(String ifConcreteFloor) {
		this.ifConcreteFloor = ifConcreteFloor;
	}

	public void setIfConcreteTile(String ifConcreteTile) {
		this.ifConcreteTile = ifConcreteTile;
	}

	public void setIfHighClass(String ifHighClass) {
		this.ifHighClass = ifHighClass;
	}

	public void setIfLiveInSchool(String ifLiveInSchool) {
		this.ifLiveInSchool = ifLiveInSchool;
	}

	// -- 临时属性 --//

	public void setIfNeat(String ifNeat) {
		this.ifNeat = ifNeat;
	}

	public void setIfRaw(String ifRaw) {
		this.ifRaw = ifRaw;
	}

	public void setIfRentComfort(String ifRentComfort) {
		this.ifRentComfort = ifRentComfort;
	}

	public void setIfRentConcreteFloor(String ifRentConcreteFloor) {
		this.ifRentConcreteFloor = ifRentConcreteFloor;
	}

	public void setIfRentConcreteTile(String ifRentConcreteTile) {
		this.ifRentConcreteTile = ifRentConcreteTile;
	}

	public void setIfRentHighClass(String ifRentHighClass) {
		this.ifRentHighClass = ifRentHighClass;
	}

	public void setIfRentHouse(String ifRentHouse) {
		this.ifRentHouse = ifRentHouse;
	}

	public void setIfRentSimple(String ifRentSimple) {
		this.ifRentSimple = ifRentSimple;
	}

	public void setIfSelfHouse(String ifSelfHouse) {
		this.ifSelfHouse = ifSelfHouse;
	}

	public void setIfSimple(String ifSimple) {
		this.ifSimple = ifSimple;
	}

	public void setIfTwoFloor(String ifTwoFloor) {
		this.ifTwoFloor = ifTwoFloor;
	}

	public void setIfWood(String ifWood) {
		this.ifWood = ifWood;
	}

	public void setIllnessExpenditure(String illnessExpenditure) {
		this.illnessExpenditure = illnessExpenditure;
	}

	public void setMainExpenditure(String mainExpenditure) {
		this.mainExpenditure = mainExpenditure;
	}

	public void setMathScore(String mathScore) {
		this.mathScore = mathScore;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public void setOtherAsset(String otherAsset) {
		this.otherAsset = otherAsset;
	}

	public void setOtherExpenditure(String otherExpenditure) {
		this.otherExpenditure = otherExpenditure;
	}

	public void setOtherIncome(String otherIncome) {
		this.otherIncome = otherIncome;
	}

	public void setOtherIncomeSource(String otherIncomeSource) {
		this.otherIncomeSource = otherIncomeSource;
	}

	public void setOtherScore(String otherScore) {
		this.otherScore = otherScore;
	}

	public void setOtherSponse(String otherSponse) {
		this.otherSponse = otherSponse;
	}

	public void setParentContactNo(String parentContactNo) {
		this.parentContactNo = parentContactNo;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public void setPoorEvaluateDate(String poorEvaluateDate) {
		this.poorEvaluateDate = poorEvaluateDate;
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

	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}

	/*
	 * public void setPublishTime(String publishTime) throws ParseException {
	 * SimpleDateFormat sDateFormat=new SimpleDateFormat("yyyy-MM-dd");
	 * this.publishTime = sDateFormat.parse(publishTime); }
	 */
	public void setQq(String qq) {
		this.qq = qq;
	}

	public void setRelatives(List<Relative> relatives) {
		this.relatives = relatives;
	}

	/*
	 * public void setRelatives(String relatives) { List<String> relativeList =
	 * Arrays.asList(relatives.split(";")); this.relatives = new
	 * HashSet<Relative>(); System.out.print(relativeList); for(int
	 * i=0;i<relativeList.size();i++) this.relatives.add(new
	 * Relative(relativeList.get(i))); }
	 */
	public void setRentFee(String rentFee) {
		this.rentFee = rentFee;
	}

	public void setRentFrom(String rentFrom) {
		this.rentFrom = rentFrom;
	}

	public void setSchoolContactPerson(String schoolContactPerson) {
		this.schoolContactPerson = schoolContactPerson;
	}

	public void setSchoolPerfomance(String schoolPerfomance) {
		this.schoolPerfomance = schoolPerfomance;
	}

	public void setScorePosition(String scorePosition) {
		this.scorePosition = scorePosition;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public void setSponseEndTime(String sponseEndTime) {
		this.sponseEndTime = sponseEndTime;
	}

	public void setSponseReason(String sponseReason) {
		this.sponseReason = sponseReason;
	}

	public void setSponseStartTime(String sponseStartTime) {
		this.sponseStartTime = sponseStartTime;
	}

	public void setSponseState(String sponseState) {
		this.sponseState = sponseState;
	}

	public void setStudentContactNo(String studentContactNo) {
		this.studentContactNo = studentContactNo;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public void setSupplemetaryEvaluation(String supplemetaryEvaluation) {
		this.supplemetaryEvaluation = supplemetaryEvaluation;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void setVariables(Map<String, Object> variables) {
		this.variables = variables;
	}

	public void setWorkIncome(String workIncome) {
		this.workIncome = workIncome;
	}

	public void setWorkSituation(String workSituation) {
		this.workSituation = workSituation;
	}

	public void setEvaluates(List<Evaluate> evaluates) {
		this.evaluates = evaluates;
	}

	public void setTransfers(List<Transfer> transfers) {
		this.transfers = transfers;
	}

	public void setCommunicates(List<Communicate> communicates) {
		this.communicates = communicates;
	}

	 public String toString() {
		 return this.auditNo;
	 }
}
