<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form method="post">
<table border="0" cellpadding="0" cellspacing="0" width="731" style="border-collapse:
 collapse;width:550pt">
				<colgroup>
								<col width="76" style="mso-width-source:userset;mso-width-alt:2653;width:57pt" />
								<col width="133" style="mso-width-source:userset;mso-width-alt:4631;width:100pt" />
								<col width="63" style="mso-width-source:userset;mso-width-alt:2210;width:48pt" />
								<col width="115" style="mso-width-source:userset;mso-width-alt:4002;width:86pt" />
								<col width="63" style="mso-width-source:userset;mso-width-alt:2210;width:48pt" />
								<col width="115" style="mso-width-source:userset;mso-width-alt:4002;width:86pt" />
								<col width="71" style="mso-width-source:userset;mso-width-alt:2466;width:53pt" />
								<col width="95" style="mso-width-source:userset;mso-width-alt:3328;width:72pt" />
				</colgroup>
				<tr height="47" style="mso-height-source:userset;height:35.0pt">
								<td colspan="8" height="47" width="731" style="height: 35.0pt; width: 550pt" class="style1">
								好友营支教资助评定表</td>
				</tr>
				<tr height="47" style="mso-height-source:userset;height:35.0pt">
								<td height="47" width="76" style="height: 35.0pt; width: 57pt" class="style2">
								学校</td>
								<td width="133" style="width: 100pt" class="style3">
								
		<input class="toinput" id="leave_School" name=school style="width:95%" disabled="disabled" /></td>
								<td width="63" style="width: 48pt" class="style2">
								姓名</td>
								<td width="115" style="width: 86pt" class="style3">
			<input class="toinput" id="leave_StudentName" name="studentName"  disabled="disabled"/>　</td>
								<td width="63" style="width: 48pt" class="style2">
								班级</td>
								<td width="115" style="width: 86pt" class="style3">
		<input class="toinput" id="leave_Grade" name=grade style="width: 42px"  disabled="disabled"/><input class="toinput" id="leave_ClassName" name=className disabled="disabled" style="width: 42px"/>　</td>
								<td width="71" style="width: 53pt" class="style2">
								申请人</td>
								<td width="95" style="width: 72pt" class="style3">
			<input class="toinput" id="leave_applicantName" name="applicantName"  disabled="disabled" />　</td>
				</tr>
				<tr height="47" style="mso-height-source:userset;height:35.0pt">
								<td height="47" width="76" style="height: 35.0pt; width: 57pt" class="style2">
								项目</td>
								<td colspan="6" width="560" style="width: 421pt" class="style2">
								评分标准</td>
								<td width="95" style="width: 72pt" class="style2">
								得分</td>
				</tr>
				<tr height="64" style="mso-height-source:userset;height:48.0pt">
								<td rowspan="5" height="350" width="76" style="height: 263.0pt; width: 57pt" class="style4">
								经济状况<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;</span></td>
								<td colspan="6" width="560" style="width: 421pt" class="style5">
								1.家庭成员（0-25分）：父母双亡或孤儿（20-25分），单亲或父母其中一方是残疾人或自身残疾（15-20分），父或母一方失联（10-15分），父母其中一方是劳动力弱（0-10分），</td>
								<td width="95" style="width: 72pt" class="style3">
								　<input class="toinput" id="leave_poorEvaluateScore0" name="leave_poorEvaluateScore0" type="number" /></td>
				</tr>
				<tr height="113" style="mso-height-source:userset;height:85.0pt">
								<td colspan="6" height="113" width="560" style="height: 85.0pt; width: 421pt" class="style5">
								2.家庭中直系亲属重病需大量医疗费用的，如癌症、白血病等重大疾病（15-20分）；家庭中直系亲属有需经常住院治疗的（10-15分）；家庭中直系亲属月医疗费用占家庭月收入50%以上（0-10分）<span style="mso-spacerun:yes">&nbsp;
								</span>
								注：重大疾病参照重大疾病保险范围并需出具相应医疗证明；经常住院的需提供上一学年度和评选当学期的住院证明和出院小结（两次以上）以及医疗保险或新农合报销情况；医疗费用需提供门诊缴费单和病历。</td>
								<td width="95" style="width: 72pt" class="style3">
								　<input class="toinput" id="leave_poorEvaluateScore1" name="leave_poorEvaluateScore1" type="number" /></td>
				</tr>
				<tr height="73" style="mso-height-source:userset;height:55.0pt">
								<td colspan="6" height="73" width="560" style="height: 55.0pt; width: 421pt" class="style5">
								3.城镇家庭人均年收入&lt;13000元，农村家庭人均年收入&lt;9000元（10-20分）；城镇家庭人均年收入13000&lt;X&lt;26000，农村家庭人均年收入9000&lt;X&lt;18000(0-10分)<span style="mso-spacerun:yes">&nbsp;
								</span>注：依据各家庭成员的收入总和。<span style="mso-spacerun:yes">&nbsp;</span></td>
								<td width="95" style="width: 72pt" class="style3">
								<input class="toinput" id="leave_poorEvaluateScore2" name="leave_poorEvaluateScore2" type="number" />　</td>
				</tr>
				<tr height="53" style="mso-height-source:userset;height:40.0pt">
								<td colspan="6" height="53" width="560" style="height: 40.0pt; width: 421pt" class="style5">
								4.家中同时有两人（或两人以上）接受非义务制教育，即在读高中或职中大学（5-10分）； 
								家中有兄弟姐妹接受义务教育（0-5分）</td>
								<td width="95" style="width: 72pt" class="style3">
								　<input class="toinput" id="leave_poorEvaluateScore3" name="leave_poorEvaluateScore3" type="number" /></td>
				</tr>
				<tr height="47" style="mso-height-source:userset;height:35.0pt">
								<td colspan="6" height="47" width="560" style="height: 35.0pt; width: 421pt" class="style5">
								5.家庭遭遇国家确定的突发性自然灾害（15-20分）；家庭遭遇突发性变故（0-15分）</td>
								<td width="95" style="width: 72pt" class="style3">
								　<input class="toinput" id="leave_poorEvaluateScore4" name="leave_poorEvaluateScore4" type="number" /></td>
				</tr>
				<tr height="73" style="mso-height-source:userset;height:55.0pt">
								<td height="73" width="76" style="height: 55.0pt; width: 57pt" class="style4">
								节俭程度<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;</span></td>
								<td colspan="6" width="560" style="width: 421pt" class="style5">
								1.家庭支出主要用于基本生活费用，无不实用贵价物品或大型家电，家庭成员衣着朴实，不抽烟、不染指甲、不染发 
								（0-5分）（学生中但凡男生抽烟、女生染指甲、染发，此项不得分）</td>
								<td width="95" style="width: 72pt" class="style3">
								<input class="toinput" id="leave_poorEvaluateScore5" name="leave_poorEvaluateScore5" type="number" />　</td>
				</tr>
				<tr height="73" style="mso-height-source:userset;height:55.0pt">
								<td rowspan="3" height="202" width="76" style="height: 152.0pt; width: 57pt" class="style4">
								加减分项</td>
								<td colspan="6" width="560" style="width: 421pt" class="style5">
								1、家庭遭遇国家确定的突发性自然灾害，如洪灾、旱灾、雪灾、地震和泥石流等导致颗粒无收、房屋受损等重大灾情（5-10分 
								）；家庭遭遇局部地区自然灾害导致农作物欠收（0-5分）。</td>
								<td width="95" style="width: 72pt" class="style3">
								<input class="toinput" id="leave_poorEvaluateScore6" name="leave_poorEvaluateScore6" type="number" />　</td>
				</tr>
				<tr height="53" style="mso-height-source:userset;height:40.0pt">
								<td colspan="6" height="53" width="560" style="height: 40.0pt; width: 421pt" class="style5">
								2.年度获得2000元以下贫困补助的（5-10分），年度获得2000元以上贫困补助的（0-5分）；</td>
								<td width="95" style="width: 72pt" class="style3">
								<input class="toinput" id="leave_poorEvaluateScore7" name="leave_poorEvaluateScore7" type="number" />　</td>
				</tr>
				<tr height="76" style="mso-height-source:userset;height:57.0pt">
								<td colspan="6" height="76" width="560" style="height: 57.0pt; width: 421pt" class="style5">
								3.其他情况说明（0-15分）：</td>
								<td width="95" style="width: 72pt" class="style3">
								<input class="toinput" id="leave_poorEvaluateScore8" name="leave_poorEvaluateScore8" type="number" />　</td>
				</tr>
				<tr height="47" style="mso-height-source:userset;height:35.0pt">
								<td colspan="5" height="47" width="450" style="height: 35.0pt; width: 339pt" class="style6">
								评分高于90分确认资助，70-90分待定，70以下不资助</td>
								<td colspan="2" width="186" style="width: 139pt" class="style6">
								<input type=button onclick="countPoorScore()" value="综合得分合计" /></td>
								<td width="95" style="width: 72pt" class="style3">
								<input class="toinput" id="leave_poorEvaluateTotalScore" name="leave_poorEvaluateTotalScore" type="number"  disabled="disabled" onclick="countPoorScore()"/>　</td>
				</tr>
				<tr height="224" style="mso-height-source:userset;height:168.0pt">
								<td height="224" width="76" style="height: 168.0pt; width: 57pt" class="style7">
								补充</td>
								<td colspan="7" width="655" style="width: 493pt;height: 95%" class="style8">
								<textarea class="toinput" id="leave_poorEvaluateNote" name="leave_poorEvaluateNote" style="height:95%;width:95%" name="TextArea1" cols="20" rows="5"></textarea>　</td>
				</tr>
				<tr height="44" style="mso-height-source:userset;height:33.0pt">
								<td height="44" width="76" style="height: 33.0pt; width: 57pt" class="style2">
								评分人</td>
								<td colspan="2" width="196" style="width: 148pt" class="style9">
								　<input class="toinput" id="leave_poorEvaluatePerson" name="poorEvaluatePerson" /></td>
								<td width="115" style="width: 86pt" class="style2">
								电话</td>
								<td colspan="2" width="178" style="width: 134pt" class="style9">
								<input class="toinput" id="leave_poorEvaluatePersonContact" name="poorEvaluatePersonContact" />　</td>
								<td width="71" style="width: 53pt" class="style2">
								日期</td>
								<td width="95" style="width: 72pt" class="style3">
								<input class="toinput" id="leave_poorEvaluateDate" name="poorEvaluateDate" value= />　</td>
				</tr>
</table>
</form>
