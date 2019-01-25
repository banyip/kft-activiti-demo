<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table border="0" cellpadding="0" cellspacing="0" width="898" style="border-collapse:
 collapse;width:674pt">
	<colgroup>
		<col width="118" style="mso-width-source:userset;mso-width-alt:3776;width:89pt" />
		<col width="103" span="2" style="mso-width-source:userset;mso-width-alt:3296;
 width:77pt" />
		<col width="141" style="mso-width-source:userset;mso-width-alt:4512;width:106pt" />
		<col width="133" style="mso-width-source:userset;mso-width-alt:4256;width:100pt" />
		<col width="100" style="mso-width-source:userset;mso-width-alt:3200;width:75pt" />
		<col width="105" style="mso-width-source:userset;mso-width-alt:3360;width:79pt" />
		<col width="95" style="mso-width-source:userset;mso-width-alt:3040;width:71pt" />
	</colgroup>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" height="26" width="898" style="height: 20.1pt; width: 674pt" class="style1">
		资助人信息登记　</td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td height="26" style="height: 20.1pt;" class="style1">编号</td>
		<td class="style1">姓名</td>
		<td class="style1">官网登记昵称</td>
		<td class="style1">联系电话</td>
		<td class="style1">照片</td>
		<td colspan="3" class="style1">邮箱</td>
	</tr>
		<td height="26" style="height: 20.1pt;" class="style1">
			<input class="sponserApply" id="sponser_sponserNo" name="sponserNo" type="text" style="width: 81px" />
		</td>
		<td class="style1">
			<input class="sponserApply" id="sponser_name" name="name" type="text" style="width: 81px" /></td>
		<td class="style1">
			<input class="sponserApply" id="sponser_nickName" name="nickName" type="text" style="width: 81px" />　</td>
		<td class="style1">
			<input class="sponserApply" id="sponser_contactNo" name="contactNo" type="text" style="width: 95px" />　</td>
		<td class="style1"><input class="sponserPhoto" id="sponser_picture" name="picture" type="file" style="width: 189px" /></td>
		<td colspan="3" class="style1">
			<input class="sponserApply" id="sponser_email" name="email" type="text" style="width: 214px" /></td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td height="24" style="height: 18.0pt;" class="style1">微信号</td>
		<td class="style1">出生日期</td>
		<td class="style1">地址</td>
		<td class="style1">资助期限</td>
		<td class="style1">是否开捐赠收据</td>
		<td class="style1">ＱＱ</td>
		<td class="style1">职业</td>
		<td class="style1">政治面貌</td>
	</tr>
	<tr style="mso-height-source:userset;">
		<td style="height: 18pt;" class="style1">
			<input class="sponserApply" id="sponser_wechat" name="wechat" type="text" style="width: 81px" /></td>
		<td class="style1" style="height: 18pt">
			<input class="sponserApply" id="sponser_birthdate" name="birthdate" type="text" style="width: 81px" /></td>
		<td class="style1" style="height: 18pt">
			<input class="sponserApply" id="sponser_address" name="address" type="text" style="width: 92px" /></td>
		<td class="style1" style="height: 18pt">
			<input class="sponserApply" id="sponser_sponseDeadline" name="sponseDeadline" type="text" style="width: 92px" />　</td>
		<td class="style1" style="height: 18pt">
		
			<select class="sponserApply" id="sponser_needReciept" name="needReciept" style="width: 69px">
			<option value="true">是</option>
			<option value="false">否</option>
			</select>
		</td>
		<td class="style1" style="height: 18pt">
			<input class="sponserApply" id="sponser_qq" name="qq" type="text" style="width: 81px" /></td>
		<td class="style1" style="height: 18pt">
			<input class="sponserApply" id="sponser_profectional" name="profectional" type="text" style="width: 92px" /></td>
		<td class="style1" style="height: 18pt">
			<input class="sponserApply" id="sponser_politicFace" name="politicFace" type="text" style="width: 85px" /></td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td height="24" style="height: 18.0pt;" class="style1">起始资助时间</td>
		<td class="style1">
			<input class="sponserApply" id="sponser_sponseStartTime" name="sponseStartTime" type="text" style="width: 78px" /></td>
		<td class="style1">终止资助时间</td>
		<td class="style1">
			<input class="sponserApply" id="sponser_sponseEndTime" name="sponseEndtime" type="text" style="width: 78px" /></td>
		<td class="style1">终止资助原因</td>
		<td colspan="3" class="style1">
			<input class="sponserApply" id="sponser_sponseEndReason" name="sponseEndReason" type="text" style="width: 254px" /></td>
	</tr>
	<tr><td colspan=8>		    <div>
	<table width="100%">
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td height="24" style="height: 18.0pt; width: 107px;" class="style1">资助汇款时间</td>
		<td class="style1" style="width: 105px">汇款银行</td>
		<td class="style1" style="width: 106px">汇款人</td>
		<td class="style2" style="width: 141px">受助学生编号</td>
		<td class="style2" style="width: 94px">资助学期</td>
		<td class="style1" style="width: 85px">金额</td>
		<td colspan="2" class="style1">备注（资助多位学生备注）</td>
</tr>
	</table>
	</div></td>
	</tr>
	
	<tr><td colspan=8>		    <div id="div_transfers">
				<table class="class_transfers" width="100%">
	<tr style="mso-height-source:userset;">
		<td style="height: 18pt; width: 107px;" class="style1">
			<input class="sponserApply" id="transfers[0]_transferTime" name="transfers[0]_transferTime" type="text" style="width: 78px" />　</td>
		<td class="style1" style="height: 18pt; width: 105px;">
			<input class="sponserApply" id="transfers[0]_transferBank" name="transfers[0]_transferBank" type="text" style="width: 78px" /></td>
		<td class="style1" style="height: 18pt; width: 106px;">
			<input class="sponserApply" id="transfers[0]_transferMan" name="transfers[0]_transferMan" type="text" style="width: 78px" /></td>
		<td class="style1" style="height: 18pt; width: 141px;">
				<select class="sponserApply" id="transfers[0]_studentToSponse" name="transfers[0]_studentToSponse">
					<c:forEach items="${studentList }" var="student"> 
					<option value="${student.id }">&{student.studentName }</option>
					</c:forEach>				
				</select></td>
		<td class="style2" style="height: 18pt; width: 94px;">
			<input class="sponserApply" id="transfers[0]_helpSemester" name="transfers[0]_helpSemester" type="text" style="width: 78px" /></td>
		<td class="style2" style="height: 18pt; width: 85px;">
			<input class="sponserApply" id="transfers[0]_amount" name="transfers[0]_amount" type="text" style="width: 78px" /></td>
		<td colspan="2" class="style1" style="height: 18pt">
			<input class="style3" id="transfers[0]_amount0" name="transfers[0]_amount0" type="text" style="width: 183px" /></td>
	</tr>
	</table>
	</div></td>
	</tr>
				<tr>
				<td colspan="8" class="style9">


					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('newsponser','transfers')" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('newsponser','transfers')" />
				</td>
			</tr>
</table>


