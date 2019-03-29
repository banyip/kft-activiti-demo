package me.kafeitu.demo.activiti.service.zhuxue.student;


import me.kafeitu.demo.activiti.entity.zhuxue.School;
import me.kafeitu.demo.activiti.entity.zhuxue.Student;
import me.kafeitu.demo.activiti.service.zhuxue.student.SponserManager;
import me.kafeitu.demo.activiti.service.zhuxue.student.StudentManager;
import me.kafeitu.demo.activiti.util.ExcelUtil;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
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
			School school = result.getSchools().get(0);			
			datas[i][k++] = school.getSchool();
			datas[i][k++] = school.getGrade();
			datas[i][k++] = school.getClassName();
			datas[i][k++] = school.getGraduateTime();
			datas[i][k++] = school.getHeadTeacher();
			datas[i][k++] = school.getSchoolContactNo();
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

}