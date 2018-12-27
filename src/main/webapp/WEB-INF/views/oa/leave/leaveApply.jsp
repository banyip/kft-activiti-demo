<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
	<%@ include file="/common/global.jsp"%>
	<title>请假申请</title>
	<%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <%@ include file="/common/include-jquery-ui-theme.jsp" %>
    <link href="${ctx }/js/common/plugins/jui/extends/timepicker/jquery-ui-timepicker-addon.css" type="text/css" rel="stylesheet" />

    <script src="${ctx }/js/common/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/jquery-ui-${themeVersion }.min.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/extends/timepicker/jquery-ui-timepicker-addon.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/jui/extends/i18n/jquery-ui-date_time-picker-zh-CN.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(function() {
    	$('#startTime,#endTime').datetimepicker({
            stepMinute: 5
        });
    });
    </script>
</head>

<body>
	<div class="container showgrid">
	<c:if test="${not empty message}">
		<div id="message" class="alert alert-success">${message}</div>
		<!-- 自动隐藏提示信息 -->
		<script type="text/javascript">
		setTimeout(function() {
			$('#message').hide('slow');
		}, 5000);
		</script>
	</c:if>
	<c:if test="${not empty error}">
		<div id="error" class="alert alert-error">${error}</div>
		<!-- 自动隐藏提示信息 -->
		<script type="text/javascript">
		setTimeout(function() {
			$('#error').hide('slow');
		}, 5000);
		</script>
	</c:if>
	<form:form id="inputForm" action="${ctx}/oa/leave/start" method="post" class="form-horizontal">
		<fieldset>
			<legend><small>请假申请</small></legend>
			<table border="1">
			<tr>
				<td>申请人姓名：</td>
				<td><input type="text" id="applicantName" name="applicantName" /></td>
				<td>联系电话：</td>
				<td><input type="text" id="applicantContactNum" name="applicantContactNum" /></td>
			</tr>
			<tr>
				<td>单位名称：</td>
				<td><input type="text" id="company" name="company" /></td>
				<td>身份证号：</td>
				<td><input type="text" id="company" name="company" /></td>
			</tr>
			<tr>
				<td>学生姓名：</td>
				<td>
					<input type="text" id="studentName" name="studentName"></input>
				</td>
				<td>学校：</td>
				<td>
					<input type="text" id="school" name="school"></input>
				</td>
			</tr>
			<tr>
				<td>年级：</td>
				<td>
					<input type="text" id="grade" name="grade"></input>
				</td>
				<td>班号/专业：</td>
				<td>
					<input type="text" id="className" name="className"></input>
				</td>
			</tr>
			<tr>
				<td>班主任名称：</td>
				<td>
					<input type="text" id="headteacher" name="headteacher"></input>
				</td>
				<td>班主任联系电话：</td>
				<td>
					<input type="text" id="headteachercontactNum" name="headteachercontactNum"></input>
				</td>
			</tr>
		</table>
		<table style="width: 661px; ">
			<tr>
				<td width="13%">家庭基本情况、
				贫困原因，资助理由
				（请详细如实填写）：</td>
				<td width="77%">
					<textarea id="familyCondiction" name="familyCondiction"></input>
				</td>

			</tr>
			<tr>
				<td width="13%">家庭基本情况、
				贫困原因，资助理由
				（请详细如实填写）：</td>
				<td width="77%">
					<textarea id="sponseReason" name="sponseReason"></input>
				</td>

			</tr>		
				
			<tr>
				<td>&nbsp;</td>
				<td>
					<button type="submmit">申请</button>
				</td>
			</tr>
		</table>
		</fieldset>
	</form:form>
	</div>
</body>
</html>
