var innerhtmls=new Map();


/**
 * 请假流程任务办理
 */
$(function() {
/*
$("#drop-area").dmUploader({
  url: '/path/to/backend/upload.asp',
  //... More settings here...
  
  onInit: function(){
    console.log('Callback: Plugin initialized');
  }
});
*/


    // 签收
    $('.claim').button({
        icons: {
            primary: 'ui-icon-person'
        }
    });
    
    // 办理
    $('.handle').button({
        icons: {
            primary: 'ui-icon-comment'
        }
    }).click(handle);
    
        // 办理
    $('.deleterow').button({
        icons: {
            primary: 'ui-icon-comment'
        }
    }).click(deletestudent);
    // 跟踪
    $('.trace').click(graphTrace);
     $.each($('.div_maindialog'),function(){
        innerhtmls.set(this.id,this.innerHTML);
        });
});


// 用于保存加载的详细信息
var detail = {};

//count the poor score

function showSinglePic(myparent,filename,aid)
{
	var id=aid.substring(1);
	myparent.find(id).hide();
	myparent.find(aid).show();
    myparent.find(aid).attr('href',ctx+'/zhuxue/student/showPic/'+filename);                
    myparent.find(aid).text("显示图片");
	
}

function showMultiplePics(myparent,filenamesstr,aid)
{
    var aobj = myparent.find(aid);
    var id = 'input'+aid.substring(1);    
    if(aobj.length>0)
    {  
        var content = aobj[0].cloneNode(true).outerHTML;
        if(filenamesstr!=null&&filenamesstr.length>0)
        {
        	$(myparent.find(id)[0]).css('visibility', 'hidden');;
            var filenames=filenamesstr.split(":",-1);
            for(var ii =0; ii<filenames.length;ii++)
                if(filenames[ii].length>0)
                {
                    aobj = myparent.find(aid);
                    if(ii==aobj.length)
                        {                                                    		
                            //var content1 = content.replace(photokey, photokey+ii);
                            $(aobj[ii-1]).after("<br/>"+content);
                        }                    
                    $(myparent.find(aid)[ii]).css('visibility', 'visible');
                    $(myparent.find(aid)[ii]).attr('href',ctx+'/zhuxue/student/showPic/'+filenames[ii]);
                    $(myparent.find(aid)[ii]).text("显示图片");
                }                                            
        }
        else
        {
    		//var inputcontent = '<input type="file" multiple=multiple class="studentPhoto" type="file" id="'+id+'">';
    		
    		//$(aobj[0]).after(inputcontent);
        	aobj = myparent.find(aid);
        	$(aobj[0]).remove();
        	$(myparent.find(id)[0]).css('visibility', 'visible');
        	
        }
    }
}
function countPoorScore()
{
    var totalScore=0;
    $.each($(':input[id^=leave_poorEvaluateScore]'),function()
                        {
                            if(this.value.length>0)
                              totalScore = totalScore + parseInt(this.value);
                        }
                    );
    $('#leave_poorEvaluateTotalScore').val(totalScore);
}


//增加

function inserttable(whichpage,whichpart) {
    tableclass='class_'+whichpart
    divid="div_"+whichpart
    myparent=$('#'+whichpage);
	var newnode = myparent.find('.'+tableclass)[0].cloneNode(true);
    var content = newnode.innerHTML;
	content = content.replace(/\[0\]/g, "["+ myparent.find("."+tableclass).length + "]");
	content = "<table class='"+tableclass+"'>" + content + "</table>";
	if(myparent.find('.'+tableclass).length <=7){
    myparent.find('#'+divid).append(content);
    var aobjs = $(myparent.find('.'+tableclass+':last-child')).find("a");
    aobjs.each(function(){
     		$(this).css('visibility', 'hidden');
    		//var inputcontent = '<input type="file" multiple=multiple class="studentPhoto" type="file" id="'+$(this).attr('id')+'">';
    		//$(this).after(inputcontent);
    	});
    aobjs = $(myparent.find('.'+tableclass+':last-child')).find("input");
    aobjs.each(function(){
    		$(this).css('visibility', 'visible');
    		//var inputcontent = '<input type="file" multiple=multiple class="studentPhoto" type="file" id="'+$(this).attr('id')+'">';
    		//$(this).after(inputcontent);
    	}); 
 	}else{
		alert("最多同时添加5个信息!");
	}
}

//add audits part
function insertaudit(whichpage) {
    tableclass='class_audits'
    divid="div_audits";
    myparent=$('#'+whichpage);
	var newnode = myparent.find('.'+tableclass)[0].cloneNode(true);
    var content = newnode.innerHTML;
    content = content.replace(/audits\[0\]/g, "audits["+ myparent.find('.'+tableclass).length + "]");
    content = content.replace(/audits\\\\\[0\\\\\]/g, "audits\\\\\["+ myparent.find('.'+tableclass).length + "\\\\\]");
    content = content.replace(/初审评价/g, "复审评价");
    content = "<table class='"+tableclass+"'>" + content + "</table>";
	
	if(myparent.find('.'+tableclass).length <=6){
    myparent.find('#'+divid).append(content);

	}else{
		alert("最多同时添加5个信息!");
	}
}

function insertauditPhotos(whichpage,whichpart) 
{    
    tableclass='class_'+whichpart
    divid="div_"+whichpart
    pageid='[id$="student"]';  
    myparent=$('#'+whichpage);
	var newnode =myparent.find('.'+tableclass)[0].cloneNode(true);
    var content = newnode.innerHTML;
	content = content.replace(/auditPhoto\[0\]/g, "auditPhoto["+ myparent.find(tableclass).length + "]");
	content = "<table class='"+tableclass+"'>" + content + "</table>";
	
	if(myparent.find('.'+tableclass).length <=6){
    myparent.find('#'+divid).append(content);
/*    myparent.find('[id$="Time"],[id$="Date"]').datetimepicker({
            stepMinute: 5
    });*/
	}else{
		alert("最多同时添加5个信息!");
	}
}




//删除
function deletetable(whichpage,divid) {
    var myparent=$('#'+whichpage);
	var parent = myparent.find('#div_'+divid)[0];
	if (parent.childNodes.length > 1) {
		parent.removeChild(parent.lastChild);
	}
}

/**
 * 加载详细信息
 * @param {Object} id
 */
function loadDetail(id, withVars, callback) {
    var dialog = this;
    $.getJSON(ctx + '/oa/leave/detail/' + id, function(data) {
        detail = data;
        $.each(data, function(k, v) {
			
			// 格式化日期
			if (k == 'applyTime' || k == 'startTime' || k == 'endTime') {
				$('.view-info td[name=' + k + ']', dialog).text(new Date(v).format('yyyy-MM-dd hh:mm'));
			} else {
	            $('.view-info td[name=' + k + ']', dialog).text(v);
			}
			
        });
		if ($.isFunction(callback)) {
			callback(data);
		}
    });
}

/**
 * 加载详细信息，同时读取流程任务变量
 * @param {Object} id
 */
function loadDetailWithTaskVars(leaveId, taskId, callback) {
    var dialog = this;
    $.getJSON(ctx + '/oa/leave/detail-with-vars/' + leaveId + "/" + taskId, function(data) {
        detail = data;
        $.each(data, function(k, v) {
            // 格式化日期
			if (k == 'applyTime' || k == 'startTime' || k == 'endTime') {
				$('.view-info td[name=' + k + ']', dialog).text(new Date(v).format('yyyy-MM-dd hh:mm'));
			} else {
	            $('.view-info td[name=' + k + ']', dialog).text(v);
			}
        });
		if ($.isFunction(callback)) {
			callback(data);
		}
    });
}


/**
 * 加载详细信息，同时读取流程任务变量
 * @param {Object} id
 */
function loadPartlyDetailWithTaskVars(whichpage,leaveId,  callback) {
    $('#'+whichpage)[0].innerHTML = innerhtmls.get(whichpage);
    var dialog = this;
    var myparent=$('#'+whichpage);
    $.getJSON(ctx + '/zhuxue/student/detail-with-vars/' + leaveId , function(data) {
        detail = data;
        $.each(data, function(k, v) {
            // 格式化日期
			if (k == 'applyTime' || k == 'startTime' || k == 'endTime') {
				myparent.find('.partly#' + k ).html(new Date(v).format('yyyy-MM-dd hh:mm'));
            } 
            else if (k == 'schools' || k == 'relatives' || k == 'transfers' || k == 'exams' || k == 'transfers' || k == 'communicates' || k == 'evaluates') 
            {                
                for(var i=0;i<v.length;i++)
                {   
                    if(i>0)
                        inserttable(whichpage,k)
                    for(let key in v[i])
                    {
                        if(key.indexOf("picture")>=0||key.indexOf("Picture")>=0||key.indexOf("Photo")>=0)
                        {
                        	showMultiplePics(myparent,eval('v['+i+'].'+key),'a[id="'+k+'\\['+i+'\\]_' + key+'"].studentPhoto');
                        }
                        else
                            myparent.find('input[id="'+k+'\\['+i+'\\]_' + key+'"].studentApply').val(eval('v['+i+'].'+key));   
                    }                        
                }
            }
            else if (k == 'audits') 
            {                
                for(var i=0;i<v.length;i++)
                {   
                    if(i>1)
                        inserttable(whichpage,k)
                    for(let key in v[i])
                    {
                        if(key=="auditPhotos")                  
                            for(var j=0;j<eval('v['+i+'].'+key).length;j++)
                                {          
                            	    //超过1行加一行
                                    if(j>0)
                                        //add line
                                    	inserttable(whichpage,'audits\\['+i+'\\]_'+'auditPhotos');
                                        //insertauditPhotos(whichpage,'audits\\['+i+'\\]_'+'auditPhotosa');
                                    for(let photokey in eval('v['+i+'].'+key+'['+j+']'))
                                    {
                                        if(photokey.indexOf("photoDate")>=0)
                                            myparent.find('#audits\\['+i+'\\]_'+key+'\\['+j+'\\]_' + photokey).val(eval('v['+i+'].'+key+'['+j+'].'+photokey));
                                        else{
                                        	showMultiplePics(myparent,eval('v['+i+'].'+key+'['+j+'].'+photokey),'a[id="audits\\['+i+'\\]_'+key+'\\['+j+'\\]_' + photokey+'"]');
                                       }
                                    }
                                                                           //add line
                                   // insertauditPhotos(whichpage,'audits\\['+i+'\\]_'+'auditPhotosa');
                                }   
                        else if(key.indexOf("picture")>=0||key.indexOf("Picture")>=0||key.indexOf("Photo")>=0)
                        {
                            var filename=eval('v['+i+'].'+key);
                            if(filename!=null&&filename.length>0)
                            {
                            	showMultiplePics(myparent,filename,'a[id="'+k+'\\['+i+'\\]_' + key+'"].studentPhoto');
                            	/*
                            	myparent.find('[id="'+k+'\\['+i+'\\]_' + key+'"].studentPhoto').hide();
                            	myparent.find('a[id="'+k+'\\['+i+'\\]_' + key+'"].studentPhoto').show();
                                myparent.find('a[id="'+k+'\\['+i+'\\]_' + key+'"].studentPhoto').attr('href',ctx+'/zhuxue/student/showPic/'+filename);                
                                myparent.find('a[id="'+k+'\\['+i+'\\]_' + key+'"].studentPhoto').text("显示图片");
                       */ 
                            }
                        }
                        else
                            myparent.find('input[id="audits\\['+i+'\\]_' + key+'"].studentApply').val(eval('v['+i+'].'+key));   
                
                    }
                    //add line
                }
            }else if (k == 'picture') 
            {
                if(v!=null&&v.length>0)
                {
                    myparent.find("a[name="+k+"].studentPhoto").attr('href',ctx+'/zhuxue/student/showPic/'+v);                
                    myparent.find("a[name="+k+"].studentPhoto").text("显示图片");
                }
            }
             else if (k.substr(0,2) == 'if') 
            {
                if(v=="true")
                 myparent.find("input[type=checkbox][name="+k+"].studentApply").attr("checked",true);                
            } 
            else {
				myparent.find('[name=' + k + '].studentApply' ).val(v);
			}
        });
		if ($.isFunction(callback)) {
			callback(data);
		}
    });
}



/**
 * 完成任务
 * @param {Object} taskId
 */
function complete(variables,url,filenames,files) {
    var dialog = this;
    
	// 转换JSON为字符串
    var keys = "", values = "", types = "";
	if (variables) {
		$.each(variables, function() {
			if (keys != "") {
				keys += ",";
				values += ",";
				types += ",";
			}
			keys += this.key;
			values += this.value;
			types += this.type;
		});
	}
	
	$.blockUI({
        message: '<h2><img src="' + ctx + '/images/ajax/loading.gif" align="absmiddle"/>正在提交请求……</h2>'
    });
	
    // 发送任务完成请求
    var form=new FormData();
    form.append("keys",keys);
    form.append("values",values);
    form.append("types",types);
    form.append("filenames",filenames);
    $.each(files, function() {
            form.append("studentpictures",this);
			});

    $.ajax({
        url:ctx+url ,
        type:"post",
        data:form,
        processData:false,
        contentType:false,
        cache: false,
        success:function(data){
                    
                    alert("保存成功！");
                    location.reload();
                },
                error:function(e){
                    alert("错误！！");
                    location.reload();                   
                }
    });
    
    /*
    $.post(ctx + '/zhuxue/student/newstudent/' , {
        keys: keys,
        values: values,
        types: types
    }, function(resp) {
		$.unblockUI();
        if (resp == 'success') {
            alert('任务完成');
            location.reload();
        } else {
            alert('操作失败!');
        }
    });
    */
}


/*
 * 使用json方式定义每个节点的按钮
 * 以及按钮的功能
 * 
 * open:打开对话框的时候需要处理的任务
 * btns:对话框显示的按钮
 */




var handleOpts = {
			newstudent: {
			width: 1100,
			height: 700,
			open: function(id) {
				var dialog = this;
			/*	
            $('[id$="Time"],[id$="Date"]').datetimepicker({
                    stepMinute: 5
            });
            $('[id$="Time"],[id$="Date"]').datetimepicker('setDate', new Date());
            */
				// 打开对话框的时候读取请假内容
				

			},
			btns: [{
				text: '提交',
				click: function() {					
					var reApply = $(':radio[name=reApply]:checked').val();
                    var variables = [{
						key: 'reApply',
						value: reApply,
						type: 'B'
					}
                    ];
			 /*       var content2 = "";
			        for (let i = 0; i<$('#div_bjbr').find(".yltable").length ; i++ ){
			            var yltable = $('#div_bjbr').find(".yltable")[i];
			            var content1 = "";
			            for (let index = 0; index <  $(yltable).find(".relative").length; index++) {
			                content1 =  content1 + ":" + $(yltable).find(".relative")[index].value ;
			                
			            }
			            content1=content1.substr(1);
			            content2=content2 + ";" +content1;
			        }
			        content2=content2.substr(1);
			        
			        $('#relative')[0].value = content2;
*/
                    myparent=$('#newstudent');
                    $.each(myparent.find('.studentApply'),function()
                        {
                            if(this.type=="checkbox")
                            variables.push({
                                key: this.id,
                                value: this.checked,
                                type: 'S'
                            });
                            else if(this.disabled==false&&this.value!=null)
                            variables.push({
                                key: this.id,
                                value: this.value,
                                type: 'S'
                            });
                        }
                    );
                    var filenames="";
                    var files = new Array();
					 $.each($(':file.studentPhoto'),function()
                        {
                            for(var i=0;i<this.files.length;i++)
                            {
                                filenames = filenames +":" +  this.id ;
                                files.push(this.files[i]);
                            }
                        }                        
                    );
					filenames = filenames.substr(1);
					// 提交的时候把变量
					complete(variables,'/zhuxue/student/newstudent/',filenames,files);
				}
			},{
				text: '取消',
				click: function() {
					$(this).dialog('close');
				}
			}]
		},

editstudent: {
			width: 1300,
			height: 570,
			open: function(id) {
				var dialog = this;
				

                
                
				// 打开对话框的时候读取请假内容
				loadPartlyDetailWithTaskVars.call(this, "editstudent",id, null);

			},
			btns: [{
				text: '提交',
				click: function() {
					var reApply = $(':radio[name=reApply]:checked').val();
                    var variables = [{
						key: 'reApply',
						value: reApply,
						type: 'B'
					}
                    ];
                    myparent=$('#editstudent');
                    $.each(myparent.find('.studentApply'),function()
                        {
                            if(this.type=="checkbox")
                            variables.push({
                                key: this.id,
                                value: this.checked,
                                type: 'S'
                            });
                            else if(this.disabled==false&&this.value!=null)
                            variables.push({
                                key: this.id,
                                value: this.value,
                                type: 'S'
                            });
                        }
                    );
                    var filenames="";
                    var files = new Array();
					 $.each($(':file.studentPhoto'),function()
                        {
                            if(this.files.length>0)
                            {
                                filenames = filenames + ":" +this.id;
                                files.push(this.files[0]);
                            }
                        }                        
                    );
					filenames = filenames.substr(1);
					
					
					// 提交的时候把变量
					complete(variables,'/zhuxue/student/editstudent/',filenames,files);
				}
			},{
				text: '取消',
				click: function() {
					$(this).dialog('close');
				}
			}]
		}

};

/**
 * 办理流程
 */
function deletestudent() {
	// 当前节点的英文名称
	var tkey = $(this).attr('tkey');
	
	// 当前节点的中文名称
	var tname = $(this).attr('tname');
	
	// 请假记录ID
	var rowId = $(this).parents('tr').attr('id');
	
   $.post(ctx + '/zhuxue/student/deletestudent/'+rowId ,{}, function(resp) {
		$.unblockUI();
        if (resp == 'success') {
            alert('任务完成');
            location.reload();
        } else {
            alert('操作失败!');
        }
    });
}




/**
 * 办理流程
 */
function handle() {
	// 当前节点的英文名称
	var tkey = $(this).attr('tkey');
	
	// 当前节点的中文名称
	var tname = $(this).attr('tname');
	
	// 请假记录ID
	var rowId = $(this).parents('tr').attr('id');
	

	
	// 使用对应的模板
	$('#' + tkey).dialog({
		title: '学生信息修改',
		modal: true,
		width: handleOpts[tkey].width,
		height: handleOpts[tkey].height,
		open: function() {
			handleOpts[tkey].open.call(this, rowId);
		},
		buttons: handleOpts[tkey].btns
	});
}

Date.prototype.format = function(format) {
    var o = {
        "M+": this.getMonth() + 1, //month 
        "d+": this.getDate(), //day 
        "h+": this.getHours(), //hour 
        "m+": this.getMinutes(), //minute 
        "s+": this.getSeconds(), //second 
        "q+": Math.floor((this.getMonth() + 3) / 3), //quarter 
        "S": this.getMilliseconds() //millisecond 
    }
    if (/(y+)/.test(format)) 
        format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o) 
        if (new RegExp("(" + k + ")").test(format)) 
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
    return format;
}