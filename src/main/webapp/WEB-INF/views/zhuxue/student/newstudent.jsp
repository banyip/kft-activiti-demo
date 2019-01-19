<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<table border="0" cellpadding="0" cellspacing="0" width="898" style="border-collapse: collapse; width: 95%">
	<colgroup>
		<col width="83" >
		<col width="72" span="2" >
		<col width="99" >
		<col width="93" >
		<col width="70" >
		<col width="74" >
		<col width="66" >
	</colgroup>
	<tr height="48" style="mso-height-source:userset;height:36.0pt">
		<td colspan="8" height="48" style="height: 36.0pt; " class="style1">
		学生登记信息明细</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt; " class="style2">
		申请人姓名</td>
		<td colspan="2" class="style3">联系电话</td>
		<td colspan="4" class="style3">单位名称</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style4">
			<input class="studentApply" id="student_applicantName" name="applicantName" />　</td>
		<td colspan="2" class="style5">
		<input  class=studentApply id=student_applicantContactNum name="applicantContactNum" />　</td>
		<td colspan="4" class="style6">
		<input  class=studentApply id=student_applicantCompany name="applicantCompany" />　</td>
    </tr>
 	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style7">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style8">
		学生信息登记表</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style9">通过审核编号</td>
		<td colspan="2" class="style10">
			<input class="studentApply" id="student_auditNo" name="auditNo" />　</td>
		<td class="style11">资助状态</td>
		<td colspan="3" class="style10">
			<input class="studentApply" id="student_sponseState" name="sponseState" />　</td>
    </tr>
    
 	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style12">学生姓名</td>
		<td colspan="2" class="style10">　<input class="studentApply" id="student_studentName" name="studentName" /></td>
		<td class="style11">民族</td>
		<td colspan="3" class="style10">
		<input class="studentApply" id="student_nationality" name="nationality" />　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style9">身份证号</td>
		<td colspan="2" class="style11">
		<input class="studentApply" id="student_studentId" name="studentId" />　</td>
		<td class="style11">学生照片</td>
		<td colspan="3" class="style11">
		<input type="file" class="studentPhoto" id="student_picture" name="picture" /></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style12">
		学生个人银行卡号</td>
		<td colspan="2" class="style13">
		<input class="studentApply" id="student_bankCard" name="bankCard" />　</td>
		<td class="style11">开户银行</td>
		<td colspan="3" class="style10">
		<input class="studentApply" id="student_bank" name="bank" />　</td>
    </tr>   
 	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt; " class="style14">
		学校名称</td>
		<td class="style11">年级</td>
		<td class="style11" style="width: 48pt">班号/专业</td>
		<td class="style11">班主任姓名</td>
		<td colspan="3" class="style11">联系电话</td>
    </tr>
 	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt; " class="style14">
		<input class="studentApply" id="student_school" name="school" style="width: 126px" />　</td>
		<td class="style11">
		<input class="studentApply" id="student_grade" name="grade" />　</td>
		<td class="style11" style="width: 48pt">
		<input class="studentApply" id="student_className" name="className" />　</td>
		<td class="style11">
		<input class="studentApply" id="student_headTeacher" name="headTeacher" style="width: 81px" />　</td>
		<td colspan="3" class="style10">
		<input class="studentApply" id="student_schoolContactNo" name="schoolContactNo" style="width: 109px" />　</td>
    </tr>
  	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt; " class="style15">
		　</td>
		<td class="style11">　</td>
		<td class="style11" >　</td>
		<td class="style11">　</td>
		<td colspan="3" class="style11">　</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td style="height: 22pt; width: 149pt;" class="style11">年龄</td>
		<td class="style11" style="height: 22pt">性别</td>
		<td class="style11" style="height: 22pt">QQ</td>
		<td class="style16" style="height: 22pt">邮箱</td>
		<td class="style16" style="height: 22pt">联系电话</td>
		<td class="style11" style="height: 22pt">开始资助时间</td>
		<td class="style16" style="height: 22pt">结束资助时间</td>
		<td class="style17" style="height: 22pt">结案原因</td>
    </tr>     
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style11">
		<input class="studentApply" id="student_age" name="age"  style="width: 50px"/>　</td>
		<td class="style11" style="width: 60pt">
		<input class="studentApply" id="student_sex" name="sex"  style="width: 50px"/>　</td>
		<td class="style11">
		<input class="studentApply" id="student_qq" name="qq"  style="width: 90px" />　</td>
		<td class="style16" >
		<input class="studentApply" id="student_email" name="email"  style="width: 90px"/>　</td>
		<td class="style16">
		<input class="studentApply" id="student_studentContactNo" name="studentContactNo"  style="width: 90px" />　</td>
		<td class="style11">
		<input class="studentApply" id="student_sponseStartTime" name="sponseStartTime"  style="width: 90px" />　</td>
		<td class="style16">
		<input class="studentApply" id="student_sponseEndTime" name="sponseEndTime"  style="width: 90px"/>　</td>
		<td class="style17">
		<input class="studentApply" id="student_endReason" name="endReason"  style="width: 90px"/>　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style9">
		&quot;共同生活&quot;家庭成员情况（如父母、亲兄弟姐妹，爷爷奶奶或外公外婆同住也需要登记在内）</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style9">关系</td>
		<td class="style11">姓名</td>
		<td class="style11">出生年月日</td>
		<td class="style11" >联系电话</td>
		<td class="style11">职业/学校</td>
		<td class="style11">年收入</td>
		<td class="style18">其他收入/补助</td>
		<td class="style19">健康情况</td>
    </tr> 
    <tr>
	    <td colspan=8>				    		
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
		<td height="26" style="height: 20.1pt; width: 101px;" class="style9">
		<input class="relative" type="text" id="relatives[0]_relationship" name="relationship" style="width: 40px">　</td>
		<td class="style11">
		<input class="relative" type="text" id="relatives[0]_name" name="name" style="width: 73px"></td>
		<td class="style11">
		<input class="relative" type="text" id="relatives[0]_birthDate" name="birthDate" style="width: 96px">　</td>
		<td class="style11">
		<input class="relative" type="text" id="relatives[0]_contactNo" name="contactNo" style="width: 112px"></td>
		<td class="style11">
		<input class="relative" type="text" id="relatives[0]_profectional" name="profectional" style="width: 100px">　</td>
		<td class="style11">
		<input class="relative" type="number" id="relatives[0]_anualIncome" name="anualIncome" style="width: 81px">　</td>
		<td class="style11">
		<input class="relative" type="text" id="relatives[0]_otherSponse" name="otherSponse" style="width: 78px">　</td>
		<td class="style19">
		<input class="relative" type="text" id="relatives[0]_health" name="health" style="width: 86px">　</td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
			<tr>
				<td colspan="8" class="style84">
                <input class="studentApply" type="hidden"										
				id="relative" />   
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('relatives')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('relatives')" />
				</td>
			</tr>

    
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td rowspan="11" height="286" style="height: 221.1pt; width: 149pt; layout-flow: vertical-ideographic;" class="style23">
		家庭经济情况</td>
		<td align="center" style="width: 60pt; layout-flow: vertical-ideographic;" class="style24">
		主要收入</td>
		<td colspan="6" class="style25">
		1、农业生产：农田<span style="mso-spacerun:yes"><input  class="studentApply" id="student_farmArea" name="farmArea" style="width: 41px" /></span>亩，种植情况<span style="mso-spacerun:yes"><input  class="studentApply" id="student_farmPlanting" name="farmPlanting" style="width: 422px" />
		</span>，出售收入<span style="mso-spacerun:yes"><input  class="studentApply" id="student_farmPlantingIncome" name="farmPlantingIncome" style="width: 41px" /></span>元/年</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt layout-flow: vertical-ideographic;" class="style26">
		　</td>
		<td colspan="6" class="style27">
		2、禽畜养殖及用途：<span style="mso-spacerun:yes"><input  class="studentApply" id="student_farmAnimalUsage" name="farmAnimalUsage" style="width: 422px" />，</span>出售收入<span style="mso-spacerun:yes"><input  class="studentApply" id="student_farmAnimalIncome" name="farmAnimalIncome0" style="width: 41px" /></span>元/年</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt layout-flow: vertical-ideographic;" class="style26">
		　</td>
		<td colspan="6" class="style27">
		3、打工或经商情况：<span style="mso-spacerun:yes"><input  class="studentApply" id="student_workSituation" name="workSituation" style="width: 422px" /></span>，收入<span style="mso-spacerun:yes">&nbsp;<input  class="studentApply" id="student_workIncome" name="workIncome" style="width: 41px" /></span>元/年</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt layout-flow: vertical-ideographic;" class="style26">
		　</td>
		<td colspan="6" class="style28">4、亲戚资助情况：<span style="mso-spacerun:yes"><input  class="studentApply" id="student_relativeSponse" name="relativeSponse" style="width: 422px" />
		</span>，收入<span style="mso-spacerun:yes"><input  class="studentApply" id="student_relativeSponseIncome" name="relativeSponseIncome" style="width: 41px" /></span>元/年</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt layout-flow: vertical-ideographic;" class="style26">
		　</td>
		<td colspan="6" class="style27">
		5、其他收入来源：<span style="mso-spacerun:yes"><input  class="studentApply" id="student_otherIncomeSource" name="otherIncomeSource" style="width: 422px" />，
		</span>收入<span style="mso-spacerun:yes"><input  class="studentApply" id="student_otherIncome" name="otherIncome" style="width: 41px" /></span>元/年</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt layout-flow: vertical-ideographic;" class="style26">
		　</td>
		<td colspan="6" class="style27">
		6、是否拥有汽车等大件商品(有的请列出）：<span style="mso-spacerun:yes"><input  class="studentApply" id="student_otherAsset" name="otherAsset" style="width: 422px" /></span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" align="center" style="height: 20.1pt layout-flow: vertical-ideographic;" class="style29">
		主要支出</td>
		<td colspan="6" class="style30">1、主要支出：<span style="mso-spacerun:yes"><input  class="studentApply" id="student_mainExpenditure" name="othermainExpenditure" style="width: 422px" /></span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt layout-flow: vertical-ideographic;" class="style26">
		　</td>
		<td colspan="6" class="style27">
		2、家人患病情况：<span style="mso-spacerun:yes"><input  class="studentApply" id="student_familyIllness" name="familyIllness" style="width: 422px" />，</span>治疗费用每年支出<span style="mso-spacerun:yes"><input  class="studentApply" id="student_illnessExpenditure" name="illnessExpenditure" style="width: 41px" /></span>元</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt layout-flow: vertical-ideographic;" class="style26">
		　</td>
		<td colspan="6" class="style27">
		病情描述(有的请列出）：<span style="mso-spacerun:yes"><input  class="studentApply" id="student_familyIllnessDescribe" name="familyIllnessDescribe" style="width: 422px" /></span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt layout-flow: vertical-ideographic;" class="style26">
		　</td>
		<td colspan="6" class="style27">
		3、其它支出情况(有的请列出）：<span style="mso-spacerun:yes"><input  class="studentApply" id="student_otherExpenditure" name="otherExpenditure" style="width: 422px" /></span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt layout-flow: vertical-ideographic;" class="style26">
		　</td>
		<td colspan="6" class="style27">
		4、欠债情况(有的请列出借贷原因）：<span style="mso-spacerun:yes"><input  class="studentApply" id="student_debt" name="debt" style="width: 422px" /></span></td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td rowspan="4" align="center" style="width: 149pt; layout-flow: vertical-ideographic;" class="style31">
		<span style="mso-spacerun:yes">&nbsp;</span>住房情况<span style="mso-spacerun:yes">&nbsp;</span></td>
		<td colspan="7" class="style32">1.√ 
		<input  class="studentApply" id="student_ifSelfHouse" name="ifSelfHouse" type="checkbox" />自有房屋<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>外观整体状况：√ 
		<input  class="studentApply" id="student_ifRaw" name="ifRaw" type="checkbox" />土坯房<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span> 
		<input  class="studentApply" id="student_ifBrick" name="ifBrick" type="checkbox" />砖瓦结构<span style="mso-spacerun:yes">&nbsp;&nbsp;  
		<input  class="studentApply" id="student_ifConcrete" name="ifConcrete" type="checkbox" /></span>混凝土结构<span style="mso-spacerun:yes">&nbsp;&nbsp;
		<input  class="studentApply" id="student_ifWood" name="ifWood" type="checkbox" /></span>木屋<span style="mso-spacerun:yes">&nbsp;   
		<input  class="studentApply" id="student_ifTwoFloor" name="ifTwoFloor" type="checkbox" /></span>≥两层<span style="mso-spacerun:yes">&nbsp;</span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="7" height="26" style="height: 20.1pt; " class="style33">
		<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>房屋内部装修：<span style="mso-spacerun:yes">&nbsp;
		</span>√<input  class="studentApply" id="student_ifSimple" name="ifSimple" type="checkbox" />简陋<span style="mso-spacerun:yes">&nbsp;&nbsp; 
		<input  class="studentApply" id="student_ifConcreteFloor" name="ifConcreteFloor" type="checkbox" /></span>水泥地<span style="mso-spacerun:yes">&nbsp;&nbsp;
		<input  class="studentApply" id="student_ifConcreteTile" name="ifConcreteTile" type="checkbox" /></span>贴瓷砖<span style="mso-spacerun:yes">&nbsp;&nbsp;  
		<input  class="studentApply" id="student_ifNeat" name="ifNeat" type="checkbox" /></span>舒适整洁<span style="mso-spacerun:yes">&nbsp;&nbsp;
		<input  class="studentApply" id="student_ifHighClass" name="ifHighClass" type="checkbox" /></span>高档</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="7" height="26" style="height: 20.1pt" class="style34">2. 
		<input  class="studentApply" id="student_ifBorrowHouse" name="ifBorrowHouse" type="checkbox" />借用房屋<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>来源：<span style="mso-spacerun:yes"><input  class="studentApply" id="student_rentFrom" name="rentFrom" style="width: 422px" /></span>。</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="6" style="height: 20pt; mso-ignore: colspan" class="style35">
		3.  
		<input  class="studentApply" id="student_ifRentHouse" name="ifRentHouse" type="checkbox" />租用房屋<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>租金：<span style="mso-spacerun:yes"><input  class="studentApply" id="student_rentFee" name="rentFee" style="width: 41px" /></span>元/月<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>房屋内部装修：<span style="mso-spacerun:yes">&nbsp;
		<input  class="studentApply" id="student_ifRentSimple" name="ifRentSimple" type="checkbox" /></span>简陋<span style="mso-spacerun:yes">&nbsp;&nbsp; 
		<input  class="studentApply" id="student_ifRentConcreteFloor" name="ifRentConcreteFloor" type="checkbox" /></span>水泥地<span style="mso-spacerun:yes">&nbsp;&nbsp;
		<input  class="studentApply" id="student_ifRentConcreteTile" name="ifRentConcreteTile" type="checkbox" /></span>贴瓷砖<span style="mso-spacerun:yes">&nbsp;&nbsp; 
		<input  class="studentApply" id="student_ifRentComfort" name="ifRentComfort" type="checkbox" /></span>舒适<span style="mso-spacerun:yes">&nbsp;&nbsp;
		<input  class="studentApply" id="student_ifRentHighClass" name="ifRentHighClass" type="checkbox" /></span>高档</td>
		<td class="style36" style="height: 20pt">　</td>
	</tr>
	
	
		<tr><td colspan=8>		    
		<table class="class_audit" width="100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style37">
		相关走访资料上传</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td style="height: 20pt; width: 149pt;" class="style9">拍摄时间</td>
		<td class="style11" style="width: 60pt; height: 20pt;">家庭环境照片</td>
		<td class="style11" style="height: 20pt">学生个人独照</td>
		<td class="style11" style="width: 48pt; height: 20pt;">反馈表照片</td>
		<td class="style11" style="height: 20pt">发款签收照片</td>
		<td colspan="3" class="style38" style="height: 20pt">
		其他照片（如病历＼证件＼证明＼信件交流之类）</td>
	</tr>
	<tr><td colspan=8><div id="div_audit[0]_auditphotos">
				<table class="class_audit[0]_auditphotos" width="100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 205px;" class="style9">
		<input type="text" class="studentApply" id="audit[0]_auditPhoto[0]_photoDate" name="auditPhoto[0]_photoDate" style="width: 80px"></td>
		<td class="style11" style="width: 66pt">
		<input type="file" class="studentPhoto" id="audit[0]_auditPhoto[0]_familyPhoto" name="auditPhoto[0]_familyPhoto" style="width: 80px"></td>
		<td class="style11" style="width: 123px">
		<input type="file" class="studentPhoto" id="audit[0]_auditPhoto[0]_studentPhoto" name="auditPhoto[0]_studentPhoto" style="width: 80px">　</td>
		<td class="style11" style="width: 119px" >
		<input type="file" class="studentPhoto" id="audit[0]_auditPhoto[0]_feedbackPhoto" name="auditPhoto[0]_feedbackPhoto" style="width: 80px">　</td>
		<td class="style11" style="width: 98px">
		<input type="file" class="studentPhoto" id="audit[0]_auditPhoto[0]_recieptphoto" name="auditPhoto[0]_recieptphoto" style="width: 80px">　</td>
		<td colspan="3" class="style11">
		<input  type="file" class="studentPhoto" id="audit[0]_auditPhoto[0]_otherPhoto" name="auditPhoto[0]_otherPhoto" style="width: 80px">　</td>
	</tr>
	</table>
	</td></tr>
			<tr>
				<td colspan="8" class="style1">
                <input class="studentApply" type="hidden"										
				id="relative" />   
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="insertauditphotos('audit\\[0\\]_auditphotos')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('audit[0]_auditphotos')" />
				</td>
			</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="8" style="height: 20pt" class="style39">初审评价</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 20pt" class="style40">走访时间</td>
		<td class="style85" colspan="6" style="height: 20pt">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audit[0]_auditDate" name="auditDate" style="width: 95px" /></span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style40">
		家庭贫困原因</td>
		<td colspan="6" class="style85">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audit[0]_poorReason" name="poorReason" style="width: 422px" /></span>　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style40">
		对学生个人评价</td>
		<td colspan="6" class="style85">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audit[0]_studentEvaluation" name="studentEvaluation" style="width: 422px" /></span>　</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 20pt" class="style40">走访结论</td>
		<td colspan="6" class="style85" style="height: 20pt">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audit[0]_auditResult" name="auditResult" style="width: 422px" /></span>　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style39">是否通过审核</td>
		<td class="style44" style="width: 60pt"><select class="studentApply" id="audit[0]_ifAuditPass" name="ifAuditPass">
		<option selected="" value="true">是</option>
		<option value="false">否</option>
		</select>&nbsp;</td>
		<td class="style44">&nbsp;</td>
		<td class="style45" >审核人</td>
		<td class="style45"><span style="mso-spacerun:yes"><input  class="studentApply" id="audit[0]_auditPerson" name="auditPerson" style="width: 81px" /></span></td>
		<td class="style45">电话</td>
		<td colspan="2" class="style85"><span style="mso-spacerun:yes">
		<input  class="studentApply" id="audit[0]_auditPersonContactNo" name="auditPersonContactNo" style="width: 124px" /></span>&nbsp;</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style40">申请评定表</td>
		<td colspan="6" class="style85">　<input type="file" class="applyEvaluationPicture" id="audit[0]_applyEvaluationPicture" name="auditPhoto[0]_feedbackPhoto0" style="width: 303px">&nbsp;</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style40">评定表得分</td>
		<td colspan="6" class="style41">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audit[0]_evaluateScore" name="evaluateScore" style="width: 124px" /></span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style40">补充评价</td>
		<td colspan="6" class="style41">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audit[0]_supplemetaryEvaluation" name="supplemetaryEvaluation" style="width: 124px" /></span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style39">是否通过审核</td>
		<td class="style44" style="width: 60pt">是（　）</td>
		<td class="style44">否（　）</td>
		<td class="style45" >审核人签名</td>
		<td class="style45">　</td>
		<td class="style45">电话</td>
		<td colspan="2" class="style41">　</td>
	</tr>
	</table></div>
	</td></tr>

	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="3" height="26" style="height: 20.1pt" class="style46">
		官网上线发布时间</td>
		<td colspan="5" class="style47">　<input class="studentApply" id="student_publishTime" name="publishTime"  style="width: 295px" /></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style48">考试成绩</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style9">考试时间</td>
		<td class="style11" style="width: 60pt">语文</td>
		<td class="style11">英语</td>
		<td class="style11" >数学</td>
		<td class="style11">化学</td>
		<td class="style11">物理</td>
		<td class="style11">专业科</td>
		<td class="style19">年级排名</td>
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
		<td class="style19">
				<input class="studentApply" type="text" id="exams[0]_position" name="position" style="width: 86px"></td>
	</tr>
	</table>
	</div></td></tr>
				<tr>
				<td colspan="8" class="style1">
                <input class="studentApply" type="hidden"										
				id="relative" />   
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('exams')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('exams')" />
				</td>
			</tr>

	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style9">发款信息登记</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style49">日期</td>
		<td class="style50" style="width: 60pt">金额</td>
		<td class="style50">发款学期</td>
		<td class="style50" >发款方式</td>
		<td class="style50">发款人</td>
		<td colspan="3" class="style50">联系电话</td>
	</tr>
		<tr><td colspan=8>		    <div id="div_transfers">
				<table class="class_transfers" width="100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style9">
				<input class="studentApply" type="text" id="transfers[0]_transferTime" name="transferTime" style="width: 86px"></td>
		<td class="style11" style="width: 60pt">
				<input class="studentApply" type="text" id="transfers[0]_amount" name="amount" style="width: 86px"></td>
		<td class="style11">
				<input class="studentApply" type="text" id="transfers[0]_semester" name="semester" style="width: 86px"></td>
		<td class="style11" >
				<input class="studentApply" type="text" id="transfers[0]_method" name="semester0" style="width: 86px"></td>
		<td class="style11">
				<input class="studentApply" type="text" id="transfers[0]_transferMan" name="transferMan" style="width: 86px"></td>
		<td colspan="3" class="style11">
				<input class="studentApply" type="text" id="transfers[0]_contactNo" name="contactNo" style="width: 86px"></td>
	</tr>
	</table>
	</div></td></tr>
	
				<tr>
				<td colspan="8" class="style1">
                <input class="studentApply" type="hidden"										
				id="relative" />   
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('transfers')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('transfers')" />
				</td>
			</tr>

	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style51">　</td>
		<td class="style52" style="width: 60pt">　</td>
		<td class="style52">　</td>
		<td class="style52" >　</td>
		<td class="style52">　</td>
		<td colspan="3" class="style52">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style49">
		通信记录登记</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" class="style49">日期</td>
		<td colspan="4" class="style50">信件内容</td>
		<td colspan="3" class="style53">照片上传</td>
	</tr>
	
			<tr><td colspan=8>		    <div id="div_communicates">
				<table class="class_communicates" width="100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2 "height="26" class="style9" style="width: 198px">
				<input class="studentApply" type="text" id="communicates[0]_communicateDate" name="communicateDate" style="width: 86px"></td>
		<td colspan="3" class="style11" style="width: 268435376px" >
				<input class="studentApply" type="text" id="communicates[0]_content" name="content" style="width: 187px"></td>
		<td class="style11" colspan="3">
				<input class="studentPhoto" type="file" id="communicates[0]_picture" name="picture" style="width: 119px"></td>
	</tr>
	</table>
	</div></td></tr>
				<tr>
				<td colspan="8" class="style1">
                <input class="studentApply" type="hidden"										
				id="relative" />   
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('communicates')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('communicates')" />
				</td>
			</tr>
	
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style54">　</td>
		<td class="style55" style="width: 60pt">　</td>
		<td class="style55">　</td>
		<td class="style55" >　</td>
		<td class="style55">　</td>
		<td colspan="3" class="style56">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style49">
		学生情况评估</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style9">时间</td>
		<td class="style11" style="width: 60pt">信息提供人</td>
		<td class="style11">家庭情况变化</td>
		<td colspan="5" class="style57">
		学生性格、学习情况(交流沟通、性格、学习态度、学习成绩、爱心情况等）</td>
	</tr>
	    <tr>
	    <td colspan=8>				    		
		    <div id="div_evaluates">
				<table class="class_evaluates" width="100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style9">
				<input class="studentApply" type="text" id="evaluates[0]_evaluateDate" name="evaluateDate" style="width: 86px"></td>
		<td class="style16" style="width: 60pt">
				<input class="studentApply" type="text" id="evaluates[0]_provider" name="provider" style="width: 86px"></td>
		<td class="style16">
				<input class="studentApply" type="text" id="evaluates[0]_familyChange" name="familyChange" style="width: 121px"></td>
		<td colspan="5" class="style10">
				<input class="studentApply" type="text" id="evaluates[0]_studentSituation" name="studentSituation" style="width: 468px"></td>
	</tr>
	    </table>
    </div>
    </td>
    </tr>
			<tr>
				<td colspan="8" class="style1">
                <input class="studentApply" type="hidden"										
				id="relative" />   
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('evaluates')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('evaluates')" />
				</td>
			</tr>

	<tr><td colspan=8>		    
	<div id="div_audit">
				<table class="class_audit" width="100%">	
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style37">
		相关走访资料上传</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td style="height: 20pt; width: 149pt;" class="style9">拍摄时间</td>
		<td class="style11" style="width: 60pt; height: 20pt;">家庭环境照片</td>
		<td class="style11" style="height: 20pt">学生个人独照</td>
		<td class="style11" style="width: 48pt; height: 20pt;">反馈表照片</td>
		<td class="style11" style="height: 20pt">发款签收照片</td>
		<td colspan="3" class="style38" style="height: 20pt">
		其他照片（如病历＼证件＼证明＼信件交流之类）</td>
	</tr>
	<tr><td colspan=8>		    <div id="div_audit[1]_auditphotos">
				<table class="class_audit[1]_auditphotos" width="100%">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 205px;" class="style9">		<input type="text" class="studentApply" id="audit[0]_auditPhoto[0]_photoDate" name="auditPhoto[0]_photoDate" style="width: 80px"></td>
		<td class="style11" style="width: 66pt">
		<input type="file" class="studentPhoto" id="audit[1]_auditPhoto[0]_familyPhoto" name="auditPhoto[0]_familyPhoto" style="width: 80px"></td>
		<td class="style11" style="width: 123px">
		<input type="file" class="studentPhoto" id="audit[1]_auditPhoto[0]_studentPhoto" name="auditPhoto[0]_studentPhoto" style="width: 80px">　</td>
		<td class="style11" style="width: 119px" >
		<input type="file" class="studentPhoto" id="audit[1]_auditPhoto[0]_feedbackPhoto" name="auditPhoto[0]_feedbackPhoto" style="width: 80px">　</td>
		<td class="style11" style="width: 98px">
		<input type="file" class="studentPhoto" id="audit[1]_auditPhoto[0]_recieptphoto" name="auditPhoto[0]_recieptphoto" style="width: 80px">　</td>
		<td colspan="3" class="style11">
		<input  type="file" class="studentPhoto" id="audit[1]_auditPhoto[0]_otherPhoto" name="auditPhoto[0]_otherPhoto" style="width: 80px">　</td>
	</tr>
	</table></div>
	</td></tr>
			<tr>
				<td colspan="8" class="style1">
                <input class="studentApply" type="hidden"										
				id="relative" />   
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="insertauditphotos('audit\\[1\\]_auditphotos')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('auditphotos')" />
				</td>
			</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="8" style="height: 20pt" class="style39">初审评价</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 20pt" class="style40">走访时间</td>
		<td class="style85" colspan="6" style="height: 20pt">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audit[1]_auditDate" name="auditDate" style="width: 95px" /></span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style40">
		家庭贫困原因</td>
		<td colspan="6" class="style85">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audit[1]_poorReason" name="poorReason" style="width: 422px" /></span>　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style40">
		对学生个人评价</td>
		<td colspan="6" class="style85">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audit[1]_studentEvaluation" name="studentEvaluation" style="width: 422px" /></span>　</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="2" style="height: 20pt" class="style40">走访结论</td>
		<td colspan="6" class="style85" style="height: 20pt">　<span style="mso-spacerun:yes"><input  class="studentApply" id="audit[1]_auditResult" name="auditResult" style="width: 422px" /></span>　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt; width: 149pt;" class="style39">是否通过审核</td>
		<td class="style44" style="width: 60pt"><select class="studentApply" id="audit[1]_ifAuditPass" name="ifAuditPass">
		<option selected="" value="true">是</option>
		<option value="false">否</option>
		</select>&nbsp;</td>
		<td class="style44">&nbsp;</td>
		<td class="style45" >审核人</td>
		<td class="style45"><span style="mso-spacerun:yes"><input  class="studentApply" id="audit[1]_auditPerson" name="auditPerson" style="width: 81px" /></span></td>
		<td class="style45">电话</td>
		<td colspan="2" class="style85"><span style="mso-spacerun:yes">
		<input  class="studentApply" id="audit[1]_auditPersonContactNo" name="auditPersonContactNo" style="width: 124px" /></span>&nbsp;</td>
	</tr>
	</table></div>
	</td>
	</tr>
				<tr>
				<td colspan="8" class="style1">
                <input class="studentApply" type="hidden"										
				id="relative" />   
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="insertaudit()" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('audit')" />
				</td>
			</tr>
	
	</table>




