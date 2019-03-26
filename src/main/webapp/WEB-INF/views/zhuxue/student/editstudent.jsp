<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<table border="0" cellpadding="0" cellspacing="0" width="898" style="border-collapse: collapse; width: 95%">
	<colgroup>
		<col width="83" >
		<col width="72" span="2" >
		<col width="99" >
		<col width="93" >
		<col >
		<col width="74" >
		<col width="66" >
	</colgroup>
	<tr height="48" style="mso-height-source:userset;height:36.0pt">
		<td colspan="8" height="48" style="height: 36.0pt; " class="style1">
		学生登记信息明细<input type="hidden" class=studentApply id=student_id name="id" /></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt; " class="style11">
		申请人姓名</td>
		<td colspan="2" class="style11">联系电话</td>
		<td colspan="4" class="style11">单位名称</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style11">
			<input class="studentApply" id="student_applicantName" name="applicantName" />　</td>
		<td colspan="2" class="style11">
		<input  class=studentApply id=student_applicantContactNum name="applicantContactNum" />　</td>
		<td colspan="4" class="style11">
		<input  class=studentApply id=student_applicantCompany name="applicantCompany" />　</td>
    </tr>
 	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style11">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style11">
		学生信息登记表</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style11">通过审核编号</td>
		<td colspan="2" class="style11">
			<input class="studentApply" id="student_auditNo" name="auditNo" />　</td>
		<td class="style11">资助状态</td>
		<td colspan="3" class="style11">
			<input class="studentApply" id="student_sponseState" name="sponseState" />　</td>
    </tr>
    
 	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style11">学生姓名</td>
		<td colspan="2" class="style11"><input class="studentApply" id="student_studentName" name="studentName" /></td>
		<td class="style11">民族</td>
		<td colspan="3" class="style11">
		<input class="studentApply" id="student_nationality" name="nationality" />　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style11">身份证号</td>
		<td colspan="2" class="style11">
		<input class="studentApply" id="student_studentId" name="studentId" />　</td>
		<td class="style11">学生照片</td>
		<td colspan="3" class="style11">
		<a class="studentPhoto" id="student_picture" target=showpic name="picture" >没有照片</a></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style11">
		学生个人银行卡号</td>
		<td colspan="2" class="style11">
		<input class="studentApply" id="student_bankCard" name="bankCard" />　</td>
		<td class="style11">开户银行</td>
		<td colspan="3" class="style11">
		<input class="studentApply" id="student_bank" name="bank" />　</td>
    </tr>   
	<tr><td colspan=8>		    <div >
				<table width="100%">
 	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="width: 262px;" class="style11">学校名称</td>
		<td class="style11" style="width: 76px">年级</td>
		<td class="style11" style="width: 75pt">班号/专业</td>
		<td class="style11" style="width: 81px">班主任姓名</td>
		<td colspan="3" class="style11"  style="width: 109px">联系电话</td>
    </tr>
    </table></div></td></tr>    
		<tr><td colspan=8> <div id="div_schools">
				<table class="class_schools" width="100%">
 	<tr style="mso-height-source:userset;">
		<td colspan="2"  class="style11" style="height: 20pt; width: 262px;">
		<input class="studentApply" id="schools[0]_school" name="school" style="width: 259px" /></td>
		<td class="style11" style="width: 76px; height: 20pt;">
		<input class="studentApply" id="schools[0]_grade" name="grade" style="width: 73px"  /></td>
		<td class="style11" style="width: 75pt; height: 20pt;">
		<input class="studentApply" id="schools[0]_className" name="className" style="width: 70pt" />　</td>
		<td class="style11" style="width: 81px; height: 20pt;">
		<input class="studentApply" id="schools[0]_headTeacher" name="headTeacher" style="width: 78%"  />　</td>
		<td colspan="3" class="style11"  style="width: 109px; height: 20pt;">
		<input class="studentApply" id="schools[0]_schoolContactNo" name="schoolContactNo" width="100%"/>　</td>
    </tr>
    </table></div></td></tr>
	<tr>
		<td colspan="8" class="style9">	
			<input type="button" name="button"
			value="新 增" style="width:60px; height:24px;"
			onclick="inserttable('editstudent','schools')" />      
			<input
			type="button" name="button" value="删 除"
			style="width:60px; height:24px;" onclick="deletetable('editstudent','schools')" />
		</td>
	</tr>
    
  	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt; " class="style11">
		　</td>
		<td class="style11">　</td>
		<td class="style11" >　</td>
		<td class="style11">　</td>
		<td colspan="3" class="style11">　</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td style="height: 22pt; width: 132pt;" class="style11">出生日期</td>
		<td class="style11" style="height: 22pt">性别</td>
		<td class="style11" style="height: 22pt">QQ</td>
		<td class="style11" style="height: 22pt">邮箱</td>
		<td class="style11" style="height: 22pt">联系电话</td>
		<td class="style11" style="height: 22pt">开始资助时间</td>
		<td class="style11" style="height: 22pt; width: 70px;">结束资助时间</td>
		<td class="style11" style="height: 22pt">结案原因</td>
    </tr>     
	<tr height="26" style="mso-height-source:userset;height:20.1pt" class="style11">
		<td height="26" style="height: 20.1pt; width: 132pt;" class="style11">
		<input class="studentApply" id="student_age" name="age"  style="width: 68px"/>　</td>
		<td class="style11" style="width: 60pt">
		<input class="studentApply" id="student_sex" name="sex"  style="width: 50px"/>　</td>
		<td class="style11">
		<input class="studentApply" id="student_qq" name="qq"  style="width: 90px" />　</td>
		<td class="style11" >
		<input class="studentApply" id="student_email" name="email"  style="width: 90px"/>　</td>
		<td class="style11">
		<input class="studentApply" id="student_studentContactNo" name="studentContactNo"  style="width: 90px" />　</td>
		<td class="style11">
		<input class="studentApply" id="student_sponseStartTime" name="sponseStartTime"  style="width: 90px" />　</td>
		<td class="style11" style="width: 70px">
		<input class="studentApply" id="student_sponseEndTime" name="sponseEndTime"  style="width: 90px"/>　</td>
		<td class="style11">
		<input class="studentApply" id="student_endReason" name="endReason"  style="width: 90px"/>　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style11">
		&quot;共同生活&quot;家庭成员情况（如父母、亲兄弟姐妹，爷爷奶奶或外公外婆同住也需要登记在内）</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 132pt;" class="style11">关系</td>
		<td class="style11">姓名</td>
		<td class="style11">出生年月日</td>
		<td class="style11" >联系电话</td>
		<td class="style11">职业/学校</td>
		<td class="style11">年收入</td>
		<td class="style11" style="width: 70px">其他收入/补助</td>
		<td class="style11">健康情况</td>
    </tr> 
    <tr>
	    <td colspan=8 class="style9">				    		
		    <div id="div_relatives">
				<table class="class_relatives" width="100%">
					<colgroup>
		<col width="83" >
		<col width="72" span="2" >
		<col width="99" >
		<col width="93" >
		<col width="70" >
		<col width="74" >
		<col width="66" >
	</colgroup>

	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 101px;" class="style11">
		<input class="studentApply" type="text" id="relatives[0]_relationship" name="relationship" style="width: 40px">　</td>
		<td class="style11">
		<input class="studentApply" type="text" id="relatives[0]_name" name="name" style="width: 73px"></td>
		<td class="style11">
		<input class="studentApply" type="text" id="relatives[0]_birthDate" name="birthDate" style="width: 96px">　</td>
		<td class="style11">
		<input class="studentApply" type="text" id="relatives[0]_contactNo" name="contactNo" style="width: 112px"></td>
		<td class="style11">
		<input class="studentApply" type="text" id="relatives[0]_profectional" name="profectional" style="width: 100px">　</td>
		<td class="style11">
		<input class="studentApply" type="number" id="relatives[0]_anualIncome" name="anualIncome" style="width: 81px">　</td>
		<td class="style11">
		<input class="studentApply" type="text" id="relatives[0]_otherSponse" name="otherSponse" style="width: 78px">　</td>
		<td class="style19">
		<input class="studentApply" type="text" id="relatives[0]_health" name="health" style="width: 86px">　</td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
			<tr>
				<td colspan="8" class="style1">


					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('editstudent','relatives')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('editstudent','relatives')" />
				</td>
			</tr>

    
			<tr>
				<td colspan="8" class="style1" width="100%">
					<table border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse:
 collapse;width:100%">
						<colgroup>
							<col width="118"><col span="1">
							<col width="103" span="1">
							<col><col><col width="100">
							<col width="105"><col width="95">
						</colgroup>
						<tr>
							<td rowspan="8" height="208" width="118" style="height: 160.8pt; width: 89pt; layout-flow: vertical-ideographic;" class="style11">
							家庭经济情况</td>
							<td rowspan="4" width="103" style="width: 77pt" class="style11">
							主要收入</td>
							<td style="width: 144pt" class="style1">
							<span lang="EN-US">1.<font class="font6">务农收入</font></span></td>
							<td width="141" style="width: 106pt" class="style11">
							<span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_farmPlantingIncome" name="farmPlantingIncome" style="width: 87px" /></span></td>
							<td style="width: 76pt" class="style11">
							<span lang="EN-US"><span style="mso-spacerun:yes">&nbsp;</span><font class="font6">元</font><font class="font5">/</font><font class="font6">年</font></span></td>
							<td class="style11">
							收入来源</td>
							<td colspan="2" style="width: 150pt" class="style11">
							<span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_farmPlanting" name="farmPlanting" style="width: 95%" /></span></td>
						</tr>
						<tr height="26">
							<td height="26" style="height: 20.1pt; width: 144pt" class="style1">
							<span lang="EN-US">2.打工/经营收入</span></td>
							<td width="141" style="width: 106pt" class="style11">
							<span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_workIncome" name="workIncome" style="width: 87px" /></span></td>
							<td class="style11">
							元<font>/年</font></td>
							<td class="style11">
							收入来源（职业）</td>
							<td colspan="2" class="style11"><span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_workSituation" name="workSituation" style="width: 95%" /></span></td>
						</tr>
						<tr height="26">
							<td height="26" style="height: 20.1pt; width: 144pt" class="style1">
							<span lang="EN-US">3.<font class="font6">亲戚资助</font></span></td>
							<td width="141" style="width: 106pt" class="style11">
							<span style="mso-spacerun:yes"><input  class="studentApply" id="student_relativeSponseIncome" name="relativeSponseIncome" style="width: 87px" /></span></td>
							<td class="style11">
							元<font>/年</font></td>
							<td class="style11">
							收入来源</td>
							<td colspan="2" class="style11"><span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_relativeSponse" name="relativeSponse" style="width: 95%" /></span></td>
						</tr>
						<tr height="26">
							<td style="height: 20pt; width: 144pt" class="style1">
							<span lang="EN-US">4.政策性补助</span></td>
							<td width="141" style="width: 106pt; height: 20pt;" class="style11">
							<span lang="EN-US"><input  class="studentApply" id="student_otherIncome" name="otherIncome" style="width: 87px" /></span></td>
							<td style="width: 76pt; height: 20pt;" class="style11">
							元<font class="font5">/</font><font class="font6">年</font></td>
							<td class="style11">
							收入来源</td>
							<td colspan="2" class="style11" style="height: 20pt"><span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_otherIncomeSource" name="otherIncomeSource" style="width: 95%" /></span></td>
						</tr>
						<tr height="26">
							<td rowspan="4" height="104" width="103" style="height: 80.4pt; width: 77pt" class="style11">
							主要支出</td>
							<td style="width: 144pt" class="style1">
							<span lang="EN-US">1.<font class="font6">医疗支出</font></span></td>
							<td width="141" style="width: 106pt" class="style11">
							<span style="mso-spacerun:yes"><input  class="studentApply" id="student_illnessExpenditure" name="illnessExpenditure" style="width: 87px" /></span></td>
							<td style="width: 76pt" class="style11">
							元/年</td>
							<td class="style11">
							支出原因</td>
							<td colspan="2" class="style11"><span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_familyIllnessDescribe" name="familyIllnessDescribe" style="width: 95%" /></span></td>
						</tr>
						<tr>
							<td style="height: 20pt; width: 144pt" class="style1">
							<span lang="EN-US">2.学习支出</span></td>
							<td width="141" style="width: 106pt; height: 20pt;" class="style11">
							<span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_studyExpenditure" name="studyExpenditure" style="width: 87px" /></span></td>
							<td style="width: 76pt; height: 20pt;" class="style11">
							元/年</td>
							<td class="style11">
							支出原因</td>
							<td colspan="2" class="style11" style="height: 20pt"><span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_studyDescribe" name="studyDescribe" style="width: 95%" /></span></td>
						</tr>
						<tr>
							<td style="width: 144pt; height: 23px;" class="style1">
							<span lang="EN-US">3.生活支出</span></td>
							<td width="141" style="width: 106pt; height: 23px;" class="style11">
							<input  class="studentApply" id="student_liveExpenditure" name="liveExpenditure" style="width: 87px" /></td>
							<td style="width: 76pt; height: 23px;" class="style11">
							元/年</td>
							<td class="style11">
							支出原因</td>
							<td colspan="2" class="style11" style="height: 23px"><span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_liveDescribe" name="liveDescribe" style="width: 95%" /></span></td>
						</tr>
						<tr height="26">
							<td height="26" style="height: 20.1pt; width: 144pt" class="style1">
							<span lang="EN-US">4.债务情况</span></td>
							<td width="141" style="width: 106pt" class="style11">
							<span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_debt" name="debt" style="width: 87px" /></span></td>
							<td style="width: 76pt" class="style11">
							元</td>
							<td class="style11">
							支出原因</td>
							<td colspan="2" class="style11"><span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_debtDescribe" name="debtDescribe" style="width: 95%" /></span></td>
						</tr>
					</table>
				</td>
			</tr>

    
	<tr style="mso-height-source:userset;">
		<td rowspan="4" align="center" class="style12">
		<span style="mso-spacerun:yes">&nbsp;</span>住房情况</td>
		<td colspan="7" class="style11">1.√ 
		<input  class="studentApply" id="student_ifSelfHouse" name="ifSelfHouse" type="checkbox" />自有房屋<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>外观整体状况：√ 
		<input  class="studentApply" id="student_ifRaw" name="ifRaw" type="checkbox" />土坯房<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span> 
		<input  class="studentApply" id="student_ifBrick" name="ifBrick" type="checkbox" />砖瓦结构<span style="mso-spacerun:yes">&nbsp;&nbsp;  
		<input  class="studentApply" id="student_ifConcrete" name="ifConcrete" type="checkbox" /></span>混凝土结构<span style="mso-spacerun:yes">&nbsp;&nbsp;
		<input  class="studentApply" id="student_ifWood" name="ifWood" type="checkbox" /></span>木屋<span style="mso-spacerun:yes">&nbsp;   
		<input  class="studentApply" id="student_ifTwoFloor" name="ifTwoFloor" type="checkbox" /></span>≥两层<span style="mso-spacerun:yes">&nbsp;</span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt" class="style11">
		<td colspan="7" height="26" style="height: 20.1pt; " class="style33">
		<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>房屋内部装修：<span style="mso-spacerun:yes">&nbsp;
		</span>√<input  class="studentApply" id="student_ifSimple" name="ifSimple" type="checkbox" />简陋<span style="mso-spacerun:yes">&nbsp;&nbsp; 
		<input  class="studentApply" id="student_ifConcreteFloor" name="ifConcreteFloor" type="checkbox" /></span>水泥地<span style="mso-spacerun:yes">&nbsp;&nbsp;
		<input  class="studentApply" id="student_ifConcreteTile" name="ifConcreteTile" type="checkbox" /></span>贴瓷砖<span style="mso-spacerun:yes">&nbsp;&nbsp;  
		<input  class="studentApply" id="student_ifNeat" name="ifNeat" type="checkbox" /></span>舒适整洁<span style="mso-spacerun:yes">&nbsp;&nbsp;
		<input  class="studentApply" id="student_ifHighClass" name="ifHighClass" type="checkbox" /></span>高档</td>
	</tr>
	<tr height="26">
		<td colspan="7" height="26" class="style11">2. 
		<input id="student_ifBorrowHouse" name="ifBorrowHouse" type="checkbox" />借用房屋&nbsp;&nbsp; 来源：<input id="student_rentFrom" name="rentFrom" />。</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="7" style="height: 20pt; mso-ignore: colspan" class="style11">
		3.  
		<input  class="studentApply" id="student_ifRentHouse" name="ifRentHouse" type="checkbox" />租用房屋<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>租金：<span style="mso-spacerun:yes"><input  class="studentApply" id="student_rentFee" name="rentFee" style="width: 41px" /></span>元/月<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>房屋内部装修：<span style="mso-spacerun:yes">&nbsp;
		<input  class="studentApply" id="student_ifRentSimple" name="ifRentSimple" type="checkbox" /></span>简陋<span style="mso-spacerun:yes">&nbsp;&nbsp; 
		<input  class="studentApply" id="student_ifRentConcreteFloor" name="ifRentConcreteFloor" type="checkbox" /></span>水泥地<span style="mso-spacerun:yes">&nbsp;&nbsp;
		<input  class="studentApply" id="student_ifRentConcreteTile" name="ifRentConcreteTile" type="checkbox" /></span>贴瓷砖<span style="mso-spacerun:yes">&nbsp;&nbsp; 
		<input  class="studentApply" id="student_ifRentComfort" name="ifRentComfort" type="checkbox" /></span>舒适<span style="mso-spacerun:yes">&nbsp;&nbsp;
		<input  class="studentApply" id="student_ifRentHighClass" name="ifRentHighClass" type="checkbox" /></span>高档</td>
	</tr>
	
	
		<tr><td colspan=8>
		<table class="class_audits" width="100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style12">
		相关走访资料上传</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td style="height: 20pt; width: 149pt;" class="style12">拍摄时间</td>
		<td class="style11" style="width: 60pt; height: 20pt;">家庭环境照片</td>
		<td class="style11" style="height: 20pt">学生个人独照</td>
		<td class="style11" style="width: 48pt; height: 20pt;">反馈表照片</td>
		<td class="style11" style="height: 20pt">发款签收照片</td>
		<td colspan="3" class="style12" style="height: 20pt">
		其他照片（如病历＼证件＼证明＼信件交流之类）</td>
	</tr>
	
	<tr><td colspan=8><div id="div_audits[0]_auditphotosa">
				<table class="class_audits[0]_auditphotosa" width="100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 205px;" class="style11">
				<input class="studentApply" type="text" id="audits[0]_auditphotos[0]_photoDate" name="auditPhotos[0]_photoDate" style="width: 86px"></td>
		<td class="style11" style="width: 66pt">
		<a target=showpic class="studentEditPhoto" id="audits[0]_auditphotos[0]_familyPhoto" name="auditPhotos[0]_familyPhoto" style="width: 80px">没有图片</a></td>
		<td class="style11" style="width: 123px">
		<a target=showpic class="studentEditPhoto" id="audits[0]_auditphotos[0]_studentEditPhoto" name="auditPhotos[0]_studentEditPhoto" style="width: 80px">没有图片</a>　</td>
		<td class="style11" style="width: 119px" >
		<a target=showpic class="studentEditPhoto" id="audits[0]_auditphotos[0]_feedbackPhoto" name="auditPhotos[0]_feedbackPhoto" style="width: 80px">没有图片</a>　</td>
		<td class="style11" style="width: 98px">
		<a target=showpic class="studentEditPhoto" id="audits[0]_auditphotos[0]_recieptphoto" name="auditPhotos[0]_recieptphoto" style="width: 80px">没有图片</a>　</td>
		<td colspan="3" class="style11">
		<a target=showpic class="studentEditPhoto" id="audits[0]_auditphotos[0]_otherPhoto" name="auditPhotos[0]_otherPhoto" style="width: 80px">没有图片</a>　</td>
	</tr>
	</table>
	</div>
	</td></tr>
<tr><td colspan=8>		    <div id="div_audits[0]_auditPhotos">
				<table class="class_audits[0]_auditPhotos" width="100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 205px;" class="style9">		<input type="text" class="studentApply" id="audits[0]_auditPhotos[1]_photoDate" name="auditPhotos[1]_photoDate" style="width: 80px"></td>
		<td class="style11" style="width: 66pt">
		<input type="file" multiple="multiple" class="studentPhoto" id="audits[0]_auditPhotos[1]_familyPhoto" name="auditPhotos[1]_familyPhoto" style="width: 80px"></td>
		<td class="style11" style="width: 123px">
		<input type="file" class="studentPhoto" id="audits[0]_auditPhotos[1]_studentPhoto" name="auditPhotos[1]_studentPhoto" style="width: 80px">　</td>
		<td class="style11" style="width: 119px" >
		<input type="file" class="studentPhoto" id="audits[0]_auditPhotos[1]_feedbackPhoto" name="auditPhotos[1]_feedbackPhoto" style="width: 80px">　</td>
		<td class="style11" style="width: 98px">
		<input type="file" class="studentPhoto" id="audits[0]_auditPhotos[1]_recieptphoto" name="auditPhotos[1]_recieptphoto" style="width: 80px">　</td>
		<td colspan="3" class="style11">
		<input  type="file"  multiple="multiple" class="studentPhoto" id="audits[0]_auditPhotos[1]_otherPhoto" name="auditPhotos[1]_otherPhoto" style="width: 80px">　</td>
	</tr>
	</table></div>
	</td></tr>	
			<tr>
				<td colspan="8" class="style12">


					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="insertauditphotos('editstudent','audits\\[0\\]_auditPhotos')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('editstudent','audits\\[0\\]_auditPhotos')" />
				</td>
			</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="8" style="height: 20pt" class="style12">初审评价</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 20pt" class="style11">走访时间</td>
		<td class="style11" colspan="6" style="height: 20pt">　<input  class="studentApply" id="audits[0]_auditDate" name="auditDate" style="width: 95px" /></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style11">
		家庭贫困原因</td>
		<td colspan="6" class="style11">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[0]_poorReason" name="poorReason" style="width: 95%" /></span>　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style11">
		对学生个人评价</td>
		<td colspan="6" class="style11">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[0]_studentEvaluation" name="studentEvaluation" style="width: 95%" /></span>　</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 5pt" class="style11">走访结论</td>
		<td colspan="6" class="style11" style="height: 5pt">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[0]_auditResult" name="auditResult" style="width: 95%" /></span>　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style11">是否通过审核</td>
		<td class="style12" style="width: 60pt"><select class="studentApply" id="audits[0]_auditPass" name="auditPass">
		<option selected="" value="true">是</option>
		<option value="false">否</option>
		</select>&nbsp;</td>
		<td class="style11">&nbsp;</td>
		<td class="style11" >审核人</td>
		<td class="style11"><span style="mso-spacerun:yes"><input  class="studentApply" id="audits[0]_auditPerson" name="auditPerson" style="width: 81px" /></span></td>
		<td class="style11">电话</td>
		<td colspan="2" class="style11"><span style="mso-spacerun:yes">
		&nbsp;<input  class="studentApply" id="audits[0]_auditPersonContactNo" name="auditPersonContactNo" style="width: 114px" /></span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style11">申请评定表</td>
		<td colspan="6" class="style11">　<a target=showpic class="studentPhoto" id="audits[0]_applyEvaluationPicture" name="auditPhotos[0]_applyEvaluationPicture" style="width: 303px">没有照片</a><!--<input type="file" class="studentPhoto" id="audits[0]_applyEvaluationPicture" name="auditPhotos[0]_applyEvaluationPicture" style="width: 303px">--></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style11">评定表得分</td>
		<td colspan="6" class="style11">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[0]_evaluateScore" name="evaluateScore" style="width: 124px" /></span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style11">补充评价</td>
		<td colspan="6" class="style11">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[0]_supplemetaryEvaluation" name="supplemetaryEvaluation" style="width: 95%" /></span></td>
	</tr>
	</table></div>
	</td></tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 20pt" class="style11">资助建议</td>
		<td colspan="6" class="style11" style="height: 20pt">　<span style="mso-spacerun:yes">
		<select class="sponserApply" id="student_sponseRecommandation" name="sponseRecommandation" style="width: 150px">
			<option value="long">建议长期资助</option>
			<option value="short">短期困难</option>
			<option value="no">不资助</option>
			</select>
		</span>　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="3" height="26" style="height: 20.1pt" class="style11">
		官网上线发布时间</td>
		<td colspan="5" class="style11">　<input class="studentApply" id="student_publishTime" name="publishTime"  style="width: 295px" /></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt" class="style11">
		<td colspan="8" height="26" style="height: 20.1pt" class="style9">考试成绩</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 132pt;" class="style11">考试时间</td>
		<td class="style11" style="width: 60pt">语文</td>
		<td class="style11">英语</td>
		<td class="style11" >数学</td>
		<td class="style11">化学</td>
		<td class="style11">物理</td>
		<td class="style11" style="width: 70px">专业科</td>
		<td class="style11">年级排名</td>
	</tr>
		<tr><td colspan=8>		    <div id="div_exams">
				<table class="class_exams" width="100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style9">
				<input class="studentApply" type="text" id="exams[0]_examTime" name="examTime" style="width: 86px"></td>
		<td class="style11" style="width: 60pt">
				<input class="studentApply" type="text" id="exams[0]_chinese" name="chinese" style="width: 86px"></td>
		<td class="style11">
				<input class="studentApply" type="text" id="exams[0]_english" name="english" style="width: 86px"></td>
		<td class="style11" >
				<input class="studentApply" type="text" id="exams[0]_math" name="math" style="width: 86px"></td>
		<td class="style11">
				<input class="studentApply" type="text" id="exams[0]_chemical" name="chemical" style="width: 86px"></td>
		<td class="style11">
				<input class="studentApply" type="text" id="exams[0]_physical" name="physical" style="width: 86px"></td>
		<td class="style11">
				<input class="studentApply" type="text" id="exams[0]_profectional" name="profectional" style="width: 86px"></td>
		<td class="style11">
				<input class="studentApply" type="text" id="exams[0]_position" name="position" style="width: 86px"></td>
	</tr>
	</table>
	</div></td></tr>
				<tr>
				<td colspan="8" class="style12">


					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('editstudent','exams')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('editstudent','exams')" />
				</td>
			</tr>

	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style12">发款信息登记</td>
	</tr>
	<tr><td colspan="8"><div><table width="100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td style="height: 20.1pt; width: 116pt;" class="style12">日期</td>
		<td class="style12" style="width: 60pt">收款金额</td>
		<td class="style12" style="width: 123px">发款学期</td>
		<td class="style12" style="width: 122px">发款方式</td>
		<td class="style12"  style="width: 95px">发款人</td>
		<td class="style12" style="width: 90px">联系电话</td>
		<td class="style50" style="width: 81px">发款金额</td>
		<td class="style11" style="width: 84px">发款日期</td>
		<td class="style11" style="width: 84px">备注</td>
	</tr>
	</table></div></td></tr>
		<tr><td colspan=8>		    <div id="div_transfers">
				<table class="class_transfers" width="100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 116pt;" class="style12">
				<input disabled="disabled" class="studentApply" type="text" id="transfers[0]_transferTime" name="transferTime" style="width: 86px" /></td>
		<td class="style12" style="width: 60pt">
				<input  disabled="disabled" class="studentApply" type="text" id="transfers[0]_amount" name="amount" style="width: 86px" /></td>
		<td class="style12" style="width: 123px">
				<input  disabled="disabled" class="studentApply" type="text" id="transfers[0]_semester" name="semester" style="width: 86px" /></td>
		<td class="style12" style="width: 122px" >
				<input  class="studentApply" type="text" id="transfers[0]_method" name="method" style="width: 86px" /></td>
		<td class="style12" style="width: 95px">
				<input  disabled="disabled" class="studentApply" type="text" id="transfers[0]_transferMan" name="name" style="width: 86px" /></td>
		<td class="style12" style="width: 90px">
				<input  disabled="disabled" class="studentApply" type="text" id="transfers[0]_contactNo" name="contactNo" style="width: 89px" /></td>
		<td class="style12" style="width: 81px">
				<input class="studentApply" type="text" id="transfers[0]_grantAmount" name="grantAmount" style="width: 86px" /></td>
		<td class="style11" style="width: 84px">
				<input class="studentApply" type="text" id="transfers[0]_grantTime" name="grantTime" style="width: 86px" /></td>
		<td class="style11" style="width: 84px">
				<input class="studentApply" type="text" id="transfers[0]_memo" name="memo" style="width: 86px" /></td>

	</tr>
	</table>
	</div></td></tr>


	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" class="style11">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style12">
		通信记录登记</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" class="style12" style="width: 132pt">日期</td>
		<td colspan="4" class="style12">信件内容</td>
		<td colspan="3" class="style12">照片上传</td>
	</tr>
	
			<tr><td colspan=8>	
                <div id="div_communicates">	  
				<table class="class_communicates" style="width: 100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="1 "height="26" class="style11" style="width: 258px">
				<input class="studentApply" type="text" id="communicates[0]_communicateDate" name="communicateDate" style="width: 86px"></td>
		<td colspan="7" style="width: 268434864px" class="style11" >
				<input class="style58" type="text" id="communicates[0]_content" name="content" style="width: 588px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;				<a target=showpic multiple=multiple class="studentPhoto" type="file" id="communicates[0]_picture" name="picture" style="width: 119px">没有图片</a></td>
	</tr>
	</table>
	</div></td></tr>
				<tr>
				<td colspan="8" class="style12">
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('editstudent','communicates')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('editstudent','communicates')" />
				</td>
			</tr>
	
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" class="style11">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style12">
		学生情况评估</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 132pt;" class="style11">时间</td>
		<td class="style11" style="width: 60pt">信息提供人</td>
		<td colspan="6" class="style11">
		家庭情况变化、学生性格、学习情况(交流沟通、性格、学习态度、学习成绩、爱心情况等）</td>
	</tr>
	    <tr>
	    <td colspan=8>				    		
		    <div id="div_evaluates">
				<table class="class_evaluates" width="100%">
	<tr>
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style9">
				<input class="studentApply" type="text" id="evaluates[0]_evaluateDate" name="evaluateDate" style="width: 86px"></td>
		<td class="style16" style="width: 60pt">
				<input class="studentApply" type="text" id="evaluates[0]_provider" name="provider" style="width: 86px"></td>
		<td colspan="6" class="style10">
				<input class="studentApply" type="text" id="evaluates[0]_studentSituation" name="studentSituation" style="width: 468px"></td>
	</tr>
	    </table>
    </div>
    </td>
    </tr>
			<tr>
				<td colspan="8" class="style12">
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('editstudent','evaluates')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('editstudent','evaluates')" />
				</td>
			</tr>

	<tr><td colspan=8>		    
	<div id="div_audits">
				<table class="class_audits" width="100%">	
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style12">
		相关走访资料上传</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td style="height: 20pt; width: 149pt;" class="style11">拍摄时间</td>
		<td class="style11" style="width: 60pt; height: 20pt;">家庭环境照片</td>
		<td class="style11" style="height: 20pt">学生个人独照</td>
		<td class="style11" style="width: 48pt; height: 20pt;">反馈表照片</td>
		<td class="style11" style="height: 20pt">发款签收照片</td>
		<td colspan="3" class="style11" style="height: 20pt">
		其他照片（如病历＼证件＼证明＼信件交流之类）</td>
	</tr>
	<tr><td colspan=8><div id="div_audits[1]_auditphotosa">
				<table class="class_audits[1]_auditphotosa" width="100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 205px;" class="style11">
				<input class="studentPhoto" type="text" id="audits[1]_auditPhotos[0]_photoDate" name="auditPhotos[0]_photoDate" style="width: 86px"></td>
		<td class="style11" style="width: 66pt">
		<a target=showpic class="studentEditPhoto" id="audits[1]_auditPhotos[0]_familyPhoto" name="auditPhotos[0]_familyPhoto" style="width: 80px">没有图片</a></td>
		<td class="style11" style="width: 123px">
		<a target=showpic class="studentEditPhoto" id="audits[1]_auditPhotos[0]_studentEditPhoto" name="auditPhotos[0]_studentEditPhoto" style="width: 80px">没有图片</a>　</td>
		<td class="style11" style="width: 119px" >
		<a target=showpic class="studentEditPhoto" id="audits[1]_auditPhotos[0]_feedbackPhoto" name="auditPhotos[0]_feedbackPhoto" style="width: 80px">没有图片</a>　</td>
		<td class="style11" style="width: 98px">
		<a target=showpic class="studentEditPhoto" id="audits[1]_auditPhotos[0]_recieptphoto" name="auditPhotos[0]_recieptphoto" style="width: 80px">没有图片</a>　</td>
		<td colspan="3" class="style11">
		<a target=showpic class="studentEditPhoto" id="audits[1]_auditPhotos[0]_otherPhoto" name="auditPhotos[0]_otherPhoto" style="width: 80px">没有图片</a>　</td>
	</tr>
	</table>
	</div>
	</td></tr>
	<tr><td colspan=8>		    <div id="div_audits[1]_auditPhotos">
				<table class="class_audits[1]_auditPhotos" width="100%">
	<tr style="mso-height-source:userset;">
		<td style="height: 20pt; width: 205px;" class="style11">		<input type="text" class="studentApply" id="audits[1]_auditPhotos[1]_photoDate" name="auditPhotos[1]_photoDate" style="width: 86px"></td>
		<td class="style11" style="width: 66pt; height: 20pt;">
		<input type="file" class="studentPhoto" id="audits[1]_auditPhotos[1]_familyPhoto" name="auditPhotos[1]_familyPhoto" style="width: 80px"></td>
		<td class="style11" style="width: 123px; height: 20pt;">
		<input type="file" class="studentPhoto" id="audits[1]_auditPhotos[1]_studentPhoto" name="auditPhotos[1]_studentPhoto" style="width: 80px">　</td>
		<td class="style11" style="width: 119px; height: 20pt;" >
		<input type="file" class="studentPhoto" id="audits[1]_auditPhotos[1]_feedbackPhoto" name="auditPhotos[1]_feedbackPhoto" style="width: 80px">　</td>
		<td class="style11" style="width: 98px; height: 20pt;">
		<input type="file" class="studentPhoto" id="audits[1]_auditPhotos[1]_recieptPhoto" name="auditPhotos[1]_recieptPhoto" style="width: 80px">　</td>
		<td colspan="3" class="style11" style="height: 20pt">
		<input  type="file" class="studentPhoto" id="audits[1]_auditPhotos[1]_otherPhoto" name="auditPhotos[1]_otherPhoto" style="width: 80px">　</td>
	</tr>
	</table></div>
	</td></tr>
			<tr>
				<td colspan="8" class="style12">
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="insertauditphotos('editstudent','audits\\[1\\]_auditPhotos')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('editstudent','audits\\[1\\]_auditPhotos')" />
				</td>
			</tr>
	<tr style="mso-height-source:userset;" class="style11">
		<td colspan="8" style="height: 20pt" class="style1">复审评价</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 20pt" class="style11">走访时间</td>
		<td class="style11" colspan="6" style="height: 20pt">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[1]_auditDate" name="auditDate" style="width: 95px" /></span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style11">
		家庭贫困原因</td>
		<td colspan="6" class="style11">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[1]_poorReason" name="poorReason" style="width: 95%" /></span>　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style11">
		对学生个人评价</td>
		<td colspan="6" class="style11">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[1]_studentEvaluation" name="studentEvaluation" style="width: 95%" /></span>　</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 20pt" class="style11">走访结论</td>
		<td colspan="6" class="style11" style="height: 20pt">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[1]_auditResult" name="auditResult" style="width: 95%" /></span>　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style11">是否通过审核</td>
		<td class="style11" style="width: 60pt"><select class="studentApply" id="audits[1]_auditPass" name="auditPass">
		<option selected="" value="true">是</option>
		<option value="false">否</option>
		</select>&nbsp;</td>
		<td class="style11">&nbsp;</td>
		<td class="style11" >审核人</td>
		<td class="style11"><span style="mso-spacerun:yes"><input  class="studentApply" id="audits[1]_auditPerson" name="auditPerson" style="width: 81px" /></span></td>
		<td class="style11">电话</td>
		<td colspan="2" class="style11"><span style="mso-spacerun:yes">
		<input  class="studentApply" id="audits[1]_auditPersonContactNo" name="auditPersonContactNo" style="width: 124px" /></span>&nbsp;</td>
	</tr> 
	</table></div>
	</td>
	</tr>
	<tr>
				<td colspan="8" class="style12">
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="insertaudit('editstudent')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('editstudent','audits')" />
				</td>
			</tr>
	
	</table>