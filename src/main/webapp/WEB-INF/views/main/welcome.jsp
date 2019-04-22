<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="me.kafeitu.demo.activiti.util.PropertyFileUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<%@ include file="/common/global.jsp"%>
	<%@ include file="/common/meta.jsp"%>

	<%@ include file="/common/include-base-styles.jsp" %>
    <%@ include file="/common/include-jquery-ui-theme.jsp" %>
    <link href="${ctx }/js/common/plugins/jui/extends/portlet/jquery.portlet.min.css?v=1.1.2" type="text/css" rel="stylesheet" />
    <link href="${ctx }/js/common/plugins/qtip/jquery.qtip.css?v=1.1.2" type="text/css" rel="stylesheet" />
    <%@ include file="/common/include-custom-styles.jsp" %>
    <style type="text/css">
    	.template {display:none;}
    	.version {margin-left: 0.5em; margin-right: 0.5em;}
    	.trace {margin-right: 0.5em;}
        .center {
            width: 1200px;
            margin-left:auto;
            margin-right:auto;
        }
    </style>

    <script src="${ctx }/js/common/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/jquery-ui-${themeVersion }.min.js" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/jui/extends/portlet/jquery.portlet.pack.js?v=1.1.2" type="text/javascript"></script>
    <script src="${ctx }/js/common/plugins/qtip/jquery.qtip.pack.js" type="text/javascript"></script>
	<script src="${ctx }/js/common/plugins/html/jquery.outerhtml.js" type="text/javascript"></script>
	<script src="${ctx }/js/module/activiti/workflow.js" type="text/javascript"></script>
    <script src="${ctx }/js/module/main/welcome-portlet.js" type="text/javascript"></script>
</head>
<body style="margin-top: 1em;">
	<div class="center">
        <div style="text-align: center;">
            <h3>欢迎访问好友营支教管理系统</h3>
        </div>
        <div id='portlet-container'></div>
    </div>
    <!-- 隐藏 -->
<div class="youbu fl">
    <div class="nr1">
      <div class="xiangqingnr">
        <div class="xiangqingnr"><style>p{line-height:28px;text-indent:2em;}&#13;&#10;.tu{margin-top:10px;}</style><p>&nbsp;</p><p>好友营支教成立于2006年10月1日，以半年轮换制的持久支教方式，组织并培训志愿者到偏远山区及内地留守农村，解决儿童上学难、上学差的问题。是中国第一家从草根组织注册为社会团体的支教机构。</p><p>十二年组织支教老师1109人次，累计支教时间904500小时。持续教育的受益学生达15065人次。服务四川、湖南、青海、甘肃、陕西、江西、贵州多省41所学校。</p><p>从2008年开始至今，在资助项目上共结对664位捐赠人，让795位学生持续得到社会的关爱，通过“一对一”资助方式，筹集到332万的资助款，减轻贫困学生的家庭压力，让学生感受到社会的关注，也让更多的社会人士参与其中；同时开展各种成长班会促进学生的快乐健康成长，针对个别学生提供关怀与支持。</p><p>2010年开始通过小狮子成长计划从品行习惯、环保安全、音艺美感、独立成长等多方面，全面提升教育素质水平。</p><p>2011年12月8日正式注册为“佛山市禅城区支持教育志愿者协会”。</p><p>2014年提出“人人都可支教”，在专业理性的前提下让大家易于参与，助人的同时也提升了自己。</p><p>2016年设立小骆驼图书角，致力于改善乡村学生的阅读，为广东、湖南、贵州、新疆等地的乡村学校建立图书角，捐赠图书，并通过不同的活动开展，提高学生的阅读兴趣和阅读能力。</p><p><br>&nbsp;</p><p class="15" style="TEXT-ALIGN: justify; TEXT-JUSTIFY: inter-ideograph"><span style="FONT-SIZE: 14px; FONT-FAMILY: 微软雅黑"><strong>我们的宗旨：</strong></span> <span style="FONT-SIZE: 14px; FONT-FAMILY: 微软雅黑">遵守宪法、法律、法规和国家政策，遵守社会道德风尚。为困难或弱势孩子提供教育方面的支持与帮助，让他们通过持续的教育，从根本上改变贫困与落后。</span><span style="FONT-SIZE: 14px; TEXT-INDENT: 2em"></span></p><p><strong><span style="FONT-SIZE: 14px">我们的口号：</span></strong><span style="FONT-SIZE: 14px">怀大爱心，做小事情。快乐公益，理性支教。</span></p><p><strong><span style="FONT-SIZE: 14px">我们坚信</span></strong><span style="FONT-SIZE: 14px">：每一个孩子都是我们的未来，而教育是改变山区儿童命运的根本！</span></p><p style="TEXT-ALIGN: left">办公电话：0757-86201996<br><span style="LINE-HEIGHT: 28px; TEXT-INDENT: 24px">项目咨询QQ/微信：2514112247&nbsp;</span><span style="MARGIN-LEFT: 10px; LINE-HEIGHT: 28px; TEXT-INDENT: 24px">支教联系电话：18042807660</span></p><p>报名支教QQ/微信：1379974032 <span style="MARGIN-LEFT: 10px">支教联系电话：18029293660</span></p><p>资助学生QQ/微信：1751430844 <span style="MARGIN-LEFT: 10px">资助联系电话：18144745660</span></p><p>邮箱:hyy9999@yeah.net</p><p>淘宝店：https://newhyy.taobao.com</p><p>办公地址：广东省佛山市南海区桂城东二中心村A区8巷3号</p><p>邮编：528200</p></div>      </div>
    </div>
  <div class="yema" style="height:0px;"></div>
</div></body>
</html>
