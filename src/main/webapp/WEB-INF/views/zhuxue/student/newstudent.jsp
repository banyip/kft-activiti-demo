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
		<td colspan="8" height="48" style="height: 36.0pt; " class="style11">
		学生登记信息明细<input type="hidden" class=studentApply id=student_id name="id" /></td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt; " class="style11">
		申请人姓名</td>
		<td colspan="2" class="style11">联系电话</td>
		<td colspan="4" class="style11">单位名称</td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt" class="style11">
			<input class="studentApply" id="student_applicantName" name="applicantName" />　</td>
		<td colspan="2" class="style11">
		<input  class=studentApply id=student_applicantContactNum name="applicantContactNum" />　</td>
		<td colspan="4" class="style11">
		<input  class=studentApply id=student_applicantCompany name="applicantCompany" />　</td>
    </tr>
 	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" style="height: 20.1pt" class="style11">　</td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" style="height: 20.1pt" class="style11">
		学生信息登记表</td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt" class="style11">通过审核编号</td>
		<td colspan="2" class="style11">
			<input class="studentApply" id="student_auditNo" name="auditNo" />　</td>
		<td class="style11">资助状态</td>
		<td colspan="3" class="style11">
			<input class="studentApply" id="student_sponseState" name="sponseState" />　</td>
    </tr>
    
 	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt" class="style11">学生姓名</td>
		<td colspan="2" class="style11"><input class="studentApply" id="student_studentName" name="studentName" /></td>
		<td class="style11">民族</td>
		<td colspan="3" class="style11">
		<input class="studentApply" id="student_nationality" name="nationality" />　</td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt" class="style11">身份证号</td>
		<td colspan="2" class="style11">
		<input class="studentApply" id="student_studentId" name="studentId" />　</td>
		<td class="style11">学生照片</td>
		<td colspan="3" class="style11">
		<input type="file" class="studentPhoto" id="student_picture" name="picture0" /></td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt" class="style11">
		学生个人银行卡号</td>
		<td colspan="2" class="style11">
		<input class="studentApply" id="student_bankCard" name="bankCard" />　</td>
		<td class="style11">开户银行</td>
		<td colspan="3" class="style11">
		<input class="studentApply" id="student_bank" name="bank" />　</td>
    </tr>   
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt" class="style11">
		备注</td>
		<td colspan="6" class="style11">
		<input class="studentApply" id="student_memo" name="memo" />　</td>
    </tr>       
	<tr><td colspan="8">		    <div >
				<table width="100%">
 	<tr>
		<td colspan="2" class="style11" style="width:40%">学校名称</td>
		<td class="style11" style="width: 15%">年级</td>
		<td class="style11" style="width: 15%">班号/专业</td>
		<td class="style11" style="width: 15%">班主任姓名</td>
		<td colspan="3" class="style11"  style="width: 15%">联系电话</td>
    </tr>
    </table></div></td></tr>    
		<tr><td colspan=8> <div id="div_schools">
				<table class="class_schools" width="100%">
 	<tr >
		<td colspan="2"  class="style11" style="width: 40%">
		<input class="studentApply" id="schools[0]_school" name="school"  style="width: 100%"/></td>
		<td class="style11" style="width: 15%%; height: 15%;">
		<input class="studentApply" id="schools[0]_grade" name="grade" style="width: 95%"  /></td>
		<td class="style11" style="width: 15%; height: 20pt;">
		<input class="studentApply" id="schools[0]_className" name="className" style="width: 95%" />　</td>
		<td class="style11" style="width: 15%; height: 20pt;">
		<input class="studentApply" id="schools[0]_headTeacher" name="headTeacher" style="width: 95%"  />　</td>
		<td colspan="3" class="style11"  style="width:15%; height: 20pt;">
		<input class="studentApply" id="schools[0]_schoolContactNo" name="schoolContactNo" width="95%"/>　</td>
    </tr>
    </table></div></td></tr>
	<tr>
		<td colspan="8" class="style12">	
			<input type="button" name="button"
			value="新 增" style="width:60px; height:24px;"
			onclick="inserttable('newstudent','schools')" />      
			<input
			type="button" name="button" value="删 除"
			style="width:60px; height:24px;" onclick="deletetable('newstudent','schools')" />
		</td>
	</tr>
    
  	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt; " class="style11">
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
	<tr style="mso-height-source:userset;height:20.1pt" class="style11">
		<td style="height: 20.1pt; width: 132pt;" class="style11">
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
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" style="height: 20.1pt" class="style11">
		&quot;共同生活&quot;家庭成员情况（如父母、亲兄弟姐妹，爷爷奶奶或外公外婆同住也需要登记在内）</td>
	</tr>
	<tr>
	<td colspan="8"><div ><table width="100%"><tr>
		<td style="width: 10%" class="style11">关系</td>
		<td class="style11" style="width: 10%">姓名</td>
		<td class="style11" style="width: 10%">出生年月日</td>
		<td class="style11"  style="width: 10%">联系电话</td>
		<td class="style11" style="width: 10%">职业/学校</td>
		<td class="style11" style="width: 10%">年收入</td>
		<td class="style11" style="width: 15%">其他收入/补助</td>
		<td class="style11" style="width: 15%">健康情况</td>
    </tr> 
    </table></div></td>
    <tr>
	    <td colspan=8 class="style9">				    		
		    <div id="div_relatives">
				<table class="class_relatives" width="100%">
					<colgroup>
		<col width="10%" >
		<col width="10%" span="2" >
		<col width="10%" >
		<col width="10%" >
		<col width="10%" >
		<col width="15%" >
		<col width="15%" >
	</colgroup>

	<tr style="mso-height-source:userset;height:20.1pt">
		<td style="height: 20.1pt; width: 101px;" class="style11">
		<input class="studentApply" type="text" id="relatives[0]_relationship" name="relationship" >　</td>
		<td class="style11">
		<input class="studentApply" type="text" id="relatives[0]_name" name="name"></td>
		<td class="style11">
		<input class="studentApply" type="text" id="relatives[0]_birthDate" name="birthDate" >　</td>
		<td class="style11">
		<input class="studentApply" type="text" id="relatives[0]_contactNo" name="contactNo" ></td>
		<td class="style11">
		<input class="studentApply" type="text" id="relatives[0]_profectional" name="profectional" >　</td>
		<td class="style11">
		<input class="studentApply" type="number" id="relatives[0]_anualIncome" name="anualIncome" >　</td>
		<td class="style11">
		<input class="studentApply" type="text" id="relatives[0]_otherSponse" name="otherSponse" >　</td>
		<td class="style11">
		<input class="studentApply" type="text" id="relatives[0]_health" name="health" ></td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
			<tr>
				<td colspan="8" class="style12">


					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('newstudent','relatives')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('newstudent','relatives')" />
				</td>
			</tr>

    
			<tr>
				<td colspan="8" class="style11" width="100%">
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
							<td style="width: 144pt; height: 24px;" class="style11">
							<span lang="EN-US">1.<font class="font6">务农收入</font></span></td>
							<td width="141" style="width: 106pt; height: 24px;" class="style11">
							<span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_farmPlantingIncome" name="farmPlantingIncome" style="width: 87px" /></span></td>
							<td style="width: 76pt; height: 24px;" class="style11">
							<span lang="EN-US"><span style="mso-spacerun:yes">&nbsp;</span><font class="font6">元</font><font class="font5">/</font><font class="font6">年</font></span></td>
							<td class="style11" style="height: 24px">
							收入来源</td>
							<td colspan="2" style="width: 150pt; height: 24px;" class="style11">
							<span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_farmPlanting" name="farmPlanting" style="width: 95%" /></span></td>
						</tr>
						<tr>
							<td style="height: 20.1pt; width: 144pt" class="style11">
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
						<tr>
							<td style="height: 20pt; width: 144pt" class="style11">
							<span lang="EN-US">3.<font class="font6">亲戚资助</font></span></td>
							<td width="141" style="width: 106pt; height: 20pt;" class="style11">
							<span style="mso-spacerun:yes"><input  class="studentApply" id="student_relativeSponseIncome" name="relativeSponseIncome" style="width: 87px" /></span></td>
							<td class="style11" style="height: 20pt">
							元<font>/年</font></td>
							<td class="style11" style="height: 20pt">
							收入来源</td>
							<td colspan="2" class="style11" style="height: 20pt"><span style="mso-spacerun:yes">
							<input  class="studentApply" id="student_relativeSponse" name="relativeSponse" style="width: 95%" /></span></td>
						</tr>
						<tr>
							<td style="height: 20pt; width: 144pt" class="style11">
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
						<tr>
							<td rowspan="4" height="104" width="103" style="height: 80.4pt; width: 77pt" class="style11">
							主要支出</td>
							<td style="width: 144pt" class="style11">
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
							<td style="height: 20pt; width: 144pt" class="style11">
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
							<td style="width: 144pt; height: 23px;" class="style11">
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
						<tr>
							<td style="height: 20.1pt; width: 144pt" class="style11">
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
	<tr style="mso-height-source:userset;height:20.1pt" class="style11">
		<td colspan="7" style="height: 20.1pt; " class="style33">
		<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>房屋内部装修：<span style="mso-spacerun:yes">&nbsp;
		</span>√<input  class="studentApply" id="student_ifSimple" name="ifSimple" type="checkbox" />简陋<span style="mso-spacerun:yes">&nbsp;&nbsp; 
		<input  class="studentApply" id="student_ifConcreteFloor" name="ifConcreteFloor" type="checkbox" /></span>水泥地<span style="mso-spacerun:yes">&nbsp;&nbsp;
		<input  class="studentApply" id="student_ifConcreteTile" name="ifConcreteTile" type="checkbox" /></span>贴瓷砖<span style="mso-spacerun:yes">&nbsp;&nbsp;  
		<input  class="studentApply" id="student_ifNeat" name="ifNeat" type="checkbox" /></span>舒适整洁<span style="mso-spacerun:yes">&nbsp;&nbsp;
		<input  class="studentApply" id="student_ifHighClass" name="ifHighClass" type="checkbox" /></span>高档</td>
	</tr>
	<tr>
		<td colspan="7" class="style11">2. 
		<input id="student_ifBorrowHouse" name="ifBorrowHouse" type="checkbox" />借用房屋&nbsp;&nbsp; 来源：<input id="student_rentFrom" name="rentFrom" />。</td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
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
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" style="height: 20.1pt" class="style12">
		相关走访资料上传</td>
	</tr>
	<tr><td colspan="8"><div><table style="width:100%">
	<tr>
		<td style="width: 8%;" class="style12">拍摄时间</td>
		<td class="style12" style="width: 15%">家庭环境照片</td>
		<td class="style12" style="width: 15%">学生个人独照</td>
		<td class="style12" style="width: 15%">反馈表照片</td>
		<td class="style12" style="width: 15%">发款签收照片</td>
		<td class="style12" style="width:32%">
		其他照片（如病历＼证件＼证明＼信件交流之类）</td>
	</tr>
	</table></div></td></tr>
	<tr><td colspan=8>		    <div id="div_audits[0]_auditPhotos">
				<table class="class_audits[0]_auditPhotos" width="100%">
	<tr style="mso-height-source:userset;height:20.1pt">
		<td style="width: 8%" class="style11">
		<input type="text" class="studentApply" id="audits[0]_auditPhotos[0]_photoDate" name="auditPhotos[0]_photoDate"></td>
		<td class="style12"  style="width: 15%">
		<input type="file" multiple="multiple" class="studentPhoto" id="audits[0]_auditPhotos[0]_familyPhoto" name="auditPhotos[0]_familyPhoto"></td>
		<td class="style12"  style="width: 15%">
		<input type="file" class="studentPhoto" id="audits[0]_auditPhotos[0]_studentPhoto" name="auditPhotos[0]_studentPhoto"></td>
		<td class="style12"  style="width: 15%">
		<input type="file" class="studentPhoto" id="audits[0]_auditPhotos[0]_feedbackPhoto" name="auditPhotos[0]_feedbackPhoto"></td>
		<td class="style12"  style="width: 15%">
		<input type="file" class="studentPhoto" id="audits[0]_auditPhotos[0]_recieptphoto" name="auditPhotos[0]_recieptphoto"></td>
		<td class="style12"  style="width: 32%">
		<input  type="file"  multiple="multiple" class="studentPhoto" id="audits[0]_auditPhotos[0]_otherPhoto" name="auditPhotos[0]_otherPhoto" ></td>
	</tr>
	</table></div>
	</td></tr>	
			<tr>
				<td colspan="8" class="style12">


					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="insertauditPhotos('newstudent','audits\\[0\\]_auditPhotos')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('newstudent','audits\\[0\\]_auditPhotos')" />
				</td>
			</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="8" style="height: 20pt" class="style12">初审评价</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 20pt" class="style11">走访时间</td>
		<td class="style11" colspan="6" style="height: 20pt">　<input  class="studentApply" id="audits[0]_auditDate" name="auditDate" style="width: 95px" /></td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt" class="style11">
		家庭贫困原因</td>
		<td colspan="6" class="style11">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[0]_poorReason" name="poorReason" style="width: 95%" /></span>　</td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt" class="style11">
		对学生个人评价</td>
		<td colspan="6" class="style11">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[0]_studentEvaluation" name="studentEvaluation" style="width: 95%" /></span>　</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 5pt" class="style11">走访结论</td>
		<td colspan="6" class="style11" style="height: 5pt">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[0]_auditResult" name="auditResult" style="width: 95%" /></span>　</td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td style="height: 20.1pt; width: 149pt;" class="style11">是否通过审核</td>
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
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt" class="style11">申请评定表</td>
		<td colspan="6" class="style11">　<input type=file class="studentPhoto" id="audits[0]_applyEvaluationPicture" name="auditPhoto[0]_applyEvaluationPicture" style="width: 303px" /><!--<input type="file" class="studentPhoto" id="audits[0]_applyEvaluationPicture" name="auditPhotos[0]_applyEvaluationPicture" style="width: 303px">--></td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt" class="style11">评定表得分</td>
		<td colspan="6" class="style11">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[0]_evaluateScore" name="evaluateScore" style="width: 124px" /></span></td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt" class="style11">补充评价</td>
		<td colspan="6" class="style11">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[0]_supplemetaryEvaluation" name="supplemetaryEvaluation" style="width: 95%" /></span></td>
	</tr>
	</table>
	</td></tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 20pt" class="style11">资助建议</td>
		<td colspan="2" class="style11" style="height: 20pt">　<span style="mso-spacerun:yes">
		<select class="studentApply" id="student_sponseRecommandation" name="sponseRecommandation" style="width: 150px">
			<option value="long">建议长期资助</option>
			<option value="short">短期困难</option>
			<option value="no">不资助</option>
			</select>
		</span>　</td>
		<td colspan="2" style="height: 20pt" class="style11">资助人</td>
		<td class="style11" >
				<select class="studentApply" id="student_sponserId" name="sponserId">
					<option value="">请选择资助人</option>	
					<c:forEach items="${sponserList }" var="sponser"> 
					<option value="${sponser.id }">${sponser.name }</option> 
					</c:forEach>				
				</select></td> 
		
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="3" style="height: 20.1pt" class="style11">
		官网上线发布时间</td>
		<td colspan="5" class="style11">　<input class="studentApply" id="student_publishTime" name="publishTime"  style="width: 295px" /></td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt" class="style11">
		<td colspan="8" style="height: 20.1pt" class="style12">考试成绩</td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td style="width: 16%" class="style11">考试时间</td>
		<td class="style11" style="width: 12%">语文</td>
		<td class="style11" style="width: 12%" >英语</td>
		<td class="style11" style="width: 12%" >数学</td>
		<td class="style11" style="width: 12%">化学</td>
		<td class="style11" style="width: 12%">物理</td>
		<td class="style11" style="width: 12%">专业科</td>
		<td class="style11" style="width: 12%">年级排名</td>
	</tr>
		<tr><td colspan=8>		    <div id="div_exams">
				<table class="class_exams" width="100%">
	<tr style="mso-height-source:userset;height:20.1pt">
		<td  style="width: 16%" class="style9">
				<input class="studentApply" type="text" id="exams[0]_examTime" name="examTime" style="width: 86px"></td>
		<td class="style11"  style="width: 12%">
				<input class="studentApply" type="text" id="exams[0]_chinese" name="chinese" style="width: 86px"></td>
		<td class="style11" style="width: 12%">
				<input class="studentApply" type="text" id="exams[0]_english" name="english" style="width: 86px"></td>
		<td class="style11" style="width: 12%" >
				<input class="studentApply" type="text" id="exams[0]_math" name="math" style="width: 86px"></td>
		<td class="style11" style="width: 12%">
				<input class="studentApply" type="text" id="exams[0]_chemical" name="chemical" style="width: 86px"></td>
		<td class="style11" style="width: 12%">
				<input class="studentApply" type="text" id="exams[0]_physical" name="physical" style="width: 86px"></td>
		<td class="style11" style="width: 12%">
				<input class="studentApply" type="text" id="exams[0]_profectional" name="profectional" style="width: 86px"></td>
		<td class="style11" style="width: 12%">
				<input class="studentApply" type="text" id="exams[0]_position" name="position" style="width: 86px"></td>
	</tr>
	</table>
	</div></td></tr>
				<tr>
				<td colspan="8" class="style12">


					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('newstudent','exams')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('newstudent','exams')" />
				</td>
			</tr>

	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" class="style11">　</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="8" style="height: 20pt" class="style12">
		学生近况</td>
	</tr>
	<tr>
	<td colspan="8"><div><table style="width: 100%">
	<tr>
		<td class="style12" style="width: 15%">日期</td>
		<td class="style12"  style="width: 35%">近况</td>
		<td class="style12" style="width: 10%">反馈学期</td>	
		<td class="style12" style="width: 25%">照片上传</td>
		<td class="style12" style="width: 15%">发送日期</td>
	</tr>
	</table></div></td></tr>
			<tr><td colspan=8>	
                <div id="div_communicates">	  
				<table class="class_communicates" style="width: 100%">
	<tr>
		<td class="style11"  style="width: 15%">
				<input class="studentApply" type="text" id="communicates[0]_communicateDate" name="communicateDate" style="width: 86px"></td>
		<td style="width: 35%" class="style11" >
				<input class="studentApply" type="text" id="communicates[0]_content" name="content">				
		<td class="style11" style="width: 10%">
				<input  class="studentApply" type="text" id="communicates[0]_semester" name="semester" style="width: 86px" /></td>		<td style="width: 25%" class="style11" >
<input type="file" multiple=multiple class="studentPhoto" id="communicates[0]_picture" name="communicates[0]_picture"></td>
		<td class="style11"  style="width: 15%">
				<input class="studentApply" type="text" id="communicates[0]_sendDate" name="sendDate" style="width: 86px"></td>
	</tr>
	</table>
	</div></td></tr>
				<tr>
				<td colspan="8" class="style12">
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('newstudent','communicates')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('newstudent','communicates')" />
				</td>
			</tr>
	
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" class="style11">　</td>
	</tr>
	<tr >
		<td colspan="8" style="height: 20.1pt" class="style12">
		学生情况评估</td>
	</tr>
	<tr>
	<td colspan="8"><div><table style="width: 100%">
	<tr>
		<td style="width: 15%" class="style11">时间</td>
		<td style="width: 15%" class="style11" >信息提供人</td>
		<td style="width: 70%" class="style11">
		家庭情况变化、学生性格、学习情况(交流沟通、性格、学习态度、学习成绩、爱心情况等）</td>
	</tr>
	</table></div></td></tr>	
	<tr>
	    <td colspan=8>				    		
		    <div id="div_evaluates">
				<table class="class_evaluates" width="100%">
	<tr>
		<td style="width: 15%"  class="style11">
				<input class="studentApply" type="text" id="evaluates[0]_evaluateDate" name="evaluateDate" style="width: 86px"></td>
		<td class="style11" style="width: 15%" >
				<input class="studentApply" type="text" id="evaluates[0]_provider" name="provider" style="width: 86px"></td>
		<td class="style11" style="width: 70%" >
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
					onclick="inserttable('newstudent','evaluates')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('newstudent','evaluates')" />
				</td>
			</tr>

	<tr><td colspan=8>		    
	<div id="div_audits">
				<table class="class_audits" width="100%">	
	<tr>
		<td colspan="8" style="height: 20.1pt" class="style12">
		相关走访资料上传</td>
	</tr>
	<tr><td colspan="8"><div><table style="width:100%">
	<tr>
		<td style="width: 8%;" class="style12">拍摄时间</td>
		<td class="style12" style="width: 15%">家庭环境照片</td>
		<td class="style12" style="width: 15%">学生个人独照</td>
		<td class="style12" style="width: 15%">反馈表照片</td>
		<td class="style12" style="width: 15%">发款签收照片</td>
		<td class="style12" style="width:32%">
		其他照片（如病历＼证件＼证明＼信件交流之类）</td>
	</tr>
	</table></div></td></tr>
<tr><td colspan=8>		    <div id="div_audits[1]_auditPhotos">
				<table class="class_audits[1]_auditPhotos" width="100%">
	<tr style="mso-height-source:userset;height:20.1pt">
		<td style="width: 8%" class="style11">
		<input type="text" class="studentApply" id="audits[1]_auditPhotos[0]_photoDate" name="auditPhotos[0]_photoDate"></td>
		<td class="style12"  style="width: 15%">
		<input type="file" multiple="multiple" class="studentPhoto" id="audits[1]_auditPhotos[0]_familyPhoto" name="auditPhotos[0]_familyPhoto"></td>
		<td class="style12"  style="width: 15%">
		<input type="file" class="studentPhoto" id="audits[1]_auditPhotos[0]_studentPhoto" name="auditPhotos[0]_studentPhoto"></td>
		<td class="style12"  style="width: 15%">
		<input type="file" class="studentPhoto" id="audits[1]_auditPhotos[0]_feedbackPhoto" name="auditPhotos[0]_feedbackPhoto"></td>
		<td class="style12"  style="width: 15%">
		<input type="file" class="studentPhoto" id="audits[1]_auditPhotos[0]_recieptphoto" name="auditPhotos[0]_recieptphoto"></td>
		<td class="style12"  style="width: 32%">
		<input  type="file"  multiple="multiple" class="studentPhoto" id="audits[1]_auditPhotos[0]_otherPhoto" name="auditPhotos[0]_otherPhoto" ></td>
	</tr>
	</table></div>
	</td></tr>			<tr>
				<td colspan="8" class="style12">
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="insertauditPhotos('newstudent','audits\\[1\\]_auditPhotos')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('newstudent','audits\\[1\\]_auditPhotos')" />
				</td>
			</tr>
	<tr style="mso-height-source:userset;" class="style11">
		<td colspan="8" style="height: 20pt" class="style11">复审评价</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 20pt" class="style11">走访时间</td>
		<td class="style11" colspan="6" style="height: 20pt">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[1]_auditDate" name="auditDate" style="width: 95px" /></span></td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt" class="style11">
		家庭贫困原因</td>
		<td colspan="6" class="style11">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[1]_poorReason" name="poorReason" style="width: 95%" /></span>　</td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" style="height: 20.1pt" class="style11">
		对学生个人评价</td>
		<td colspan="6" class="style11">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[1]_studentEvaluation" name="studentEvaluation" style="width: 95%" /></span>　</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 20pt" class="style11">走访结论</td>
		<td colspan="6" class="style11" style="height: 20pt">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audits[1]_auditResult" name="auditResult" style="width: 95%" /></span>　</td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td style="height: 20.1pt; width: 149pt;" class="style11">是否通过审核</td>
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
					onclick="insertaudit('newstudent')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('newstudent','audits')" />
				</td>
			</tr>
	
	</table>