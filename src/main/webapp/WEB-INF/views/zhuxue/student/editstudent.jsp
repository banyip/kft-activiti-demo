<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<table border="0" cellpadding="0" cellspacing="0" width="898">
	<colgroup>
		<col width="83" >
		<col span="1" >
		<col width="72" span="1" >
		<col width="99" >
		<col width="93" >
		<col width="70" >
		<col width="74" >
		<col width="66" >
	</colgroup>
	<tr height="48">
		<td colspan="8" height="48">
		学生登记信息明细<input type="hidden" id=student_id name="id" /></td>
	</tr>
	<tr height="26">
		<td colspan="2" height="26">
		申请人姓名</td>
		<td colspan="2">联系电话</td>
		<td colspan="4">单位名称</td>
	</tr>
	<tr height="26">
		<td colspan="2" height="26">
			<input id="student_applicantName" name="applicantName" />　</td>
		<td colspan="2">
		<input id=student_applicantContactNum name="applicantContactNum" />　</td>
		<td colspan="4">
		<input id=student_applicantCompany name="applicantCompany" />　</td>
    </tr>
 	<tr height="26">
		<td colspan="8" height="26">　</td>
	</tr>
	<tr height="26">
		<td colspan="8" height="26">
		学生信息登记表</td>
	</tr>
	<tr height="26">
		<td colspan="2" height="26">通过审核编号</td>
		<td colspan="2">
			<input id="student_auditNo" name="auditNo" />　</td>
		<td>资助状态</td>
		<td colspan="3">
			<input id="student_sponseState" name="sponseState" />　</td>
    </tr>
    
 	<tr height="26">
		<td colspan="2" height="26">学生姓名</td>
		<td colspan="2"><input id="student_studentName" name="studentName" /></td>
		<td>民族</td>
		<td colspan="3">
		<input id="student_nationality" name="nationality" />　</td>
	</tr>
	<tr height="26">
		<td colspan="2" height="26">身份证号</td>
		<td colspan="2">
		<input id="student_studentId" name="studentId" />　</td>
		<td>学生照片</td>
		<td colspan="3">
		<a id="student_picture" target=showpic name="picture" >没有照片</a></td>
	</tr>
	<tr height="26">
		<td colspan="2" height="26">
		学生个人银行卡号</td>
		<td colspan="2">
		<input id="student_bankCard" name="bankCard" />　</td>
		<td>开户银行</td>
		<td colspan="3">
		<input id="student_bank" name="bank" />　</td>
    </tr>   
	<tr><td colspan=8>		    <div >
				<table width="100%">
 	<tr height="26">
		<td colspan="2">学校名称</td>
		<td>年级</td>
		<td>班号/专业</td>
		<td>班主任姓名</td>
		<td colspan="3">联系电话</td>
    </tr>
    </table></div></td></tr>    
		<tr><td colspan=8> <div id="div_schools">
				<table width="100%">
 	<tr>
		<td colspan="2">
		<input id="schools[0]_school" name="school" /></td>
		<td>
		<input id="schools[0]_grade" name="grade"  /></td>
		<td>
		<input id="schools[0]_className" name="className" />　</td>
		<td>
		<input id="schools[0]_headTeacher" name="headTeacher"  />　</td>
		<td colspan="3">
		<input id="schools[0]_schoolContactNo" name="schoolContactNo" width="100%"/>　</td>
    </tr>
    </table></div></td></tr>
	<tr>
		<td colspan="8">	
			<input type="button" name="button"
			value="新 增"
			onclick="inserttable('editstudent','schools')" />      
			<input
			type="button" name="button" value="删 除" onclick="deletetable('editstudent','schools')" />
		</td>
	</tr>
    
  	<tr height="26">
		<td colspan="2" height="26">
		　</td>
		<td>　</td>
		<td >　</td>
		<td>　</td>
		<td colspan="3">　</td>
	</tr>
	<tr>
		<td>出生日期</td>
		<td>性别</td>
		<td>QQ</td>
		<td>邮箱</td>
		<td>联系电话</td>
		<td>开始资助时间</td>
		<td>结束资助时间</td>
		<td>结案原因</td>
    </tr>     
	<tr height="26">
		<td height="26">
		<input id="student_age" name="age"/>　</td>
		<td>
		<input id="student_sex" name="sex"/>　</td>
		<td>
		<input id="student_qq" name="qq" />　</td>
		<td >
		<input id="student_email" name="email"/>　</td>
		<td>
		<input id="student_studentContactNo" name="studentContactNo" />　</td>
		<td>
		<input id="student_sponseStartTime" name="sponseStartTime" />　</td>
		<td>
		<input id="student_sponseEndTime" name="sponseEndTime"/>　</td>
		<td>
		<input id="student_endReason" name="endReason"/>　</td>
	</tr>
	<tr height="26">
		<td colspan="8" height="26">
		&quot;共同生活&quot;家庭成员情况（如父母、亲兄弟姐妹，爷爷奶奶或外公外婆同住也需要登记在内）</td>
	</tr>
	<tr height="26">
		<td height="26">关系</td>
		<td>姓名</td>
		<td>出生年月日</td>
		<td >联系电话</td>
		<td>职业/学校</td>
		<td>年收入</td>
		<td>其他收入/补助</td>
		<td>健康情况</td>
    </tr> 
    <tr>
	    <td colspan=8>				    		
		    <div id="div_relatives">
				<table width="100%">
					<colgroup>
		<col width="83" >
		<col width="72" span="2" >
		<col width="99" >
		<col width="93" >
		<col width="70" >
		<col width="74" >
		<col width="66" >
	</colgroup>

	<tr height="26">
		<td height="26">
		<input type="text" id="relatives[0]_relationship" name="relationship">　</td>
		<td>
		<input type="text" id="relatives[0]_name" name="name"></td>
		<td>
		<input type="text" id="relatives[0]_birthDate" name="birthDate">　</td>
		<td>
		<input type="text" id="relatives[0]_contactNo" name="contactNo"></td>
		<td>
		<input type="text" id="relatives[0]_profectional" name="profectional">　</td>
		<td>
		<input type="number" id="relatives[0]_anualIncome" name="anualIncome">　</td>
		<td>
		<input type="text" id="relatives[0]_otherSponse" name="otherSponse">　</td>
		<td>
		<input type="text" id="relatives[0]_health" name="health">　</td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
			<tr>
				<td colspan="8">


					<input type="button" name="button"
					value="新 增"
					onclick="inserttable('editstudent','relatives')" />      
					<input
					type="button" name="button" value="删 除" onclick="deletetable('editstudent','relatives')" />
				</td>
			</tr>

    
			<tr>
				<td colspan="8" width="100%">
					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<colgroup>
							<col width="118"><col span="1">
							<col width="103" span="1">
							<col><col><col width="100">
							<col width="105"><col width="95">
						</colgroup>
						<tr>
							<td rowspan="8" height="208" width="118">
							家庭经济情况</td>
							<td rowspan="4" width="103">
							主要收入</td>
							<td>
							<span lang="EN-US">1.<font>务农收入</font></span></td>
							<td width="141">
							<input id="student_farmPlantingIncome" name="farmPlantingIncome" /></td>
							<td>
							<span lang="EN-US">&nbsp;<font>元/年</font></span></td>
							<td>
							收入来源</td>
							<td colspan="2">
							<input id="student_farmPlanting" name="farmPlanting"  /></td>
						</tr>
						<tr height="26">
							<td height="26">
							<span lang="EN-US">2.打工/经营收入</span></td>
							<td width="141">
							<input id="student_workIncome" name="workIncome" /></td>
							<td>
							元<font>/年</font></td>
							<td>
							收入来源（职业）</td>
							<td colspan="2">
							<input id="student_workSituation" name="workSituation" /></td>
						</tr>
						<tr height="26">
							<td height="26">
							<span lang="EN-US">3.<font>亲戚资助</font></span></td>
							<td width="141">
							<input id="student_relativeSponseIncome" name="relativeSponseIncome" /></td>
							<td>
							元<font>/年</font></td>
							<td>
							收入来源</td>
							<td colspan="2">
							<input id="student_relativeSponse" name="relativeSponse" /></td>
						</tr>
						<tr height="26">
							<td>
							<span lang="EN-US">4.政策性补助</span></td>
							<td width="141">
							<span lang="EN-US">
							<input id="student_otherIncome" name="otherIncome" />　</span></td>
							<td>
							元<font>/年</font></td>
							<td>
							收入来源</td>
							<td colspan="2">
							<input id="student_otherIncomeSource" name="otherIncomeSource" /></td>
						</tr>
						<tr height="26">
							<td rowspan="4" height="104" width="103">
							主要支出</td>
							<td>
							<span lang="EN-US">1.<font>医疗支出</font></span></td>
							<td width="141">
							<input id="student_illnessExpenditure" name="illnessExpenditure" /></td>
							<td>
							元/年</td>
							<td>
							支出原因</td>
							<td colspan="2">
							<input id="student_familyIllnessDescribe" name="familyIllnessDescribe" /></td>
						</tr>
						<tr>
							<td>
							<span lang="EN-US">2.学习支出</span></td>
							<td width="141">
							<input id="student_studyExpenditure" name="studyExpenditure" /></td>
							<td>
							元/年</td>
							<td>
							支出原因</td>
							<td colspan="2">
							<input id="student_studyDescribe" name="studyDescribe" /></td>
						</tr>
						<tr>
							<td>
							<span lang="EN-US">3.生活支出</span></td>
							<td width="141">
							<input id="student_liveExpenditure" name="liveExpenditure" /></td>
							<td>
							元/年</td>
							<td>
							支出原因</td>
							<td colspan="2">
							<input id="student_liveDescribe" name="liveDescribe" /></td>
						</tr>
						<tr height="26">
							<td height="26">
							<span lang="EN-US">4.债务情况</span></td>
							<td width="141">
							<input id="student_debt" name="debt" /></td>
							<td>
							元</td>
							<td>
							支出原因</td>
							<td colspan="2">
							<input id="student_debtDescribe" name="debtDescribe" /></td>
						</tr>
					</table>
				</td>
			</tr>

    
	<tr height="26">
		<td rowspan="11" height="286">
		家庭经济情况</td>
		<td align="center">
		主要收入</td>
		<td colspan="6">
		1、农业生产：农田<input id="student_farmArea" name="farmArea" />亩，种植情况 ，出售收入元/年</td>
	</tr>
	<tr height="26">
		<td height="26">
		　</td>
		<td colspan="6">
		2、禽畜养殖及用途：<input id="student_farmAnimalUsage" name="farmAnimalUsage" />，出售收入<input id="student_farmAnimalIncome" name="farmAnimalIncome0" />元/年</td>
	</tr>
	<tr height="26">
		<td height="26">
		　</td>
		<td colspan="6">
		3、打工或经商情况：，收入&nbsp;元/年</td>
	</tr>
	<tr height="26">
		<td height="26">
		　</td>
		<td colspan="6">4、亲戚资助情况： ，收入元/年</td>
	</tr>
	<tr height="26">
		<td height="26">
		　</td>
		<td colspan="6">
		5、其他收入来源：，
		收入元/年</td>
	</tr>
	<tr height="26">
		<td height="26">
		　</td>
		<td colspan="6">
		6、是否拥有汽车等大件商品(有的请列出）：<input id="student_otherAsset" name="otherAsset" /></td>
	</tr>
	<tr height="26">
		<td height="26" align="center">
		主要支出</td>
		<td colspan="6">1、主要支出：<input id="student_mainExpenditure" name="othermainExpenditure" /></td>
	</tr>
	<tr height="26">
		<td height="26">
		　</td>
		<td colspan="6">
		2、家人患病情况：，治疗费用每年支出元</td>
	</tr>
	<tr height="26">
		<td height="26">
		　</td>
		<td colspan="6">
		病情描述(有的请列出）：</td>
	</tr>
	<tr>
		<td>
		　</td>
		<td colspan="6">
		3、其它支出情况(有的请列出）：<input id="student_otherExpenditure" name="otherExpenditure" /></td>
	</tr>
	<tr height="26">
		<td height="26">
		　</td>
		<td colspan="6">
		4、欠债情况(有的请列出借贷原因）：</td>
	</tr>
	<tr>
		<td rowspan="4" align="center">
		&nbsp;住房情况&nbsp;</td>
		<td colspan="7">1.√ 
		<input id="student_ifSelfHouse" name="ifSelfHouse" type="checkbox" />自有房屋&nbsp;&nbsp; 外观整体状况：√ 
		<input id="student_ifRaw" name="ifRaw" type="checkbox" />土坯房&nbsp;&nbsp;
		<input id="student_ifBrick" name="ifBrick" type="checkbox" />砖瓦结构&nbsp;&nbsp;  
		<input id="student_ifConcrete" name="ifConcrete" type="checkbox" />混凝土结构&nbsp;&nbsp;
		<input id="student_ifWood" name="ifWood" type="checkbox" />木屋&nbsp;   
		<input id="student_ifTwoFloor" name="ifTwoFloor" type="checkbox" />≥两层&nbsp;</td>
	</tr>
	<tr height="26">
		<td colspan="7" height="26">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 房屋内部装修：&nbsp;
		√<input id="student_ifSimple" name="ifSimple" type="checkbox" />简陋&nbsp;&nbsp; 
		<input id="student_ifConcreteFloor" name="ifConcreteFloor" type="checkbox" />水泥地&nbsp;&nbsp;
		<input id="student_ifConcreteTile" name="ifConcreteTile" type="checkbox" />贴瓷砖&nbsp;&nbsp;  
		<input id="student_ifNeat" name="ifNeat" type="checkbox" />舒适整洁&nbsp;&nbsp;
		<input id="student_ifHighClass" name="ifHighClass" type="checkbox" />高档</td>
	</tr>
	<tr height="26">
		<td colspan="7" height="26">2. 
		<input id="student_ifBorrowHouse" name="ifBorrowHouse" type="checkbox" />借用房屋&nbsp;&nbsp; 来源：<input id="student_rentFrom" name="rentFrom" />。</td>
	</tr>
	<tr height="26">
		<td colspan="6">
		3.  
		<input id="student_ifRentHouse" name="ifRentHouse" type="checkbox" />租用房屋&nbsp;&nbsp; 租金：<input id="student_rentFee" name="rentFee" />元/月&nbsp;&nbsp; 房屋内部装修：&nbsp;
		<input id="student_ifRentSimple" name="ifRentSimple" type="checkbox" />简陋&nbsp;&nbsp; 
		<input id="student_ifRentConcreteFloor" name="ifRentConcreteFloor" type="checkbox" />水泥地&nbsp;&nbsp;
		<input id="student_ifRentConcreteTile" name="ifRentConcreteTile" type="checkbox" />贴瓷砖&nbsp;&nbsp; 
		<input id="student_ifRentComfort" name="ifRentComfort" type="checkbox" />舒适&nbsp;&nbsp;
		<input id="student_ifRentHighClass" name="ifRentHighClass" type="checkbox" />高档</td>
		<td>　</td>
	</tr>
	
	
		<tr><td colspan=8>
		<table width="100%">
	<tr height="26">
		<td colspan="8" height="26">
		相关走访资料上传</td>
	</tr>
	<tr>
		<td>拍摄时间</td>
		<td>家庭环境照片</td>
		<td>学生个人独照</td>
		<td>反馈表照片</td>
		<td>发款签收照片</td>
		<td colspan="3">
		其他照片（如病历＼证件＼证明＼信件交流之类）</td>
	</tr>
	
	<tr><td colspan=8><div id="div_audits[0]_auditphotosa">
				<table width="100%">
	<tr height="26">
		<td height="26">
				<input type="text" id="audits[0]_auditphotos[0]_photoDate" name="auditPhotos[0]_photoDate"></td>
		<td>
		<a target=showpic id="audits[0]_auditphotos[0]_familyPhoto" name="auditPhotos[0]_familyPhoto">没有图片</a></td>
		<td>
		<a target=showpic id="audits[0]_auditphotos[0]_studentEditPhoto" name="auditPhotos[0]_studentEditPhoto">没有图片</a>　</td>
		<td >
		<a target=showpic id="audits[0]_auditphotos[0]_feedbackPhoto" name="auditPhotos[0]_feedbackPhoto">没有图片</a>　</td>
		<td>
		<a target=showpic id="audits[0]_auditphotos[0]_recieptphoto" name="auditPhotos[0]_recieptphoto">没有图片</a>　</td>
		<td colspan="3">
		<a target=showpic id="audits[0]_auditphotos[0]_otherPhoto" name="auditPhotos[0]_otherPhoto">没有图片</a>　</td>
	</tr>
	</table>
	</div>
	</td></tr>
<tr><td colspan=8>		    <div id="div_audits[0]_auditPhotos">
				<table width="100%">
	<tr height="26">
		<td height="26">		
		<input type="text" id="audits[0]_auditPhotos[1]_photoDate" name="auditPhotos[1]_photoDate"></td>
		<td>
		<input type="file" multiple="multiple" id="audits[0]_auditPhotos[1]_familyPhoto" name="auditPhotos[1]_familyPhoto"></td>
		<td>
		<input type="file" id="audits[0]_auditPhotos[1]_studentPhoto" name="auditPhotos[1]_studentPhoto">　</td>
		<td >
		<input type="file" id="audits[0]_auditPhotos[1]_feedbackPhoto" name="auditPhotos[1]_feedbackPhoto">　</td>
		<td>
		<input type="file" id="audits[0]_auditPhotos[1]_recieptphoto" name="auditPhotos[1]_recieptphoto">　</td>
		<td colspan="3">
		<input  type="file"  multiple="multiple" id="audits[0]_auditPhotos[1]_otherPhoto" name="auditPhotos[1]_otherPhoto">　</td>
	</tr>
	</table></div>
	</td></tr>	
			<tr>
				<td colspan="8">


					<input type="button" name="button"
					value="新 增"
					onclick="insertauditphotos('editstudent','audits\\[0\\]_auditPhotos')" />      
					<input
					type="button" name="button" value="删 除" onclick="deletetable('editstudent','audits\\[0\\]_auditPhotos')" />
				</td>
			</tr>
	<tr>
		<td colspan="8">初审评价</td>
	</tr>
	<tr>
		<td colspan="2">走访时间</td>
		<td colspan="6">　<input id="audits[0]_auditDate" name="auditDate" /></td>
	</tr>
	<tr height="26">
		<td colspan="2" height="26">
		家庭贫困原因</td>
		<td colspan="6">　<input id="audits[0]_poorReason" name="poorReason" />　</td>
	</tr>
	<tr height="26">
		<td colspan="2" height="26">
		对学生个人评价</td>
		<td colspan="6">　<input id="audits[0]_studentEvaluation" name="studentEvaluation" />　</td>
	</tr>
	<tr>
		<td colspan="2">走访结论</td>
		<td colspan="6">　<input id="audits[0]_auditResult" name="auditResult" />　</td>
	</tr>
	<tr height="26">
		<td height="26">是否通过审核</td>
		<td><select id="audits[0]_auditPass" name="auditPass">
		<option selected="" value="true">是</option>
		<option value="false">否</option>
		</select>&nbsp;</td>
		<td>&nbsp;</td>
		<td >审核人</td>
		<td><input id="audits[0]_auditPerson" name="auditPerson" /></td>
		<td>电话</td>
		<td colspan="2">&nbsp;<input id="audits[0]_auditPersonContactNo" name="auditPersonContactNo" /></td>
	</tr>
	<tr height="26">
		<td colspan="2" height="26">申请评定表</td>
		<td colspan="6">　<a target=showpic id="audits[0]_applyEvaluationPicture" name="auditPhotos[0]_applyEvaluationPicture">没有照片</a><!--<input type="file" class="studentPhoto" id="audits[0]_applyEvaluationPicture" name="auditPhotos[0]_applyEvaluationPicture" style="width: 303px">--></td>
	</tr>
	<tr height="26">
		<td colspan="2" height="26">评定表得分</td>
		<td colspan="6">　<input id="audits[0]_evaluateScore" name="evaluateScore" /></td>
	</tr>
	<tr height="26">
		<td colspan="2" height="26">补充评价</td>
		<td colspan="6">　<input id="audits[0]_supplemetaryEvaluation" name="supplemetaryEvaluation" /></td>
	</tr>
	</table></div>
	</td></tr>
	<tr>
		<td colspan="2">资助建议</td>
		<td colspan="6">　
		<select id="student_sponseRecommandation" name="sponseRecommandation">
			<option value="long">建议长期资助</option>
			<option value="short">短期困难</option>
			<option value="no">不资助</option>
			</select>
		　</td>
	</tr>
	<tr height="26">
		<td colspan="3" height="26">
		官网上线发布时间</td>
		<td colspan="5">　<input id="student_publishTime" name="publishTime" /></td>
	</tr>
	<tr height="26">
		<td colspan="8" height="26">考试成绩</td>
	</tr>
	<tr height="26">
		<td height="26">考试时间</td>
		<td>语文</td>
		<td>英语</td>
		<td >数学</td>
		<td>化学</td>
		<td>物理</td>
		<td>专业科</td>
		<td>年级排名</td>
	</tr>
		<tr><td colspan=8>		    <div id="div_exams">
				<table width="100%">
	<tr height="26">
		<td height="26">
				<input type="text" id="exams[0]_examTime" name="examTime"></td>
		<td>
				<input type="text" id="exams[0]_chinese" name="chinese"></td>
		<td>
				<input type="text" id="exams[0]_english" name="english"></td>
		<td >
				<input type="text" id="exams[0]_math" name="math"></td>
		<td>
				<input type="text" id="exams[0]_chemical" name="chemical"></td>
		<td>
				<input type="text" id="exams[0]_physical" name="physical"></td>
		<td>
				<input type="text" id="exams[0]_profectional" name="profectional"></td>
		<td>
				<input type="text" id="exams[0]_position" name="position"></td>
	</tr>
	</table>
	</div></td></tr>
				<tr>
				<td colspan="8">


					<input type="button" name="button"
					value="新 增"
					onclick="inserttable('editstudent','exams')" />      
					<input
					type="button" name="button" value="删 除" onclick="deletetable('editstudent','exams')" />
				</td>
			</tr>

	<tr height="26">
		<td colspan="8" height="26">发款信息登记</td>
	</tr>
	<tr><td colspan="8"><div><table width="100%">
	<tr height="26">
		<td>日期</td>
		<td>收款金额</td>
		<td>发款学期</td>
		<td>发款方式</td>
		<td>发款人</td>
		<td>联系电话</td>
		<td>发款金额</td>
		<td>发款日期</td>
		<td>备注</td>
	</tr>
	</table></div></td></tr>
		<tr><td colspan=8>		    <div id="div_transfers">
				<table width="100%">
	<tr height="26">
		<td height="26">
				<input disabled="disabled" type="text" id="transfers[0]_transferTime" name="transferTime" /></td>
		<td>
				<input  disabled="disabled" type="text" id="transfers[0]_amount" name="amount" /></td>
		<td>
				<input  disabled="disabled" type="text" id="transfers[0]_semester" name="semester" /></td>
		<td >
				<input type="text" id="transfers[0]_method" name="method" /></td>
		<td>
				<input  disabled="disabled" type="text" id="transfers[0]_transferMan" name="name" /></td>
		<td>
				<input  disabled="disabled" type="text" id="transfers[0]_contactNo" name="contactNo" /></td>
		<td>
				<input type="text" id="transfers[0]_grantAmount" name="grantAmount" /></td>
		<td>
				<input type="text" id="transfers[0]_grantTime" name="grantTime" /></td>
		<td>
				<input type="text" id="transfers[0]_memo" name="memo" /></td>

	</tr>
	</table>
	</div></td></tr>


	<tr height="26">
		<td height="26">　</td>
		<td>　</td>
		<td>　</td>
		<td >　</td>
		<td>　</td>
		<td colspan="3">　</td>
	</tr>
	<tr height="26">
		<td colspan="8" height="26">
		通信记录登记</td>
	</tr>
	<tr height="26">
		<td height="26">日期</td>
		<td colspan="4">信件内容</td>
		<td colspan="3">照片上传</td>
	</tr>
	
			<tr><td colspan=8>	
                <div id="div_communicates">	  
				<table>
	<tr height="26">
		<td colspan="1 "height="26">
				<input type="text" id="communicates[0]_communicateDate" name="communicateDate"></td>
		<td colspan="7" >
				<input type="text" id="communicates[0]_content" name="content">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;				
				<a target=showpic multiple=multiple type="file" id="communicates[0]_picture" name="picture">没有图片</a></td>
	</tr>
	</table>
	</div></td></tr>
				<tr>
				<td colspan="8">
					<input type="button" name="button"
					value="新 增"
					onclick="inserttable('editstudent','communicates')" />      
					<input
					type="button" name="button" value="删 除" onclick="deletetable('editstudent','communicates')" />
				</td>
			</tr>
	
	<tr height="26">
		<td height="26">　</td>
		<td>　</td>
		<td>　</td>
		<td >　</td>
		<td>　</td>
		<td colspan="3">　</td>
	</tr>
	<tr height="26">
		<td colspan="8" height="26">
		学生情况评估</td>
	</tr>
	<tr height="26">
		<td height="26">时间</td>
		<td>信息提供人</td>
		<td colspan="6">
		家庭情况变化、学生性格、学习情况(交流沟通、性格、学习态度、学习成绩、爱心情况等）</td>
	</tr>
	    <tr>
	    <td colspan=8>				    		
		    <div id="div_evaluates">
				<table width="100%">
	<tr height="26">
		<td height="26">
				<input type="text" id="evaluates[0]_evaluateDate" name="evaluateDate"></td>
		<td>
				<input type="text" id="evaluates[0]_provider" name="provider"></td>
		<td colspan="6">
				<input type="text" id="evaluates[0]_studentSituation" name="studentSituation"></td>
	</tr>
	    </table>
    </div>
    </td>
    </tr>
			<tr>
				<td colspan="8">
					<input type="button" name="button"
					value="新 增"
					onclick="inserttable('editstudent','evaluates')" />      
					<input
					type="button" name="button" value="删 除" onclick="deletetable('editstudent','evaluates')" />
				</td>
			</tr>

	<tr><td colspan=8>		    
	<div id="div_audits">
				<table width="100%">	
	<tr height="26">
		<td colspan="8" height="26">
		相关走访资料上传</td>
	</tr>
	<tr>
		<td>拍摄时间</td>
		<td>家庭环境照片</td>
		<td>学生个人独照</td>
		<td>反馈表照片</td>
		<td>发款签收照片</td>
		<td colspan="3">
		其他照片（如病历＼证件＼证明＼信件交流之类）</td>
	</tr>
	<tr><td colspan=8><div id="div_audits[1]_auditphotosa">
				<table width="100%">
	<tr height="26">
		<td height="26">
				<input type="text" id="audits[1]_auditPhotos[0]_photoDate" name="auditPhotos[0]_photoDate"></td>
		<td>
		<a target=showpic id="audits[1]_auditPhotos[0]_familyPhoto" name="auditPhotos[0]_familyPhoto">没有图片</a></td>
		<td>
		<a target=showpic id="audits[1]_auditPhotos[0]_studentEditPhoto" name="auditPhotos[0]_studentEditPhoto">没有图片</a>　</td>
		<td >
		<a target=showpic id="audits[1]_auditPhotos[0]_feedbackPhoto" name="auditPhotos[0]_feedbackPhoto">没有图片</a>　</td>
		<td>
		<a target=showpic id="audits[1]_auditPhotos[0]_recieptphoto" name="auditPhotos[0]_recieptphoto">没有图片</a>　</td>
		<td colspan="3">
		<a target=showpic id="audits[1]_auditPhotos[0]_otherPhoto" name="auditPhotos[0]_otherPhoto">没有图片</a>　</td>
	</tr>
	</table>
	</div>
	</td></tr>
	<tr><td colspan=8>		    <div id="div_audits[1]_auditPhotos">
				<table width="100%">
	<tr>
		<td>		
		<input type="text" id="audits[1]_auditPhotos[1]_photoDate" name="auditPhotos[1]_photoDate"></td>
		<td>
		<input type="file" id="audits[1]_auditPhotos[1]_familyPhoto" name="auditPhotos[1]_familyPhoto"></td>
		<td>
		<input type="file" id="audits[1]_auditPhotos[1]_studentPhoto" name="auditPhotos[1]_studentPhoto">　</td>
		<td >
		<input type="file" id="audits[1]_auditPhotos[1]_feedbackPhoto" name="auditPhotos[1]_feedbackPhoto">　</td>
		<td>
		<input type="file" id="audits[1]_auditPhotos[1]_recieptPhoto" name="auditPhotos[1]_recieptPhoto">　</td>
		<td colspan="3">
		<input  type="file" id="audits[1]_auditPhotos[1]_otherPhoto" name="auditPhotos[1]_otherPhoto">　</td>
	</tr>
	</table></div>
	</td></tr>
			<tr>
				<td colspan="8">
					<input type="button" name="button"
					value="新 增"
					onclick="insertauditphotos('editstudent','audits\\[1\\]_auditPhotos')" />      
					<input
					type="button" name="button" value="删 除" onclick="deletetable('editstudent','audits\\[1\\]_auditPhotos')" />
				</td>
			</tr>
	<tr>
		<td colspan="8">复审评价</td>
	</tr>
	<tr>
		<td colspan="2">走访时间</td>
		<td colspan="6">　<input id="audits[1]_auditDate" name="auditDate" /></td>
	</tr>
	<tr height="26">
		<td colspan="2" height="26">
		家庭贫困原因</td>
		<td colspan="6">　<input id="audits[1]_poorReason" name="poorReason" />　</td>
	</tr>
	<tr height="26">
		<td colspan="2" height="26">
		对学生个人评价</td>
		<td colspan="6">　<input id="audits[1]_studentEvaluation" name="studentEvaluation" />　</td>
	</tr>
	<tr>
		<td colspan="2">走访结论</td>
		<td colspan="6">　<input id="audits[1]_auditResult" name="auditResult" />　</td>
	</tr>
	<tr height="26">
		<td height="26">是否通过审核</td>
		<td><select id="audits[1]_auditPass" name="auditPass">
		<option selected="" value="true">是</option>
		<option value="false">否</option>
		</select>&nbsp;</td>
		<td>&nbsp;</td>
		<td >审核人</td>
		<td><input id="audits[1]_auditPerson" name="auditPerson" /></td>
		<td>电话</td>
		<td colspan="2">
		<input id="audits[1]_auditPersonContactNo" name="auditPersonContactNo" />&nbsp;</td>
	</tr> 
	</table></div>
	</td>
	</tr>
	<tr>
				<td colspan="8">
					<input type="button" name="button"
					value="新 增"
					onclick="insertaudit('editstudent')" />      
					<input
					type="button" name="button" value="删 除" onclick="deletetable('editstudent','audits')" />
				</td>
			</tr>
	
	</table>
