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
				<td><input type="text" id="applicantName" /></td>
			</tr>
			<tr>
				<td>联系电话：</td>
				<td><input type="text" id="contactNum" name="contactNum" /></td>
			</tr>
			<tr>
				<td>单位名称：</td>
				<td><input type="text" id="company" name="company" /></td>
			</tr>
			<tr>
				<td>学生姓名：</td>
				<td>
					<textarea name="studentName"></textarea>
				</td>
			</tr>
			<tr>
				<td>年级：</td>
				<td>
					<textarea name="grade"></textarea>
				</td>
			</tr>
			<tr>
				<td>班号/专业：</td>
				<td>
					<textarea name="className"></textarea>
				</td>
			</tr>
			<tr>
				<td>班主任名称：</td>
				<td>
					<textarea name="headteacher"></textarea>
				</td>
			</tr>
			<tr>
				<td>班主任联系电话：</td>
				<td>
					<textarea name="teachercontactNum"></textarea>
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
