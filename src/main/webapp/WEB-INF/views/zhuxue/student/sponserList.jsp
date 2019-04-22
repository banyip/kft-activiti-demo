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
    <link href="${ctx }/js/common/plugins/editableselect/jquery.editable-select.min.css" type="text/css" rel="stylesheet" />
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

    <script src="${ctx }/js/common/plugins/editableselect/jquery-editable-select.js" type="text/javascript"></script>
	<script src="${ctx }/js/module/zhuxue/student/sponser-todo.js" type="text/javascript"></script>	

</head>

<body>
	<c:if test="${not empty message}">
		<div id="message" class="alert alert-success">${message}</div>
    </c:if>
    	<div style="text-align: right;padding: 2px 1em 2px">
		<a class='handle' tkey=newsponser tname="登记新资助人"  href='#'>登记新资助人</a>
	</div>
	<table width="100%" class="need-border">
			<tr>
			<td colspan=1>			
			<form id="search" method="post" action="">
			<table><tr><td  style="width:65%;border:none">
				<input type="hidden" id="keyup" name="keyup"/>
				<input id="queryString" name="queryString" type="text"/><td style="width:35%;border:none"><a class="search" tkey='submitquery' tname='搜索' href="#" >搜索</a>
				</td></tr></table></form>
    	<!--
        	提示下拉框
        -->
        <div id="tips" style="display: none; 
        	width: 171px;  border: 1px solid pink";>
        </div>

			</td>
		</tr>
		<th>
			<tr>
				<th>支助人编号</th>				
				<th>姓名</th>
				<th>昵称</th>

			</tr>
		</th>
		<tbody>
			<c:forEach items="${page.result }" var="sponser"> 
				<tr id="${sponser.id }">
				    <td>${sponser.sponserNo }</td>
				    <td>${sponser.name }</td>
					<td>${sponser.nickName }</td>

                    <td><a class="handle" tkey='editsponser' tname='修改' href="#">修改</a>
                        <a class="deleterow" tkey="deletesponser" tname=删除 href="#">删除</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<tags:pagination page="${page}" paginationSize="${page.pageSize}"/>
	<!-- 下面是每个节点的模板，用来定义每个节点显示的内容 -->
	<!-- 使用DIV包裹，每个DIV的ID以节点名称命名，如果不同的流程版本需要使用同一个可以自己扩展（例如：在DIV添加属性，标记支持的版本） -->

 

    <!-- 学生信息登记学生信息 -->
	<div id="newsponser" style="display: none" class="div_maindialog">
		<!-- table用来显示信息，方便办理任务 -->
            <%@include file="newsponser.jsp" %>


    </div>

    <!-- 学生信息登记学生信息 -->
	<div id="editsponser" style="display: none" class="div_maindialog">
		<!-- table用来显示信息，方便办理任务   -->
		<input class="sponserApply" type=hidden id="sponser_id" name="id"/>
 		 	<%@include file="newsponser.jsp" %>
    </div>


</body>
</html>