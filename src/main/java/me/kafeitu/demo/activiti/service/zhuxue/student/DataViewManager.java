package me.kafeitu.demo.activiti.service.zhuxue.student;

import me.kafeitu.demo.activiti.entity.zhuxue.Transfer;
import me.kafeitu.demo.activiti.entity.zhuxue.Sponser;
import me.kafeitu.demo.activiti.entity.zhuxue.School;
import me.kafeitu.demo.activiti.entity.zhuxue.Student;
import me.kafeitu.demo.activiti.service.zhuxue.student.SponserManager;
import me.kafeitu.demo.activiti.service.zhuxue.student.StudentManager;
import me.kafeitu.demo.activiti.util.ExcelUtil;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.*;

import java.io.OutputStream;
import java.util.List;

/**
 * Entity: Relative
 *
 * @author HenryYan
 */
@Component
@Transactional(readOnly = true)
public class DataViewManager  {
    public DataViewManager() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Autowired
    protected StudentManager studentManager;
    @Autowired
    protected SponserManager sponserManager;
    @Autowired
    protected TransferManager transferManager;
    private Logger logger = LoggerFactory.getLogger(getClass());
    private String fileName;
    private String[] titles;
	private String[][] datas;
	public String setStudentRows() {
		fileName = "学生名录" + System.currentTimeMillis() + ".xls";
		String[] studentTitles = {"编号","姓名","资助状态","性别","民族","出生年月","学校","年级","班级","毕业时间","学校联系人","电话","住址","家长姓名","家庭电话","学生电话","QQ","备注","开始资助时间","身份证","学生账号"};
		titles = studentTitles;
		int cols = titles.length;
		List<Student> results=studentManager.getAllStudent();
		int rows = results.size();
		datas = new String[rows][cols];		
		for(int i=0;i<rows ;i++)
		{
			Student result = results.get(i);
			int k = 0;
			datas[i][k++] = result.getAuditNo();
			datas[i][k++] = result.getStudentName();
			datas[i][k++] = result.getSponseState();
			datas[i][k++] = result.getSex();
			datas[i][k++] = result.getNationality();
			datas[i][k++] = result.getBirthday();
			List<School> schools =result.getSchools();
			if(schools!=null&&schools.size()>0)
			{
				School school = schools.get(0);			
				if(school!=null)
				{
					datas[i][k++] = school.getSchool();
					datas[i][k++] = school.getGrade();
					datas[i][k++] = school.getClassName();
					datas[i][k++] = school.getGraduateTime();
					datas[i][k++] = school.getHeadTeacher();
					datas[i][k++] = school.getSchoolContactNo();
				}
				else
					k++;
			}
			else
				k++;

			datas[i][k++] = result.getAddress();
			datas[i][k++] = result.getParentName();
			datas[i][k++] = result.getParentContactNo();
			datas[i][k++] = result.getStudentContactNo();
			datas[i][k++] = result.getQq();
			datas[i][k++] = result.getMemo();
			datas[i][k++] = result.getSponseStartTime();
			datas[i][k++] = result.getUserId();
			datas[i][k++] = result.getBankCard();	
		}
		return fileName;
	}
	public void writeToExcelFile(int startRowNum,OutputStream os)
	{
		
        HSSFWorkbook hssfWorkbook = ExcelUtil.writeExcel(startRowNum,"学生名录", titles, datas);
        
        // 响应到客户端
        try {
            hssfWorkbook.write(os);
            os.flush();
            os.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
	
	public void writeStudentsToExcelFile(OutputStream os)
	{
		this.writeToExcelFile(0, os);
	}

	public String setSponserRows() {
		fileName = "支助人" + System.currentTimeMillis() + ".xls";
		String[] sponserTitles = {"编号","资助人姓名","邮箱","电话","QQ","地址","收据","政治面貌","汇款人/单位","出生日期","资助学生编号","起始资助时间","终止资助时间","终止资助原因","微信号"};
		titles = sponserTitles;
		int cols = titles.length;
		List<Sponser> results=sponserManager.getAllSponser();
		int rows = results.size();
		datas = new String[rows][cols];		
		for(int i=0;i<rows ;i++)
		{
			Sponser result = results.get(i);
/*
			List<Transfer> transfers = result.getTransfers();
			String sponseStudentNos ="" ;
			for(int l=0;i<transfers.size();l++)
				sponseStudentNos += "/" + transfers.get(l).getStudentToSponse().getAuditNo();
			sponseStudentNos = sponseStudentNos.substring(1);
*/
			int k = 0;
			datas[i][k++] = result.getSponserNo();
			datas[i][k++] = result.getName();
			datas[i][k++] = result.getEmail();
			datas[i][k++] = result.getContactNo();
			datas[i][k++] = result.getQq();
			datas[i][k++] = result.getAddress();
			datas[i][k++] = result.getNeedReciept();
			datas[i][k++] = result.getPoliticFace();
			datas[i][k++] = result.getProfectional();
			datas[i][k++] = result.getBirthdate();
			datas[i][k++] = result.StudentsToSponseString();
			datas[i][k++] = result.getSponseStartTime();
			datas[i][k++] = result.getSponseEndTime();
			datas[i][k++] = result.getSponseEndReason();
			datas[i][k++] = result.getWechat();
		}
		return fileName;
	}
	
	
//设置资助登记表内容	
	public String setSponseRegistryRowsSemester(String semester) {
		String[] sponserTitles = {"学生编号","学生姓名","学校","年级","资助人编号","资助人","邮箱","电话","QQ","资助金额","汇款通知","运营费","到账","汇款来源","财务对帐","确认到帐邮件","发放情况","反馈"};
		titles = sponserTitles;
		int cols = titles.length;
		List<Transfer> transfers = transferManager.getAllTransfer(semester);
		//List<Sponser> sponsers=sponserManager.getAllSponser();
		int rows = transfers.size();
		datas = new String[rows][cols];		
		for(int i=0;i<rows ;i++)
		{
			Transfer transfer= transfers.get(i);
			
			Sponser sponser = transfer.getSponser();
			Student result = studentManager.getStudent(Long.parseLong(transfer.getStudentId()));
			int k = 0;
			
			datas[i][k++] = result.getAuditNo();
			datas[i][k++] = result.getStudentName();	
			List <School> schools = result.getSchools();
			School school = schools.get(0);		
			if(schools!=null&&schools.size()>0)
			{
				if(school!=null)
				{
					datas[i][k++] = school.getSchool();
					datas[i][k++] = school.getGrade();
				}
				else
					k+=2;
			} else
				k +=2;
			datas[i][k++] = sponser.getSponserNo();
			datas[i][k++] = sponser.getName();
			datas[i][k++] = result.getEmail();
			datas[i][k++] = result.getApplicantContactNum();
			datas[i][k++] = result.getQq();
			datas[i][k++] = Integer.toString(transfer.getAmount());
			datas[i][k++] = ""; //新增汇款通知					
			datas[i][k++] = transfer.getOperateFee();
			datas[i][k++] = transfer.getTransferTime();
			datas[i][k++] = transfer.getTransferBank();
			datas[i][k++] = transfer.getMethod();
			datas[i][k++] = transfer.getSendEmail();

		}
		return fileName;
	}	
	
	public String setSponseRegistryRows()
	{
		String fileName = "资助登记表" + System.currentTimeMillis() + ".xls";
		this.setSponseRegistryRowsSemester("2018秋");
		return fileName;
	}
	
	public void writeSponsersToExcelFile(OutputStream os)
	{
		this.writeToExcelFile(0, os);
	}

	public void writeSponseRegistryToExcelFile(OutputStream os)
	{
		this.writeToExcelFile(0, os);
	}

	
	
}
