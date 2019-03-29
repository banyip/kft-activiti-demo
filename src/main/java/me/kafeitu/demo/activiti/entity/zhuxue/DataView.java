package me.kafeitu.demo.activiti.entity.zhuxue;


import me.kafeitu.demo.activiti.service.zhuxue.student.SponserManager;
import me.kafeitu.demo.activiti.service.zhuxue.student.StudentManager;
import me.kafeitu.demo.activiti.util.ExcelUtil;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;



import javax.persistence.*;

import java.io.OutputStream;
import java.util.List;

/**
 * Entity: Relative
 *
 * @author HenryYan
 */
@Entity
public class DataView  {
    public DataView() {
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
		String[] studentTitles = {"编号","姓名","资助状态","性别","","出生年月","学校","年级","班级","毕业时间","学校联系人","电话","住址","家长姓名","家庭电话","学生电话","QQ","备注","开始资助时间","身份证","学生账号","非本人账号"};
		titles = studentTitles;
		int cols = titles.length;
		List<Student> results=studentManager.getAllStudent();
		int rows = results.size();
		datas = new String[rows][cols];
		for(int i=0;i<rows ;i++)
		{
			Student result = results.get(i);
			datas[i][0] = result.getAuditNo();
			datas[i][1] = result.getStudentName();
			datas[i][2] = result.getSponseState();
			datas[i][3] = result.getSex();
			datas[i][4] = result.getBirthday();
			School school = result.getSchools().get(0);			
			datas[i][5] = school.getSchool();
			datas[i][6] = school.getGrade();
			datas[i][7] = school.getClassName();
			datas[i][8] = school.getGraduateTime();
			datas[i][9] = school.getHeadTeacher();
			datas[i][10] = school.getSchoolContactNo();
			datas[i][11] = result.getAddress();
			datas[i][12] = result.getParentName();
			datas[i][13] = result.getParentContactNo();
			datas[i][14] = result.getStudentContactNo();
			datas[i][15] = result.getQq();
			datas[i][16] = "";
			datas[i][17] = result.getSponseStartTime();
			datas[i][18] = result.getUserId();
			datas[i][19] = "";
			datas[i][20] = "";			
		}
		return fileName;
	}
	public void writeToExcelFile(int startRowNum,OutputStream os)
	{
		
        HSSFWorkbook hssfWorkbook = ExcelUtil.writeExcel(2,"学生名录", titles, datas);
        
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
		this.writeToExcelFile(1, os);
	}

}
