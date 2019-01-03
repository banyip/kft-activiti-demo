<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
	<%@ include file="/common/global.jsp"%>
	<title>请假待办任务列表</title>
	<%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <%@ include file="/common/include-jquery-ui-theme.jsp" %>
    <link href="${ctx }/js/common/plugins/jui/extends/timepicker/jquery-ui-timepicker-addon.css" type="text/css" rel="stylesheet" />
    <link href="${ctx }/js/common/plugins/qtip/jquery.qtip.min.css" type="text/css" rel="stylesheet" />
    <%@ include file="/common/include-custom-styles.jsp" %>
    <style type="text/css">
    /* block ui */
	.blockOverlay {
		z-index: 1004 !important;
	}
	.blockMsg {
		z-index: 1005 !important;
	}
	.yltable {
	border-collapse: collapse;
	background-color: #FFF;
	width: 960px;
	padding-top: 5px;
	color: #000;
	line-height: 28px;
	font-size: 12px;
	}
	
	.font6
	{color:black;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:宋体;
	}
.font5
	{color:red;
	font-size:10.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:宋体;
	}
.font7
	{color:black;
	font-size:10.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:宋体;
	}
.font8
	{color:red;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:宋体;
	}
.font9
	{color:black;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:underline;
	text-underline-style:single;
	font-family:宋体;
	}
.font10
	{color:black;
	font-size:10.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:underline;
	text-underline-style:single;
	font-family:宋体;
	}
.font11
	{color:black;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	}
.font12
	{color:red;
	font-size:10.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:"Times New Roman", serif;
	}
.style1 {
	color: black;
	font-size: 18.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: center;
	vertical-align: middle;
	white-space: normal;
	border-style: none;
	border-color: inherit;
	border-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style2 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: center;
	vertical-align: middle;
	white-space: normal;
	border: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.partly {
	color: black;
	font-size: 10.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: center;
	vertical-align: middle;
	white-space: normal;
	border: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style4 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: center;
	vertical-align: middle;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style5 {
	color: red;
	font-size: 10.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: center;
	vertical-align: middle;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style6 {
	color: red;
	font-size: 10.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: general;
	vertical-align: middle;
	white-space: normal;
	border: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style7 {
	color: black;
	font-size: 10.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: center;
	vertical-align: middle;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style8 {
	color: red;
	font-size: 9.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: center;
	vertical-align: middle;
	white-space: normal;
	border: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style9 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: middle;
	white-space: normal;
	border: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style10 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: middle;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style11 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: middle;
	white-space: normal;
	border-left-style: none;
	border-left-color: inherit;
	border-left-width: medium;
	border-right: .5pt solid windowtext;
	border-top: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style12 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: center;
	vertical-align: middle;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right: .5pt solid windowtext;
	border-top: .5pt solid windowtext;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style13 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: center;
	vertical-align: middle;
	white-space: normal;
	border-left-style: none;
	border-left-color: inherit;
	border-left-width: medium;
	border-right: .5pt solid windowtext;
	border-top: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style14 {
	color: red;
	font-size: 10.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: center;
	vertical-align: middle;
	white-space: normal;
	border-left-style: none;
	border-left-color: inherit;
	border-left-width: medium;
	border-right: .5pt solid windowtext;
	border-top: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style15 {
	color: black;
	font-size: 10.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: center;
	vertical-align: middle;
	white-space: normal;
	border: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style16 {
	color: black;
	font-size: 10.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: center;
	vertical-align: middle;
	white-space: normal;
	border-left-style: none;
	border-left-color: inherit;
	border-left-width: medium;
	border-right: .5pt solid windowtext;
	border-top: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style17 {
	color: black;
	font-size: 10.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: general;
	vertical-align: middle;
	white-space: normal;
	border-left-style: none;
	border-left-color: inherit;
	border-left-width: medium;
	border-right: .5pt solid windowtext;
	border-top: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style18 {
	color: black;
	font-size: 10.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: general;
	vertical-align: middle;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style19 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: bottom;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top: .5pt solid windowtext;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style20 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: bottom;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top-style: none;
	border-top-color: inherit;
	border-top-width: medium;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style21 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: bottom;
	white-space: nowrap;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top-style: none;
	border-top-color: inherit;
	border-top-width: medium;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style22 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: general;
	vertical-align: bottom;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top-style: none;
	border-top-color: inherit;
	border-top-width: medium;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style23 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: general;
	vertical-align: middle;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top: .5pt solid windowtext;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style24 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: middle;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top: .5pt solid windowtext;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style25 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: middle;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top-style: none;
	border-top-color: inherit;
	border-top-width: medium;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style26 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: middle;
	white-space: nowrap;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top-style: none;
	border-top-color: inherit;
	border-top-width: medium;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
}
.style27 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: center;
	vertical-align: middle;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top: .5pt solid windowtext;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style28 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: middle;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top-style: none;
	border-top-color: inherit;
	border-top-width: medium;
	border-bottom: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style29 {
	color: red;
	font-size: 10.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: top;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top-style: none;
	border-top-color: inherit;
	border-top-width: medium;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style30 {
	color: red;
	font-size: 10.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: top;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top: .5pt solid windowtext;
	border-bottom: .5pt solid windowtext;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style31 {
	color: red;
	font-size: 10.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: middle;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top: .5pt solid windowtext;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style32 {
	color: black;
	font-size: 10.0pt;
	font-weight: 700;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: middle;
	white-space: normal;
	border-left: .5pt solid windowtext;
	border-right: .5pt solid windowtext;
	border-top: .5pt solid windowtext;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
.style33 {
	color: black;
	font-size: 10.0pt;
	font-weight: 400;
	font-style: normal;
	text-decoration: none;
	font-family: 宋体;
	text-align: left;
	vertical-align: middle;
	white-space: normal;
	border-left-style: none;
	border-left-color: inherit;
	border-left-width: medium;
	border-right-style: none;
	border-right-color: inherit;
	border-right-width: medium;
	border-top: .5pt solid windowtext;
	border-bottom-style: none;
	border-bottom-color: inherit;
	border-bottom-width: medium;
	padding-left: 1px;
	padding-right: 1px;
	padding-top: 1px;
	background: white;
}
	
    </style>

    <script src="${ctx }/js/common/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/jquery-ui-${themeVersion }.min.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/extends/timepicker/jquery-ui-timepicker-addon.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/jui/extends/i18n/jquery-ui-date_time-picker-zh-CN.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/qtip/jquery.qtip.pack.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/html/jquery.outerhtml.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/blockui/jquery.blockUI.js" type="text/javascript"></script>
	<script src="${ctx }/js/module/activiti/workflow.js" type="text/javascript"></script>
	<script src="${ctx }/js/module/oa/leave/leave-todo.js" type="text/javascript"></script>	
</head>

<body>
	<c:if test="${not empty message}">
		<div id="message" class="alert alert-success">${message}</div>
	</c:if>
	<table width="100%" class="need-border">
		<th>
			<tr>
				<th>申请人</th>				
				<th>学生名称</th>
				<th>学校</th>
				<th>年级</th>
				<th>班号</th>
				<th>当前节点</th>
				<th>任务创建时间</th>
				<th>流程状态</th>
				<th>操作</th>
			</tr>
		</th>
		<tbody>
			<c:forEach items="${page.result }" var="leave"> 
				<c:set var="task" value="${leave.task }" />
				<c:set var="pi" value="${leave.processInstance }" />
				<tr id="${leave.id }" tid="${task.id }">
				    <td>${leave.applicantName }</td>
				    <td>${leave.studentName }</td>
					<td>${leave.school }</td>
					<td>${leave.grade }</td>
					<td>${leave.className }</td>
					<td>
						<a class="trace" href='#' pid="${pi.id }" pdid="${pi.processDefinitionId}" title="点击查看流程图">${task.name }</a>
					</td>
					<%--<td><a target="_blank" href='${ctx }/workflow/resource/process-instance?pid=${pi.id }&type=xml'>${task.name }</a></td> --%>
					<td>${task.createTime }</td>
					<td>${pi.suspended ? "已挂起" : "正常" }；<b title='流程版本号'>V: ${leave.processDefinition.version }</b></td>
					<td>
						<c:if test="${empty task.assignee }">
							<a class="claim" href="${ctx }/oa/leave/task/claim/${task.id}">签收</a>
						</c:if>
						<c:if test="${not empty task.assignee }">
							<%-- 此处用tkey记录当前节点的名称 --%>
							<a class="handle" tkey='${task.taskDefinitionKey }' tname='${task.name }' href="#">办理</a>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<tags:pagination page="${page}" paginationSize="${page.pageSize}"/>
	<!-- 下面是每个节点的模板，用来定义每个节点显示的内容 -->
	<!-- 使用DIV包裹，每个DIV的ID以节点名称命名，如果不同的流程版本需要使用同一个可以自己扩展（例如：在DIV添加属性，标记支持的版本） -->



	<!-- 家庭成员信息 -->
	<div id="familyinput" style="display: none">
		<!-- table用来显示信息，方便办理任务 -->
		<%@include file="view-form.jsp" %>
		<hr/>
		<input type="hidden"										
				id="relative" />   
		<table id="tb">
			<tr>
				<td >家庭成员信息</td>
			</tr>
			<tr>
				<td>	
				<table>
					<thead>
					   	<tr>
						    <th width="5%">关系</th>
						    <th width="8%">姓名 </th>
						    <th width="24%">身份证号码 </th>
						    <th width="16%">联系电话</th>
						    <th width="12%">职业</th>
						    <th width="10%">年收入</th>
						    <th width="16%">健康情况</th>
					    </tr>
				    </thead>	
				</table>
				</td>
			</tr>
			<tr>
				<td>				    		
					<div id="div_bjbr">
						<table class="yltable">
							<tr>
								<td width="5%"><input class="abc" type="text" id="relationship" name="relationship" style="width:100%"></td>
								<td width="8%"><input class="abc" type="text" id="name" name="name" style="width:100%"></td>
								<td width="24%"><input class="abc" type="text" id="relativeid" name="relativeid" style="width:100%"></td>
								<td width="16%"><input class="abc" type="text" id="contactNum" name="contactNum"  style="width:100%"></td>								
								<td width="12%"><input class="abc" type="text" id="occupation" name="occupation" style="width:100%"></td>
								<td width="10%"><input class="abc" type="number" id="anualIncome" name="anualIncome" style="width:100%"></td>
								<td width="16%"><input class="abc" type="text" id="health" name="health" style="width:100%"></td>															
							</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="6">
					<input type="button" name="button"
					value="新 增" style="width:60px; height:24px;"
					onclick="inserttable()" />      
					<input
					type="button" name="button" value="删 除"
					style="width:60px; height:24px;" onclick="deletetable()" />
				</td>
			</tr>
		</table>
	</div>




	<!-- 走访后登记 -->
	<div id="postvisit" style="display: none">
		<!-- table用来显示信息，方便办理任务 -->
		<%@include file="postvisit-form.jsp" %>

	</div>

	<!-- 部门领导审批 -->
	<div id="firstaudit" style="display: none">

		<!-- table用来显示信息，方便办理任务 -->
		<%@include file="view-form.jsp" %>
	</div>

	<!-- HR审批 -->
	<div id="hraudit" style="display: none">

		<!-- table用来显示信息，方便办理任务 -->
		<%@include file="view-form.jsp" %>
	</div>

	<div id="modifyApply" style="display: none">
		<div class="info" style="display: none"></div>
		<div id="radio">
			<input type="radio" id="radio1" name="reApply" value="true" /><label for="radio1">调整申请</label>
			<input type="radio" id="radio2" name="reApply" checked="checked" value="false" /><label for="radio2">取消申请</label>
		</div>
		<hr />
		<table id="modifyApplyContent" style="display: none">
			<caption>调整请假内容</caption>
			<tr>
				<td>请假类型：</td>
				<td>
					<select id="leaveType" name="leaveType">
						<option>公休</option>
						<option>病假</option>
						<option>调休</option>
						<option>事假</option>
						<option>婚假</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>开始时间：</td>
				<td><input type="text" id="startTime" name="startTime" /></td>
			</tr>
			<tr>
				<td>结束时间：</td>
				<td><input type="text" id="endTime" name="endTime" /></td>
			</tr>
			<tr>
				<td>请假原因：</td>
				<td>
					<textarea id="reason" name="reason" style="width: 250px;height: 50px"></textarea>
				</td>
			</tr>
		</table>
	</div>

	<!-- 销假 -->
	<div id="reportBack" style="display: none">
		<!-- table用来显示信息，方便办理任务 -->
		<%@include file="view-form.jsp" %>
		<hr/>
		<table>
			<tr>
				<td>实际请假开始时间：</td>
				<td>
					<input id="realityStartTime" />
				</td>
			</tr>
			<tr>
				<td>实际请假开始时间：</td>
				<td>
					<input id="realityEndTime" />
				</td>
			</tr>
		</table>
	</div>

</body>
</html>