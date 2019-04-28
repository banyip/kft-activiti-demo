<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<head>
<style type="text/css">
input:not([type="checkbox"]) {
	width:95%
	
}
.style11 {
	color: #2F2B20;
	font-size: 11.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: middle;
    white-space: nowrap;
    border-left: .5pt solid windowtext;
	border-right: 1.5pt solid windowtext;
	border-top: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	border: .5pt solid windowtext;
	padding: 0px;
}

</style>

</head>

    
    
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
	<tr style="mso-height-source:userset;height:20.1pt">
		<td colspan="8" width="898" style="height: 20.1pt; width: 674pt" class="style1">
		资助人信息登记　</td>
	</tr>
	<tr style="mso-height-source:userset;height:20.1pt">
		<td style="height: 20.1pt;" class="style1">编号</td>
		<td class="style1">姓名</td>
		<td class="style1">官网登记昵称</td>
		<td class="style1">联系电话</td>
		<td class="style1">照片</td>
		<td colspan="3" class="style1">邮箱</td>
	</tr>
		<td style="height: 20.1pt;" class="style1">
			<input class="sponserApply" id="sponserNo" name="sponserNo" type="text" style="width: 81px" />
		</td>
		<td class="style1">
			<input class="sponserApply" id="name" name="name" type="text" style="width: 81px" /></td>
		<td class="style1">
			<input class="sponserApply" id="nickName" name="nickName" type="text" style="width: 81px" />　</td>
		<td class="style1">
			<input class="sponserApply" id="contactNo" name="contactNo" type="text" style="width: 95px" />　</td>
		<td class="style1"><input type="file" multiple=multiple class="sponserPhoto" id="picture" name="picture" style="width: 189px"></td>
		<td colspan="3" class="style1">
			<input class="sponserApply" id="email" name="email" type="text" style="width: 214px" /></td>
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
			<input class="sponserApply" id="wechat" name="wechat" type="text" style="width: 81px" /></td>
		<td class="style1" style="height: 18pt">
			<input class="sponserApply" id="birthdate" name="birthdate" type="text" style="width: 81px" /></td>
		<td class="style1" style="height: 18pt">
			<input class="sponserApply" id="address" name="address" type="text" style="width: 92px" /></td>
		<td class="style1" style="height: 18pt">
			<input class="sponserApply" id="sponseDeadline" name="sponseDeadline" type="text" style="width: 92px" />　</td>
		<td class="style1" style="height: 18pt">
		
			<select class="sponserApply" id="needReciept" name="needReciept" style="width: 69px; height: 22px;">			
			<option value="否">否</option>
			<option value="是、拍">是、拍</option>
			<option value="是、寄">是、寄</option>
			</select>
		</td>
		<td class="style1" style="height: 18pt">
			<input class="sponserApply" id="qq" name="qq" type="text" style="width: 81px" /></td>
		<td class="style1" style="height: 18pt">
			<input class="sponserApply" id="profectional" name="profectional" type="text" style="width: 92px" /></td>
		<td class="style1" style="height: 18pt">
			<input class="sponserApply" id="politicFace" name="politicFace" type="text" style="width: 85px" /></td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td height="24" style="height: 18.0pt;" class="style1">起始资助时间</td>
		<td class="style1">
			<input class="sponserApply" id="sponseStartTime" name="sponseStartTime" type="text" style="width: 78px" /></td>
		<td class="style1">终止资助时间</td>
		<td class="style1">
			<input class="sponserApply" id="sponseEndTime" name="sponseEndTime" type="text" style="width: 78px" /></td>
		<td class="style1">终止资助原因</td>
		<td colspan="3" class="style1">
			<input class="sponserApply" id="sponseEndReason" name="sponseEndReason" type="text" style="width: 254px" /></td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td colspan="1" height="24" style="height: 18.0pt;" class="style1">资助学生</td>
		<td colspan="3" class="style1">
			<input disabled="disabled" class="sponserApply" id="studentNosToSponse" name="studentNosToSponse" type="text" style="width: 95%" /></td>
		<td colspan="1" height="24" style="height: 18.0pt;" class="style1">单位</td>
		<td colspan="3" class="style1">
			<input class="sponserApply" id="company" name="company" type="text" style="width: 95%" /></td>
	</tr>
	
	<tr><td colspan=8>		    <div>
	<table width="100%">
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td height="24" style="height: 18.0pt; width: 9%;" class="style11">资助汇款时间</td>
		<td class="style11" style="width: 8%">汇款银行</td>
		<td class="style11" style="width: 8%">汇款人</td>
		<td class="style11" style="width: 8%">财务核对</td>
		<td class="style11" style="width: 8%">受助学生</td>
		<td class="style11" style="width: 8%">资助学期</td>
		<td class="style11" style="width: 8%">金额</td>
		<td class="style11" style="width: 8%">汇款通知</td>
		<td class="style11" style="width: 9%">发送确认邮件</td>
		<td class="style11" style="width: 8%">运营费用</td>
		<td class="style11" style="width: 18%">备注（资助多位学生备注）</td>
</tr>
	</table>
	</div></td>
	</tr>
	
	<tr><td colspan=8>		    <div id="div_transfers">
				<table class="class_transfers" width="100%">
	<tr style="mso-height-source:userset;">
		<td style="height: 18pt; width: 8%;" class="style11">
			<input class="sponserApply" id="transfers[0]_transferTime" name="transfers[0]_transferTime" type="text" />　</td>
		<td class="style11" style="width: 8%; height: 18pt;">
			<input class="sponserApply" id="transfers[0]_transferBank" name="transfers[0]_transferBank" type="text" /></td>
		<td class="style11" style="width: 8%; height: 18pt;">
			<input class="sponserApply" id="transfers[0]_transferMan" name="transfers[0]_transferMan" type="text" /></td>
		<td class="style11" style="width: 8%; height: 18pt;">
			<input class="sponserApply" id="transfers[0]_accountCheck" name="transfers[0]_accountCheck" type="text" /></td>
		<td class="style11" style="width: 8%; height: 18pt;">
			<input class="sponserApply" id="transfers[0]_studentId" name="transfers[0]_studentId" / ></td>
		<td class="style11" style="width: 8%; height: 18pt;">
			<input class="sponserApply" id="transfers[0]_semester" name="transfers[0]_semester" type="text" /></td>
		<td class="style11" style="width: 8%; height: 18pt;">
			<input class="sponserApply" id="transfers[0]_amount" name="transfers[0]_amount" type="text" /></td>
		<td class="style11" style="width: 8%; height: 18pt;">
			<input class="sponserApply" id="transfers[0]_notify" name="transfers[0]_notify" type="text" /></td>
		<td class="style11" style="width: 8%; height: 18pt;">
			<input class="sponserApply" id="transfers[0]_sendEmail" name="transfers[0]_sendEmail" type="text"/></td>
		<td class="style11" style="width: 8%; height: 18pt;">
			<input class="sponserApply" id="transfers[0]_operatingFee" name="transfers[0]_operatingFee" type="text"/></td>
		<td class="style11" style="width: 18%; height: 18pt;">
			<input class="sponserApply" id="transfers[0]_memo" name="transfers[0]_memo" type="text"/></td>
	</tr>
	</table>
	</div></td>
	</tr>
				<tr>
				<td colspan="8" class="style9">


					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable('newsponser','transfers')" /> &nbsp;&nbsp;&nbsp;&nbsp; 
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable('newsponser','transfers')" />
				</td>
			</tr>
	<tr style="mso-height-source:userset;">
		<td colspan="8" style="height: 20pt" class="style12">
		学生近况</td>
	</tr>
	<tr>
	<td colspan="8"><div><table style="width: 100%">
	<tr>
		<td class="style12" style="width: 15%">日期</td>
		<td class="style12"  style="width: 45%">近况</td>
		<td class="style12" style="width: 25%">照片上传</td>
		<td class="style12" style="width: 15%">发送日期</td>
	</tr>
			<tr><td colspan=8>	
 <div id="div_communicates">	  
				<table class="class_communicates" style="width: 100%">
	<tr>
		<td class="style11"  style="width: 15%">
				<input disabled="disabled" class="studentApply" type="text" id="communicates[0]_communicateDate" name="communicateDate" style="width: 86px"></td>
		<td style="width: 45%" class="style11" >
				<input disabled="disabled" class="studentApply" type="text" id="communicates[0]_content" name="content">				
		<td style="width: 25%" class="style11" >
<a target=showpic multiple=multiple class="studentPhoto" type="file" id="communicates[0]_picture" name="picture" style="width: 119px">没有图片</a></td>
		<td class="style11"  style="width: 15%">
				<input disabled="disabled" class="studentApply" type="text" id="communicates[0]_sendDate" name="sendDate" style="width: 86px"></td>
	</tr>
	</table></div></td></tr>
				
</table>


