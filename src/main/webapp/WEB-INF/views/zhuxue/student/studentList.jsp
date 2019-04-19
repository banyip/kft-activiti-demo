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
    <link href="${ctx }/js/common/plugins/uploader/css/jquery.dm-uploader.min.css" rel="stylesheet">
    <link href="${ctx }/js/common/plugins/jui/extends/timepicker/jquery-ui-timepicker-addon.css" type="text/css" rel="stylesheet" />
    <link href="${ctx }/js/common/plugins/qtip/jquery.qtip.min.css" type="text/css" rel="stylesheet" />
    <%@ include file="/common/include-custom-styles.jsp" %>
     <link rel="stylesheet" type="text/css" href="${ctx }/css/studentList.css" />
    <script src="${ctx }/js/common/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/jquery-ui-${themeVersion }.min.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/extends/timepicker/jquery-ui-timepicker-addon.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/extends/i18n/jquery-ui-date_time-picker-zh-CN.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/uploader/js/jquery.dm-uploader.min.js" type="text/javascript"></script>
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
		<tr>
			<td>
			<form method="post" action="">
				<input name="queryString" type="text">
				><a class="search" tkey='submitquery' tname='搜索' href="#"></form>
			</td>
		</tr>
		<th>
			<tr>
				<th>学生编号</th>				
				<th>学生名称</th>

				<th>任务创建时间</th>
				<th>操作</th>
			</tr>
		</th>
		<tbody>
			<c:forEach items="${page.result }" var="student"> 
				<tr id="${student.id }">
				    <td>${student.auditNo }</td>
				    <td>${student.studentName }</td>

					<td>${student.applyTime }</td>
                    <td><a class="handle" tkey='editstudent' tname='修改' href="#">修改</a>
                        <a class="deleterow" tname=删除 href="#">删除</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<tags:pagination page="${page}" paginationSize="${page.pageSize}"/>
	<!-- 下面是每个节点的模板，用来定义每个节点显示的内容 -->
	<!-- 使用DIV包裹，每个DIV的ID以节点名称命名，如果不同的流程版本需要使用同一个可以自己扩展（例如：在DIV添加属性，标记支持的版本） -->

 

    <!-- 学生信息登记学生信息 -->
	<div id="newstudent" style="display: none" class="div_maindialog">
		<!-- table用来显示信息，方便办理任务 -->
            <%@include file="newstudent.jsp" %>


    </div>

    <!-- 学生信息登记学生信息 -->
	<div id="editstudent" style="display: none" class="div_maindialog">
		<!-- table用来显示信息，方便办理任务 -->
         <%@include file="editstudent.jsp" %>
    </div>


</body>
</html>