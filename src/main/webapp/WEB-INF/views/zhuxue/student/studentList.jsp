<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
	<%@ include file="/common/global.jsp"%>
	<title>学生列表</title>
	<%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <%@ include file="/common/include-jquery-ui-theme.jsp" %>
    <link href="${ctx }/js/common/plugins/jui/extends/timepicker/jquery-ui-timepicker-addon.css" type="text/css" rel="stylesheet" />
    <link href="${ctx }/js/common/plugins/qtip/jquery.qtip.min.css" type="text/css" rel="stylesheet" />
    <%@ include file="/common/include-custom-styles.jsp" %>
     <link rel="stylesheet" type="text/css" href="${ctx }/css/studentList.css" />

    <script src="${ctx }/js/common/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/jquery-ui-${themeVersion }.min.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/extends/timepicker/jquery-ui-timepicker-addon.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/jui/extends/i18n/jquery-ui-date_time-picker-zh-CN.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/qtip/jquery.qtip.pack.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/html/jquery.outerhtml.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/blockui/jquery.blockUI.js" type="text/javascript"></script>
	<script src="${ctx }/js/module/activiti/workflow.js" type="text/javascript"></script>
	<script src="${ctx }/js/module/zhuxue/student/student-todo.js" type="text/javascript"></script>	
</head>

<body>
	<c:if test="${not empty message}">
		<div id="message" class="alert alert-success">${message}</div>
    </c:if>
    	<div style="text-align: right;padding: 2px 1em 2px">
		<a class='handle' tkey=newstudent tname="登记新学生申请" href='#'>登记新学生申请</a>
	</div>
	<table width="100%" class="need-border">
		<th>
			<tr>
				<th>申请人</th>				
				<th>学生名称</th>
				<th>学校</th>
				<th>年级</th>
				<th>班号</th>
				<th>任务创建时间</th>
				<th>操作</th>
			</tr>
		</th>
		<tbody>
			<c:forEach items="${page.result }" var="student"> 
				<c:set var="task" value="${student.task }" />
				<c:set var="pi" value="${student.processInstance }" />
				<tr id="${student.id }" tid="${task.id }">
				    <td>${student.applicantName }</td>
				    <td>${student.studentName }</td>
					<td>${student.school }</td>
					<td>${student.grade }</td>
					<td>${student.className }</td>
					<td>${student.applyTime }</td>
					<td>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<tags:pagination page="${page}" paginationSize="${page.pageSize}"/>
	<!-- 下面是每个节点的模板，用来定义每个节点显示的内容 -->
	<!-- 使用DIV包裹，每个DIV的ID以节点名称命名，如果不同的流程版本需要使用同一个可以自己扩展（例如：在DIV添加属性，标记支持的版本） -->



    <!-- 学生信息登记学生信息 -->
	<div id="newstudent" style="display: none">
		<!-- table用来显示信息，方便办理任务 -->
        <form>
            <%@include file="newstudent.jsp" %>
        </form>

    </div>




</body>
</html>