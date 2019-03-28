package me.kafeitu.demo.activiti.entity.zhuxue;


import me.kafeitu.demo.activiti.service.zhuxue.student.SponserManager;
import me.kafeitu.demo.activiti.service.zhuxue.student.StudentManager;


import org.springframework.beans.factory.annotation.Autowired;



import javax.persistence.*;
import java.util.List;

/**
 * Entity: Relative
 *
 * @author HenryYan
 */
@Entity
public class View  {
    @Autowired
    protected StudentManager studentManager;
    @Autowired
    protected SponserManager sponserManager;
	private String[][] datas;
	private void setSponserRows() {
		String[] titles = {"编号","姓名","资助状态","性别","","出生年月","学校","年级","班级","毕业时间","学校联系人","电话","住址","家长姓名","家庭电话","学生电话","QQ","备注","开始资助时间","身份证","学生账号","非本人账号"};
		int cols = titles.length;
		List<Student> results=studentManager.getAllStudent();
		int rows = results.size();
		datas = new String[rows][cols];
		for(int i=0;i<rows;i++)
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
			
			
	}
}
