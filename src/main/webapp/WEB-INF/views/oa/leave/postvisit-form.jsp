<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<table border="0" cellpadding="0" cellspacing="0" width="95%" style="border-collapse:
 collapse;width:900pt">
	<colgroup>
		<col width="41" style="mso-width-source:userset;mso-width-alt:1312;width:31pt" />
		<col style="mso-width-source:userset;mso-width-alt:1120;" />
		<col width="5" style="mso-width-source:userset;mso-width-alt:160;width:4pt" />
		<col width="101" style="mso-width-source:userset;mso-width-alt:3232;width:76pt" />
		<col width="53" span="6" style="mso-width-source:userset;mso-width-alt:1696;
 width:40pt" />
		<col width="101" style="mso-width-source:userset;mso-width-alt:3232;width:76pt" />
		<col width="45" span="2" style="mso-width-source:userset;mso-width-alt:1440;
 width:34pt" />
		<col width="32" style="mso-width-source:userset;mso-width-alt:1024;width:24pt" />
		<col width="86" style="mso-width-source:userset;mso-width-alt:2752;width:65pt" />
	</colgroup>
	<tr height="32" style="mso-height-source:userset;height:24.0pt">
		<td colspan="15" height="32" width="809" style="height: 24.0pt; width: 610pt" class="style1">
		<a name="RANGE!A1:O37">好友营支教资助学生走访表</a></td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td colspan="2" height="24" style="height: 18.0pt; " class="style2">
		姓<span style="mso-spacerun:yes">&nbsp; </span>名</td>
		<td width="101" style="width: 76pt" class=style4><input class="toinput" id="leave_StudentName" name="studentName"></input></td>
		<td width="53" style="width: 40pt" class="style2">性别</td>
		<td width="53" style="width: 40pt" class=style4><input class="toinput" id="leave_Sex" name="sex"></td>
		<td width="53" style="width: 40pt" class="style2">民族</td>
		<td width="53" style="width: 40pt" class="style5" ><input class="toinput" id="leave_Nationality" name="nationality"></td>
		<td colspan="2" class="style4">身份证号码</td>
		<td colspan="2" width="146" style="width: 110pt" class="style5" ><input class=toinput id=leave_StudentId name="studentId"></input></td>
		<td colspan="1" style="width: 51pt" class="style4">年级/班别</td>
		<td colspan="4" width="163"  class="style4"><table width="100%"><tr>
						<td colspan="4" class=style4 width="50%"><input class="toinput" id="leave_Grade"></input></td>
						<td colspan="4" class="style4"><input class="toinput" id="leave_ClassName"></input></td></tr></table></td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td colspan="3" height="24" style="height: 18.0pt; " class="style2">
		家庭住址</td>
		<td colspan="5" width="313" style="width: 236pt" class="style5">
		<input class=toinput id=leave_Address name="leave_Address"></input></td>
		<td colspan="2" class="style4">学生电话/QQ</td>
		<td colspan="2" width="146" style="width: 110pt" class="style4"><input class=toinput id=leave_StudentContactNo name="leave_StudentContactNo"></input>　</td>
		<td colspan="3" width="163" style="width: 123pt" class="style4">是否住校： □是 
		□否</td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td colspan="3" height="24" style="height: 18.0pt; " class="style2">
		家长姓名</td>
		<td width="101" style="width: 76pt" class="style4" ><input class=toinput id=leave_ParentName name="leave_ParentName"></input></td>
		<td colspan="2" width="106" style="width: 80pt" class="style4">家长电话</td>
		<td colspan="2" width="106" style="width: 80pt" class="style4"><input class=toinput id=leave_ParentContactNo name="leave_ParentContactNo"></input></td>
		<td colspan="7" width="415" style="width: 313pt" class="style4">
		<table><tr><td width=75%><font class="font6">本人是否有其他资助：□否<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>□是</font><font class="font5">√</font><font class="font6">（金额：</font></td> <td colspan="6" width=30%>
		<input type=number class=toinput id=leave_OtherSponse name="leave_OtherSponse"></input><font class="font6">）</font></td></tr></table></td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td colspan="3" height="24" style="height: 18.0pt; " class="style2">
		学校名称</td>
		<td colspan="5" width="313" style="width: 236pt" class=style4><input class="toinput" id="leave_school"></input></td>
		<td colspan="2" class="style5">学校联系人</td>
		<td width="101" style="width: 76pt" class="style5"><input class=toinput id=leave_SchoolContactPerson name="leave_SchoolContactPerson"></input></td>
		<td colspan="2" width="90" style="width: 68pt" class="style4">联系电话</td>
		<td colspan="2" width="118" style="width: 89pt" class="style8">
		<input class=toinput id=leave_SchoolContactNo name="leave_SchoolContactNo"></input></td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td colspan="3" height="24" style="height: 18.0pt; " class="style4">
		学生成绩</td>
		<td width="101" style="width: 76pt" class="style4">语文：<span style="mso-spacerun:yes">&nbsp;
		</span>分</td>
		<td colspan="2" width="106" style="width: 80pt" class="style4">数学：<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>分</td>
		<td colspan="2" width="106" style="width: 80pt" class="style4">英语：<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>分</td>
		<td colspan="3" width="207" style="width: 156pt" class="style4">其他学科：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span>分</td>
		<td colspan="3" class="style4">综合成绩排名：</td>
		<td width="86" style="width: 65pt" class="style4">名</td>
    </tr>
    
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td rowspan="6" height="144" width="41" style="height: 108.0pt; width: 31pt; layout-flow: vertical-ideographic;" class="style4">
		家庭其他成员</td>
		<td colspan="2" class="style4">关系</td>
		<td width="101" style="width: 76pt" class="style2">姓名</td>
		<td colspan="4" width="212" style="width: 160pt" class="style4">身份证号码</td>
		<td width="53" style="width: 40pt" class="style2">健康</td>
		<td style="width: 30pt" class="style4">文化</td>
		<td width="101" style="width: 76pt" class="style4">职业或就读</td>
		<td width="45" style="width: 34pt" class="style2">年收入</td>
		<td colspan="3" width="163" style="width: 123pt" class="style4">其他资助/低保</td>
    </tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt" class="relative">
		<td colspan="2" height="24" style="height: 18.0pt; " class="style4"><input class="input" id="relatives[0].relationship"></input></td>
		<td width="101" style="width: 76pt" class="partly" id="relatives[0].name"></td>
		<td colspan="4" width="212" style="width: 160pt" class=style4><input class="toinput" id=relatives[0].relativeId></input></td>
		<td width="53" style="width: 40pt" class=style4><input class="toinput" id="relatives[0].health"></input></td>
		<td style="width: 30pt" class="style14">&nbsp;</td>
		<td width="101" style="width: 76pt" class="style14">&nbsp;</td>
		<td width="45" style="width: 34pt"><input type=number class="toinput" id="relatives.annualIncom"></input></td>
		<td colpan="3" width="163" style="width: 123pt" class="style5">&nbsp;</td>
    </tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt" class="relative">
		<td colspan="2" height="24" style="height: 18.0pt; " class="partly" id="relatives[1].relationship"></td>
		<td width="101" style="width: 76pt" class="partly" id="relatives[1].name"></td>
		<td colspan="4" width="212" style="width: 160pt"  class="partly" id=relatives[0].relativeId></td>
		<td width="53" style="width: 40pt" class="partly" id="relatives[1].health"></td>
		<td style="width: 30pt" class="style14">&nbsp;</td>
		<td width="101" style="width: 76pt" class="style14">&nbsp;</td>
		<td width="45" style="width: 34pt" class="partly" id="relatives.annualIncom"></td>
		<td colspan="3" width="163" style="width: 123pt" class="style5">&nbsp;</td>
    </tr>
 	<tr height="24" style="mso-height-source:userset;height:18.0pt" class="relative">
		<td colspan="2" height="24" style="height: 18.0pt; " class="partly" id="relatives[2].relationship"></td>
		<td width="101" style="width: 76pt" class="partly" id="relatives[2].name"></td>
		<td colspan="4" width="212" style="width: 160pt" class="style5">&nbsp;</td>
		<td width="53" style="width: 40pt" class="partly" id="relatives[2].health"></td>
		<td style="width: 30pt" class="style14">&nbsp;</td>
		<td width="101" style="width: 76pt" class="style14">&nbsp;</td>
		<td width="45" style="width: 34pt" class="partly" id="relatives.annualIncom"></td>
		<td colspan="3" width="163" style="width: 123pt" class="style5">&nbsp;</td>
    </tr>   
  	<tr height="24" style="mso-height-source:userset;height:18.0pt" class="relative">
		<td colspan="2" height="24" style="height: 18.0pt; " class="partly" id="relatives[3].relationship"></td>
		<td width="101" style="width: 76pt" class="partly" id="relatives[3].name"></td>
		<td colspan="4" width="212" style="width: 160pt" class="style5">&nbsp;</td>
		<td width="53" style="width: 40pt" class="partly" id="relatives[3].health"></td>
		<td style="width: 30pt" class="style14">&nbsp;</td>
		<td width="101" style="width: 76pt" class="style14">&nbsp;</td>
		<td width="45" style="width: 34pt" class="partly" id="relatives.annualIncom"></td>
		<td colspan="3" width="163" style="width: 123pt" class="style5"></td>
    </tr>
    	<tr height="24" style="mso-height-source:userset;height:18.0pt" class="relative">
		<td colspan="2" height="24" style="height: 18.0pt; " class="partly" id="relatives[4].relationship"></td>
		<td width="101" style="width: 76pt" class="partly" id="relatives[4].name"></td>
		<td colspan="4" width="212" style="width: 160pt" class="style5">&nbsp;</td>
		<td width="53" style="width: 40pt" class="partly" id="relatives[4].health"></td>
		<td style="width: 30pt" class="style14">&nbsp;</td>
		<td width="101" style="width: 76pt" class="style14">&nbsp;</td>
		<td width="45" style="width: 34pt" class="partly" id="relatives.annualIncom"></td>
		<td colspan="3" width="163" style="width: 123pt" class="style5">&nbsp;</td>
    </tr>
   	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td rowspan="11" height="286" width="41" style="height: 221.1pt; width: 31pt; layout-flow: vertical-ideographic;" class="style4">
		家庭经济情况</td>
		<td rowspan="6" width="35" style="width: 26pt; layout-flow: vertical-ideographic;" class="style4">
		主要收入</td>
		<td colspan="13" width="733" style="width: 553pt" class="style4">
		<font class="font6">1、农业生产：农田 </font><font class="font5">
		<span style="mso-spacerun:yes">&nbsp;</span>1</font><font class="font6"><span style="mso-spacerun:yes">&nbsp;
		</span>亩，种植情况<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></font>
		<font class="font5"><span style="mso-spacerun:yes">&nbsp;&nbsp;</span>水稻、烟叶 </font>
		<font class="font6"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>，出售收入<span style="mso-spacerun:yes">&nbsp;
		</span></font><font class="font5"><span style="mso-spacerun:yes">&nbsp;</span>8000</font><font class="font6"><span style="mso-spacerun:yes">&nbsp;
		</span>元/年。</font></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt" class="style4">
		<td colspan="13" height="26" width="733" style="height: 20.1pt; width: 553pt" class="style4">
		<font class="font6">2、禽畜养殖及用途：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font5">鸡<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>自吃<span style="mso-spacerun:yes">&nbsp;&nbsp; </span></font>
		<font class="font6"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>，出售收入<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;
		</span></font><font class="font5">无</font><font class="font6"><span style="mso-spacerun:yes">&nbsp;
		</span>元/年。</font></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="13" height="26" width="733" style="height: 20.1pt; width: 553pt" class="style4">
		<font class="font6">3、打工或经商情况：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font5"><span style="mso-spacerun:yes">&nbsp;&nbsp;</span>父亲在外打工<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;
		</span></font><font class="font6"><span style="mso-spacerun:yes">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>，收入 </font><font class="font5">1.5万 </font>
		<font class="font6"><span style="mso-spacerun:yes">&nbsp;</span>元/年。</font></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="13" height="26" style="height: 20.1pt;" class="style4">
		<font class="font6">4、亲戚资助情况：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font5"><span style="mso-spacerun:yes">&nbsp;&nbsp;</span>有 
		供我读书 </font><font class="font6"><span style="mso-spacerun:yes">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>，收入<span style="mso-spacerun:yes">&nbsp; </span>
		</font><font class="font5"><span style="mso-spacerun:yes">&nbsp;&nbsp;</span>3000
		</font><font class="font6"><span style="mso-spacerun:yes">&nbsp;</span>元/年。</font></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="13" height="26" width="733" style="height: 20.1pt; width: 553pt" class="style4">
		<font class="font6">5、其他收入来源：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font5">无<span style="mso-spacerun:yes">&nbsp;
		</span></font><font class="font6"><span style="mso-spacerun:yes">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>，收入<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;
		</span></font><font class="font5"><span style="mso-spacerun:yes">&nbsp;</span>无</font><font class="font6"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;
		</span>元/年。</font></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="13" height="26" width="733" style="height: 20.1pt; width: 553pt" class="style4">
		<font class="font6">6、是否拥有汽车等大件商品<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font5">有电视、冰箱、洗衣机、摩托车</font><font class="font7">
		</font><font class="font6"><span style="mso-spacerun:yes">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>。</font></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td rowspan="5" height="130" width="35" style="height: 100.5pt; width: 26pt; layout-flow: vertical-ideographic;" class="style4">
		主要支出</td>
		<td colspan="13" width="733" style="width: 553pt" class="style19">
		<font class="font6">1、主要支出：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font5"><span style="mso-spacerun:yes">&nbsp;</span>兄弟读书费用，<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span>高中2000元/学期用于生活费<span style="mso-spacerun:yes">&nbsp; </span>
		初中1000元/学期。</font></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="13" height="26" width="733" style="height: 20.1pt; width: 553pt" class="style4">
		<font class="font6">2、家人患病情况：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font5"><span style="mso-spacerun:yes">&nbsp;</span>母亲有精神病要定期吃药<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span>，治疗费用每年支出<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>2000<span style="mso-spacerun:yes">&nbsp;
		</span>元。</font></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="13" height="26" width="733" style="height: 20.1pt; width: 553pt" class="style4">
		<font class="font6">病情描述：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
		</font><font class="font5"><span style="mso-spacerun:yes">&nbsp;</span>抑郁症，有精神病症<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font6"><span style="mso-spacerun:yes">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>。</font></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="13" height="26" width="733" style="height: 20.1pt; width: 553pt" class="style4">
		<font class="font6">3、其它支出情况：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font8"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;</span>无<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;
		</span></font><font class="font6"><span style="mso-spacerun:yes">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>。</font></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="13" height="26" width="733" style="height: 20.1pt; width: 553pt" class="style4">
		<font class="font6">4、欠债情况：<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font5"><span style="mso-spacerun:yes">&nbsp;</span>有，欠下20000元，母亲治病和兄弟的学费 
		</font><font class="font6"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>。</font></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td rowspan="4" height="100" align="center" width="41" style="height: 76.2pt; width: 31pt; layout-flow: vertical-ideographic;" class="style4">
		<span style="mso-spacerun:yes">&nbsp;</span>住房情况<span style="mso-spacerun:yes">&nbsp;</span></td>
		<td colspan="14" width="768" style="width: 579pt" class="style4">
		<font class="font6">1.</font><font class="font5">√</font><font class="font6"> 
		□自有房屋<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>外观整体状况：</font><font class="font5">√</font><font class="font6"> 
		□土坯房<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>□砖瓦结构<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>□混凝土结构<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>□木屋<span style="mso-spacerun:yes">&nbsp;
		</span>□≥两层<span style="mso-spacerun:yes">&nbsp;</span></font></td>
	</tr>
	<tr height="26" style="mso-height-source:userset;height:20.1pt">
		<td colspan="14" height="26" width="768" style="height: 20.1pt; width: 579pt" class="style4">
		<font class="font6"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
		房屋内部装修：<span style="mso-spacerun:yes">&nbsp; </span></font>
		<font class="font5">√</font><font class="font6">□简陋<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>□水泥地<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>□贴瓷砖<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>□舒适整洁<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>□高档</font></td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td colspan="14" height="24" style="height: 18.0pt" class="style4">
		<font class="font6">2. □借用房屋<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>来源：</font><font class="font9"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font6"><span style="mso-spacerun:yes">&nbsp;</span>。<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;</span></font></td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td colspan="14" height="24" style="height: 18.0pt" class="style4">
		<font class="font6">3. □租用房屋<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>租金：</font><font class="font9"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font6">元/月<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>房屋内部装修：<span style="mso-spacerun:yes">&nbsp; </span>□简陋<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>□水泥地<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>□贴瓷砖<span style="mso-spacerun:yes">&nbsp;&nbsp;
		</span>□舒适<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>□高档</font></td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td rowspan="2" height="48" width="41" style="height: 36.0pt; width: 31pt" class="style4">
		照片收集</td>
		<td colspan="14" width="768" style="width: 579pt" class="style4">
		1.走访小组核实以下内容是否拍摄：□孩子正面独照<span style="mso-spacerun:yes">&nbsp; </span>□房屋整体外观 
		□客厅 □厨房 □孩子卧室 □户口本</td>
	</tr>
	<tr height="24" style="mso-height-source:userset;height:18.0pt">
		<td colspan="14" height="24" width="768" style="height: 18.0pt; width: 579pt" class="style4">
		2.家庭存在重大疾病支出，以下内容是否拍摄：□病历诊断书<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>
		□服用药品<span style="mso-spacerun:yes">&nbsp; </span>□治疗费用清单 □其他证明材料<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
	</tr>
	<tr height="40" style="mso-height-source:userset;height:30.0pt">
		<td height="80" width="41" style="height: 60.0pt; width: 31pt" class="style4">
		贫困原因概括</td>
		<td colspan="14" width="768" style="width: 579pt" class="style4">
		父亲在家务农，地本来就少，一年收入也就5000-6000元，连家庭基本开支都勉强，母亲有精神病，没办法照顾我们，还需要父亲照顾，导致父亲没办法外出打工；母亲定期还需要服药治疗，我和弟弟还在读书，这些开支一年下来也要一万多元，一直都依靠借钱度日，现在已经欠下了两万元的债务。</td>
	</tr>
	<tr height="53" style="mso-height-source:userset;height:39.95pt">
		<td height="53" width="41" style="height: 39.95pt; width: 31pt" class="style4">
		学生评价</td>
		<td colspan="14" width="768" style="width: 579pt" class="style30">
		学生本身性格比较文静内向、学习成绩不错，也比较有礼貌；父亲不擅言谈，但有问必答，母亲一直坐在旁边看不说话，也无其他反应；弟弟比较活泼调皮</td>
	</tr>
	<tr height="40" style="mso-height-source:userset;height:30.0pt">
		<td rowspan="2" height="80" width="41" style="height: 60.0pt; width: 31pt; layout-flow: vertical-ideographic;" class="style4">
		走访结论</td>
		<td colspan="14" width="768" style="width: 579pt" class="style31">
		经核实家庭情况如上所述，有相关的资料和照片</td>
	</tr>
	<tr height="40" style="mso-height-source:userset;height:30.0pt">
		<td colspan="14" height="40" width="768" style="height: 30.0pt; width: 579pt" class="style4">
		是否建议资助（打 √）： □十分困难，短期难有改善，强烈建议捐助<span style="mso-spacerun:yes">&nbsp; </span>
		□暂时困难，建议捐助<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>□不建议捐助<span style="mso-spacerun:yes">&nbsp;&nbsp;</span></td>
	</tr>
	<tr height="33" style="mso-height-source:userset;height:24.95pt">
		<td colspan="3" height="33" style="height: 24.95pt; " class="style4">
		走访人签名</td>
		<td colspan="3" width="207" style="width: 156pt" class="style5">****</td>
		<td width="53" style="width: 40pt" class="style2">电话：</td>
		<td colspan="3" class="style5">
		12345678910</td>
		<td width="101" style="width: 76pt" class="style2">走访时间：</td>
		<td colspan="4" width="208" style="width: 157pt" class="style5">2017.6.1</td>
	</tr>
	<tr height="46" style="mso-height-source:userset;height:35.1pt">
		<td colspan="15" height="46" width="809" style="height: 35.1pt; width: 610pt" class="style4">
		<font class="font7">为使申请学生能获得社会爱心人士的资助，学生及其监护人</font><font class="font10">同意授权</font><font class="font7">好友营在网站和其他公众媒体刊登上述基本情况、求助信息和申请人照片。</font><font class="font11"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font6">监护人签名：</font><font class="font5">****</font><font class="font12"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</span></font><font class="font11"><span style="mso-spacerun:yes">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></font><font class="font6">日期：</font><font class="font5">2017.6.1</font></td>
	</tr>
	<tr height="40" style="mso-height-source:userset;height:30.0pt">
		<td colspan="15" height="40" width="809" style="height: 30.0pt; width: 610pt" class="style4">
		注：表上的每项内容敬请仔细填写，请勿漏填。“走访评价”应写详细，避免同批资料同一模式，应是走访志愿者的直观、主观印象，前面表格无法涵括的内容都可以在这里描述。</td>
	</tr>
</table>