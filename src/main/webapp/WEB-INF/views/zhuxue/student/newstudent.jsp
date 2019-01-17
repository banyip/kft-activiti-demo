<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form enctype="multipart/form-data" method="post" >
<table border="0" cellpadding="0" cellspacing="0" width="898" style="border-collapse:
 collapse;width:674pt">
	<colgroup>
		<col width="118" style="mso-width-source:userset;mso-width-alt:3776;width:89pt">
		<col width="103" span="2" style="mso-width-source:userset;mso-width-alt:3296;
 width:77pt">
		<col width="141" style="mso-width-source:userset;mso-width-alt:4512;width:106pt">
		<col width="133" style="mso-width-source:userset;mso-width-alt:4256;width:100pt">
		<col width="100" style="mso-width-source:userset;mso-width-alt:3200;width:75pt">
		<col width="105" style="mso-width-source:userset;mso-width-alt:3360;width:79pt">
		<col width="95" style="mso-width-source:userset;mso-width-alt:3040;width:71pt">
	</colgroup>
	<tr height="48" style="mso-height-source:userset;height:36.0pt">
		<td colspan="8" height="48" width="898" style="height: 36.0pt; width: 674pt" class="style1">
		学生登记信息明细</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" width="221" style="height: 20.1pt; width: 166pt" class="style2">
		申请人姓名</td>
		<td colspan="2" class="style3">联系电话</td>
		<td colspan="4" class="style3">单位名称</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style3">
			<input class="studentApply" id="student_applicantName" name="applicantName" /></td>
		<td colspan="2" class="style3">
		<input  class=studentApply id=student_applicantContactNum name="applicantContactNum" /></td>
		<td colspan="4" width="433" style="width: 325pt" class="style2">
		<input  class=studentApply id=student_applicantCompany name="applicantCompany" /></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style4">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style5">
		学生信息登记表</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style3">通过审核编号</td>
		<td colspan="2" class="style3">　<input class="studentApply" id="student_auditNo" name="auditNo" /></td>
		<td class="style3">资助状态</td>
		<td colspan="3" class="style3">　<input class="studentApply" id="student_sponseState" name="sponseState" /></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style3">学生姓名</td>
		<td colspan="2" class="style3"><input class="studentApply" id="student_studentName" name="studentName" />　</td>
		<td class="style3">民族</td>
		<td colspan="3" class="style3">
		<input class="studentApply" id="student_nationality" name="nationality" />　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style3">身份证号</td>
		<td colspan="2" class="style3">
		<input class="studentApply" id="student_studentId" name="studentId" />　</td>
		<td class="style3">学生照片</td>
		<td colspan="3" class="style3">
		<input type="file" class="studentPhoto" id="student_picture" name="picture" /></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style3">
		学生个人银行卡号</td>
		<td colspan="2" class="style3">
		<input class="studentApply" id="student_bankCard" name="bankCard" />　</td>
		<td class="style3">开户银行</td>
		<td colspan="3" class="style3">
		<input class="studentApply" id="student_bank" name="bank" />　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" width="221" style="height: 20.1pt; width: 166pt" class="style2">
		学校名称</td>
		<td class="style3">年级</td>
		<td class="style3">班号/专业</td>
		<td class="style3">班主任姓名</td>
		<td colspan="3" class="style3">联系电话</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" width="221" style="height: 20.1pt; width: 166pt" class="style2">
		　<input class="studentApply" id="student_school" name="school" /></td>
		<td class="style3">
		<input class="studentApply" id="student_grade" name="grade" style="width: 79px" /></td>
		<td class="style3">
		<input class="studentApply" id="student_className" name="className" /></td>
		<td class="style3">
		<input class="studentApply" id="student_headTeacher" name="headTeacher" style="width: 92px" />　</td>
		<td colspan="3" class="style3">
		<input class="studentApply" id="student_schoolContactNo" name="schoolContactNo" /></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" width="221" style="height: 20.1pt; width: 166pt" class="style2">
		　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">年龄</td>
		<td class="style3">性别</td>
		<td class="style3">QQ</td>
		<td class="style6">邮箱</td>
		<td class="style6">联系电话</td>
		<td class="style3">开始资助时间</td>
		<td class="style6">结束资助时间</td>
		<td class="style6">结案原因</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">
		<input class="studentApply" id="student_age" name="age" style="width: 78px" /></td>
		<td class="style3">
		<input class="studentApply" id="student_sex" name="sex" style="width: 80px" />　</td>
		<td class="style3">
		<input class="studentApply" id="student_qq" name="qq" style="width: 100px" /></td>
		<td class="style6">
		<input class="studentApply" id="student_email" name="email" /></td>
		<td class="style6">
		<input class="studentApply" id="student_studentContactNo" name="studentContactNo" style="width: 127px" /></td>
		<td class="style3">
		<input class="studentApply" id="student_sponseStartTime" name="sponseStartTime" style="width: 92px" /></td>
		<td class="style6">
		<input class="studentApply" id="student_sponseEndTime" name="sponseEndTime" style="width: 117px" /></td>
		<td class="style6">
		<input class="studentApply" id="student_endReason" name="endReason" style="width: 91px" /></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style3">
		&quot;共同生活&quot;家庭成员情况（如父母、亲兄弟姐妹，爷爷奶奶或外公外婆同住也需要登记在内）</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">关系</td>
		<td class="style3">姓名</td>
		<td class="style3">出生年月日</td>
		<td class="style3">联系电话</td>
		<td class="style3">职业/学校</td>
		<td class="style3">年收入</td>
		<td class="style3">其他收入/补助</td>
		<td class="style3">健康情况</td>
	</tr>
   <tr>
	    <td colspan=8>				    		
		    <div id="div_bjbr">
				<table class="yltable" style="padding:0">
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style9">
		<input class="relative" type="text" id="relatives[0]_relationship" name="relationship" style="width: 112px">　</td>
		<td class="style11">
		<input class="relative" type="text" id="relatives[0]_name" name="name" style="width: 155px"></td>
		<td class="style11" style="width: 133px">
		<input class="relative" type="text" id="relatives[0]_birthDate" name="birthDate">　</td>
		<td class="style7" style="width: 185px">
		<input class="relative" type="text" id="relatives[0]_contactNo" name="contactNo"></td>
		<td class="style11" style="width: 174px">
		<input class="relative" type="text" id="relatives[0]_profectional" name="profectional">　</td>
		<td class="style11">
		<input class="relative" type="number" id="relatives[0]_anualIncome" name="anualIncome" style="width: 126px">　</td>
		<td class="style11" style="width: 88px">
		<input class="relative" type="text" id="relatives[0]_otherSponse" name="otherSponse">　</td>
		<td class="style19">
		<input class="relative" type="text" id="relatives[0]_health" name="health" style="width: 137px">　</td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
			<tr>
				<td colspan="8" class="style18">
                <input class="studentApply" type="hidden"										
				id="relative" />   
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable()" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable()" />
				</td>
			</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td rowspan="11" height="286" width="118" style="height: 221.1pt; width: 89pt; layout-flow: vertical-ideographic;" class="style7">
		家庭经济情况</td>
		<td align="center" width="103" style="width: 77pt; layout-flow: vertical-ideographic;" class="style8">
		主要收入</td>
		<td colspan="6" width="677" style="width: 508pt" class="style9">
		1、农业生产：农田<span style="mso-spacerun:yes"><input  class="studentApply" id="student_farmArea" name="farmArea" style="width: 41px" /></span>亩，种植情况<span style="mso-spacerun:yes"><input  class="studentApply" id="student_farmPlanting" name="farmPlanting" style="width: 422px" />
		</span>，出售收入<span style="mso-spacerun:yes"><input  class="studentApply" id="student_farmPlantingIncome" name="farmPlantingIncome" style="width: 41px" /></span>元/年</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" width="103" style="height: 20.1pt; width: 77pt; layout-flow: vertical-ideographic;" class="style8">
		　</td>
		<td colspan="6" width="677" style="width: 508pt" class="style9">
		&nbsp;</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" width="103" style="height: 20.1pt; width: 77pt; layout-flow: vertical-ideographic;" class="style8">
		　</td>
		<td colspan="6" width="677" style="width: 508pt" class="style9">
		3、打工或经商情况：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span>，收入<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>元/年</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" width="103" style="height: 20.1pt; width: 77pt; layout-flow: vertical-ideographic;" class="style8">
		　</td>
		<td colspan="6" class="style10">4、亲戚资助情况：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span>，收入<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>元/年</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" width="103" style="height: 20.1pt; width: 77pt; layout-flow: vertical-ideographic;" class="style8">
		　</td>
		<td colspan="6" width="677" style="width: 508pt" class="style9">
		5、其他收入来源：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span>，收入<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>元/年</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" width="103" style="height: 20.1pt; width: 77pt; layout-flow: vertical-ideographic;" class="style8">
		　</td>
		<td colspan="6" width="677" style="width: 508pt" class="style9">
		6、是否拥有汽车等大件商品(有的请列出）：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" align="center" width="103" style="height: 20.1pt; width: 77pt; layout-flow: vertical-ideographic;" class="style8">
		主要支出</td>
		<td colspan="6" width="677" style="width: 508pt" class="style9">1、主要支出：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" width="103" style="height: 20.1pt; width: 77pt; layout-flow: vertical-ideographic;" class="style8">
		　</td>
		<td colspan="6" width="677" style="width: 508pt" class="style9">
		2、家人患病情况：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span>，治疗费用每年支出<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>元</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" width="103" style="height: 20.1pt; width: 77pt; layout-flow: vertical-ideographic;" class="style8">
		　</td>
		<td colspan="6" width="677" style="width: 508pt" class="style9">
		病情描述(有的请列出）：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" width="103" style="height: 20.1pt; width: 77pt; layout-flow: vertical-ideographic;" class="style8">
		　</td>
		<td colspan="6" width="677" style="width: 508pt" class="style9">
		3、其它支出情况(有的请列出）：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" width="103" style="height: 20.1pt; width: 77pt; layout-flow: vertical-ideographic;" class="style8">
		　</td>
		<td colspan="6" width="677" style="width: 508pt" class="style9">
		4、欠债情况(有的请列出借贷原因）：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td rowspan="4" height="104" align="center" width="118" style="height: 80.4pt; width: 89pt; layout-flow: vertical-ideographic;" class="style8">
		<span style="mso-spacerun:yes">&nbsp;</span>住房情况<span style="mso-spacerun:yes">&nbsp;</span></td>
		<td colspan="7" width="780" style="width: 585pt" class="style11">1.√ 
		□自有房屋<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>外观整体状况：√ □土坯房<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>□砖瓦结构<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>□混凝土结构<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>□木屋<span style="mso-spacerun:yes">&nbsp; </span>□≥两层<span style="mso-spacerun:yes">&nbsp;</span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="7" height="26" width="780" style="height: 20.1pt; width: 585pt" class="style11">
		<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>房屋内部装修：<span style="mso-spacerun:yes">&nbsp;
		</span>√□简陋<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>□水泥地<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>□贴瓷砖<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>□舒适整洁<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>□高档</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="7" height="26" style="height: 20.1pt;" class="style12">2. 
		□借用房屋<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>来源：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span>。<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;</span></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style13">3. □租用房屋<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>租金：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>元/月<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>房屋内部装修：<span style="mso-spacerun:yes">&nbsp; </span>□简陋<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>□水泥地<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>□贴瓷砖<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>□舒适<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>□高档</td>
		<td class="style13">　</td>
		<td class="style13">　</td>
		<td class="style13">　</td>
		<td class="style13">　</td>
		<td class="style13">　</td>
		<td class="style13">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style14">
		相关走访资料上传</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">拍摄时间</td>
		<td class="style3">家庭环境照片</td>
		<td class="style3">学生个人独照</td>
		<td class="style3">反馈表照片</td>
		<td class="style3">发款签收照片</td>
		<td colspan="3" width="300" style="width: 225pt" class="style2">
		其他照片（如病历＼证件＼证明＼信件交流之类）</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style5">初审评价</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">走访时间</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">家庭贫困原因</td>
		<td colspan="6" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">
		对学生个人评价</td>
		<td colspan="6" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">走访结论</td>
		<td colspan="6" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">是否通过审核</td>
		<td class="style5">是（　）</td>
		<td class="style5">否（　）</td>
		<td class="style15">审核人签名</td>
		<td class="style15">　</td>
		<td class="style15">电话</td>
		<td colspan="2" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">申请评定表</td>
		<td colspan="6" class="style5">照片上传</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">评定表得分</td>
		<td colspan="6" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">补充评价</td>
		<td colspan="6" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">是否通过审核</td>
		<td class="style5">是（　）</td>
		<td class="style5">否（　）</td>
		<td class="style15">审核人签名</td>
		<td class="style15">　</td>
		<td class="style15">电话</td>
		<td colspan="2" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="3" height="26" style="height: 20.1pt" class="style5">
		官网上线发布时间</td>
		<td colspan="5" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style3">考试成绩</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">考试时间</td>
		<td class="style3">语文</td>
		<td class="style3">英语</td>
		<td class="style3">数学</td>
		<td class="style3">化学</td>
		<td class="style3">物理</td>
		<td class="style3">专业科</td>
		<td class="style3">年级排名</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style3">发款信息登记</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">日期</td>
		<td class="style3">金额</td>
		<td class="style3">发款学期</td>
		<td class="style3">发款方式</td>
		<td class="style3">发款人</td>
		<td colspan="3" class="style3">联系电话</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style3">通信记录登记</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">日期</td>
		<td class="style3">信件内容</td>
		<td class="style3">照片上传</td>
		<td class="style3">日期</td>
		<td class="style3">信件内容</td>
		<td colspan="3" class="style3">照片上传</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style3">学生情况评估</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">时间</td>
		<td class="style3">信息提供人</td>
		<td class="style3">家庭情况变化</td>
		<td colspan="5" width="574" style="width: 431pt" class="style2">
		学生性格、学习情况(交流沟通、性格、学习态度、学习成绩、爱心情况等）</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style6">　</td>
		<td class="style6">　</td>
		<td colspan="5" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style6">　</td>
		<td class="style6">　</td>
		<td colspan="5" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">　</td>
		<td class="style15">　</td>
		<td class="style15">　</td>
		<td colspan="5" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">　</td>
		<td class="style15">　</td>
		<td class="style15">　</td>
		<td colspan="5" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">　</td>
		<td class="style15">　</td>
		<td class="style15">　</td>
		<td colspan="5" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style14">
		相关走访资料上传</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">拍摄时间</td>
		<td class="style3">家庭环境照片</td>
		<td class="style3">学生个人独照</td>
		<td class="style3">反馈表照片</td>
		<td class="style3">发款签收照片</td>
		<td colspan="3" width="300" style="width: 225pt" class="style2">
		其他照片（如病历＼证件＼证明＼信件交流之类）</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style5">复查评价1</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">走访时间</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">家庭贫困原因</td>
		<td colspan="6" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">
		对学生个人评价</td>
		<td colspan="6" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">走访结论</td>
		<td colspan="6" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">是否通过审核</td>
		<td class="style5">是（　）</td>
		<td class="style5">否（　）</td>
		<td class="style15">审核人签名</td>
		<td class="style15">　</td>
		<td class="style15">电话</td>
		<td colspan="2" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style14">
		相关走访资料上传</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">拍摄时间</td>
		<td class="style3">家庭环境照片</td>
		<td class="style3">学生个人独照</td>
		<td class="style3">反馈表照片</td>
		<td class="style3">发款签收照片</td>
		<td colspan="3" width="300" style="width: 225pt" class="style2">
		其他照片（如病历＼证件＼证明＼信件交流之类）</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style5">复查评价2</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">走访时间</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">家庭贫困原因</td>
		<td colspan="6" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">
		对学生个人评价</td>
		<td colspan="6" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="2" height="26" style="height: 20.1pt" class="style5">走访结论</td>
		<td colspan="6" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">是否通过审核</td>
		<td class="style5">是（　）</td>
		<td class="style5">否（　）</td>
		<td class="style15">审核人签名</td>
		<td class="style15">　</td>
		<td class="style15">电话</td>
		<td colspan="2" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style4">　</td>
		<td class="style16">　</td>
		<td class="style16">　</td>
		<td class="style4">　</td>
		<td class="style4">　</td>
		<td class="style4">　</td>
		<td class="style4">　</td>
		<td class="style4">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style5">
		资助人信息登记　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">编号</td>
		<td class="style5">姓名</td>
		<td class="style5">官网登记昵称</td>
		<td class="style5">联系电话</td>
		<td class="style5">ＱＱ</td>
		<td colspan="3" class="style5">邮箱</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td colspan="3" class="style5">　</td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td height="24" style="height: 18.0pt;" class="style5">微信号</td>
		<td class="style5">出生日期</td>
		<td class="style5">地址</td>
		<td class="style5">资助期限</td>
		<td class="style5">是否开捐赠收据</td>
		<td class="style5">照片</td>
		<td class="style5">职业</td>
		<td class="style5">政治面貌</td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td height="24" style="height: 18.0pt;" class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">上传</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td height="24" style="height: 18.0pt;" class="style5">起始资助时间</td>
		<td class="style5">　</td>
		<td class="style5">起始资助时间</td>
		<td class="style5">　</td>
		<td class="style5">终止资助原因</td>
		<td colspan="3" class="style5">　</td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td height="24" style="height: 18.0pt;" class="style5">资助汇款时间</td>
		<td class="style5">汇款银行</td>
		<td class="style5">汇款人</td>
		<td class="style15">受助学生编号</td>
		<td class="style15">资助学期</td>
		<td class="style5">金额</td>
		<td colspan="2" class="style5">备注（资助多位学生备注）</td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td height="24" style="height: 18.0pt;" class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style15">　</td>
		<td class="style15">　</td>
		<td colspan="2" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style15">　</td>
		<td class="style15">　</td>
		<td colspan="2" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style15">　</td>
		<td class="style15">　</td>
		<td colspan="2" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style15">　</td>
		<td class="style15">　</td>
		<td colspan="2" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style15">　</td>
		<td class="style15">　</td>
		<td colspan="2" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style15">　</td>
		<td class="style15">　</td>
		<td colspan="2" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style5">　</td>
		<td class="style15">　</td>
		<td class="style15">　</td>
		<td colspan="2" class="style5">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style3">反馈记录登记</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">日期</td>
		<td class="style3">反馈学期</td>
		<td class="style3">照片上传</td>
		<td class="style3">日期</td>
		<td class="style3">反馈学期</td>
		<td colspan="3" class="style3">照片上传</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style3">通信记录登记</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">日期</td>
		<td class="style3">信件内容</td>
		<td class="style3">照片上传</td>
		<td class="style3">日期</td>
		<td class="style3">信件内容</td>
		<td colspan="3" class="style3">照片上传</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td colspan="3" class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style4">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style3">
		根据上面两个表分别录入的数据直接可以汇总出以下一个常用的记录表</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" style="height: 20.1pt" class="style3">
		2018年秋资助登记表</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">学生编号</td>
		<td class="style3">学生姓名</td>
		<td class="style3">学校</td>
		<td class="style3">年级</td>
		<td class="style3">资助人编号</td>
		<td class="style3">资助人</td>
		<td class="style3">邮箱</td>
		<td class="style3">电话</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">1</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">2</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">QQ</td>
		<td class="style3">资助金额</td>
		<td class="style3">汇款通知</td>
		<td width="141" style="width: 106pt" class="style2">运营费</td>
		<td width="133" style="width: 100pt" class="style17">到帐</td>
		<td class="style3">汇款来源</td>
		<td class="style3">财务对帐</td>
		<td class="style3">确认到帐邮件</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">1</td>
		<td width="103" style="width: 77pt" class="style2">　</td>
		<td width="103" style="width: 77pt" class="style17">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">2</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">发放情况</td>
		<td class="style3">反馈</td>
		<td class="style3">第1次催款</td>
		<td class="style3">资助明细</td>
		<td class="style3">收据</td>
		<td class="style3">2019春预付款</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">1</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style3">2</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
		<td class="style3">　</td>
	</tr>
</table>



</form>