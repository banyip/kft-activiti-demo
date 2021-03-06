/**
 * 请假流程任务办理
 */
$(function() {

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
    
    // 跟踪
    $('.trace').click(graphTrace);
    
});


// 用于保存加载的详细信息
var detail = {};

//count the poor score

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
function inserttable() {
	var newnode = $('.yltable')[0].cloneNode(true);
    var content = newnode.innerHTML;
	content = content.replace(/\[0\]/g, "["+ $('#div_bjbr')[0].chileElementCount + "]");
	content = "<table class='yltable'>" + content + "</table>";
	
	if($('#div_bjbr')[0].childNodes.length <=6){
    $('#div_bjbr').append(content);

	}else{
		alert("最多同时添加5个信息!");
	}
}

function insertrow(classname) {
	var newnode = $('.'+classname)[0].cloneNode(true);
    var content = newnode.outerHTML;
	content = content.replace(/\[0\]/g, "["+ $('.'+classname).length + "]");

    $('.'+classname)[0].after(content);
}


//删除
function deletetable() {
	var parent = $('#div_bjbr')[0];
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
function loadPartlyDetailWithTaskVars(leaveId, taskId, callback) {
    var dialog = this;
    $.getJSON(ctx + '/oa/leave/detail-with-vars/' + leaveId + "/" + taskId, function(data) {
        detail = data;
        $.each(data, function(k, v) {
            // 格式化日期
			if (k == 'applyTime' || k == 'startTime' || k == 'endTime') {
				$('.partly#' + k ).html(new Date(v).format('yyyy-MM-dd hh:mm'));
            } 
            else if (k == 'relatives') 
            {                
                for(var i=0;i<v.length;i++)
                {
                    $(':input[id^=relatives\\['+i+'\\]]').removeAttr("disabled");   
                    for(let key in v[i])
                        $('input[name=relatives\\['+i+'\\]_' + key).val(eval('v['+i+'].'+key));   
                }
            } else if (k.substr(0,2) == 'if') 
            {
                 $("input[type=radio][name="+k+"][value="+v+"]").attr("checked",true);                
            } else {
				$('input[name=' + k + ']' ).val(v);
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
function complete(taskId, variables) {
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
    $.post(ctx + '/oa/leave/complete/' + taskId, {
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
}


/*
 * 使用json方式定义每个节点的按钮
 * 以及按钮的功能
 * 
 * open:打开对话框的时候需要处理的任务
 * btns:对话框显示的按钮
 */




var handleOpts = {
		        
		familyinput: {
			width: 1000,
			height: 770,
			open: function(id, taskId) {
				var dialog = this;
				
				$('#startTime,#endTime', this).datetimepicker({
		            stepMinute: 5
		        });
				
				// 打开对话框的时候读取请假内容
				loadDetailWithTaskVars.call(this, id, taskId, function(data) {
					// 显示驳回理由
					$('.info').show().html("<b>领导：</b>" + (data.variables.leaderBackReason || "") + "<br/><b>HR：</b>" + (data.variables.hrBackReason || ""));
					
					// 读取原请假信息
					$('#modifyApplyContent #leaveType option[value=' + data.leaveType + ']').attr('selected', true);
					$('#modifyApplyContent #startTime').val(new Date(data.startTime).format('yyyy-MM-dd hh:mm'));
					$('#modifyApplyContent #endTime').val(new Date(data.endTime).format('yyyy-MM-dd hh:mm'));
					$('#modifyApplyContent #reason').val(data.reason);
				});
				
				// 切换状态
				$("#radio").buttonset().change(function(){
					var type = $(':radio[name=reApply]:checked').val();
					if (type == 'true') {
						$('#modifyApplyContent').show();
					} else {
						$('#modifyApplyContent').hide();
					}
				});
			},
			btns: [{
				text: '提交',
				click: function() {
					var taskId = $(this).data('taskId');
					var reApply = $(':radio[name=reApply]:checked').val();
					
			        var content2 = "";
			        for (let i = 0; i<$('#div_bjbr').find(".yltable").length ; i++ ){
			            var yltable = $('#div_bjbr').find(".yltable")[i];
			            var content1 = "";
			            for (let index = 0; index <  $(yltable).find(".abc").length; index++) {
			                content1 =  content1 + ":" + $(yltable).find(".abc")[index].value ;
			                
			            }
			            content1=content1.substr(1);
			            content2=content2 + ";" +content1;
			        }
			        content2=content2.substr(1);
			        
			        $('#relative')[0].value = content2;
			        $('#relative')[0].value = content2;

					
					// 提交的时候把变量
					complete(taskId, [{
						key: 'reApply',
						value: reApply,
						type: 'B'
					}, {
						key: 'relatives',
						value: $('#relative')[0].value,
						type: 'S'
					}
					]);
				}
			},{
				text: '取消',
				click: function() {
					$(this).dialog('close');
				}
			}]
		},

		postvisit: {
			width: 1300,
			height: 570,
			open: function(id, taskId) {
				var dialog = this;
				
				$('#startTime,#endTime', this).datetimepicker({
		            stepMinute: 5
		        });
				
				// 打开对话框的时候读取请假内容
				loadPartlyDetailWithTaskVars.call(this, id, taskId, null);
				

			},
			btns: [{
				text: '提交',
				click: function() {
					var taskId = $(this).data('taskId');
					var reApply = $(':radio[name=reApply]:checked').val();
                    var variables = [{
						key: 'reApply',
						value: reApply,
						type: 'B'
					}
                    ];
                    $.each($('.postvisit'),function()
                        {
                            if(this.disabled==false)
                            variables.push({
                                key: this.id,
                                value: this.value,
                                type: 'S'
                            });
                        }
                    );
                    alert(variables);
					
					
					// 提交的时候把变量
					complete(taskId, variables);
				}
			},{
				text: '取消',
				click: function() {
					$(this).dialog('close');
				}
			}]
		},

		poorevaluate: {
			width: 900,
			height: 770,
			open: function(id, taskId) {
				var dialog = this;
				
				$('#leave_poorEvaluateDate', this).datetimepicker({
		            stepMinute: 5
		        });
	            $('#leave_poorEvaluateDate').datetimepicker('setDate', new Date());	
				// 打开对话框的时候读取请假内容
				loadPartlyDetailWithTaskVars.call(this, id, taskId, null);
				

			},
			btns: [{
				text: '提交',
				click: function() {
					var taskId = $(this).data('taskId');
					var reApply = $(':radio[name=reApply]:checked').val();
                    var variables = [{
						key: 'reApply',
						value: reApply,
						type: 'B'
					}
                    ];
                    $.each($('.poorevaluate'),function()
                        {
                            if(this.disabled==false)
                            variables.push({
                                key: this.id,
                                value: this.value,
                                type: 'S'
                            });
                        }
                    );
                    alert(variables);
					
					
					// 提交的时候把变量
					complete(taskId, variables);
				}
			},{
				text: '取消',
				click: function() {
					$(this).dialog('close');
				}
			}]
		},




 firstaudit: {
		width: 300,
		height: 300,
		open: function(id) {
			// 打开对话框的时候读取请假内容
			loadDetail.call(this, id);
		},
		btns: [{
			text: '同意',
			click: function() {
				var taskId = $(this).data('taskId');
				
                // 设置流程变量
                 var variables = [{
					key: 'hrPass',
					value: true,
					type: 'B'
                }];
               $.each($('.firstaudit'),function()
                {
                    if(this.disabled==false)
                    variables.push({
                        key: this.id,
                        value: this.value,
                        type: 'S'
                    });
                }            
                );

				complete(taskId,variables); 
 			}
		}, {
			text: '驳回',
			click: function() {
				var taskId = $(this).data('taskId');
				
				$('<div/>', {
					title: '填写驳回理由',
					html: "<textarea id='hrBackReason' style='width: 250px; height: 60px;'></textarea>"
				}).dialog({
					modal: true,
					buttons: [{
						text: '驳回',
						click: function() {
							var hrBackReason = $('#hrBackReason').val();
							if (hrBackReason == '') {
								alert('请输入驳回理由！');
								return;
							}
							
							// 设置流程变量
							complete(taskId, [{
								key: 'hrPass',
								value: false,
								type: 'B'
							}, {
								key: 'hrBackReason',
								value: hrBackReason,
								type: 'S'
							}]);
						}
					}, {
						text: '取消',
						click: function() {
							$(this).dialog('close');
							$('#deptLeaderAudit').dialog('close');
						}
					}]
				});
			}
		}, {
			text: '取消',
			click: function() {
				$(this).dialog('close');
			}
		}]
	},
	modifyApply: {
		width: 500,
		height: 470,
		open: function(id, taskId) {
			var dialog = this;
			
			$('#startTime,#endTime', this).datetimepicker({
	            stepMinute: 5
	        });
			
			// 打开对话框的时候读取请假内容
			loadDetailWithTaskVars.call(this, id, taskId, function(data) {
				// 显示驳回理由
				$('.info').show().html("<b>领导：</b>" + (data.variables.leaderBackReason || "") + "<br/><b>HR：</b>" + (data.variables.hrBackReason || ""));
				
				// 读取原请假信息
				$('#modifyApplyContent #leaveType option[value=' + data.leaveType + ']').attr('selected', true);
				$('#modifyApplyContent #startTime').val(new Date(data.startTime).format('yyyy-MM-dd hh:mm'));
				$('#modifyApplyContent #endTime').val(new Date(data.endTime).format('yyyy-MM-dd hh:mm'));
				$('#modifyApplyContent #reason').val(data.reason);
			});
			
			// 切换状态
			$("#radio").buttonset().change(function(){
				var type = $(':radio[name=reApply]:checked').val();
				if (type == 'true') {
					$('#modifyApplyContent').show();
				} else {
					$('#modifyApplyContent').hide();
				}
			});
		},
		btns: [{
			text: '提交',
			click: function() {
				var taskId = $(this).data('taskId');
				var reApply = $(':radio[name=reApply]:checked').val();
				
				// 提交的时候把变量
				complete(taskId, [{
					key: 'reApply',
					value: reApply,
					type: 'B'
				}, {
					key: 'leaveType',
					value: $('#modifyApplyContent #leaveType').val(),
					type: 'S'
				}, {
					key: 'startTime',
					value: $('#modifyApplyContent #startTime').val(),
					type: 'D'
				}, {
					key: 'endTime',
					value: $('#modifyApplyContent #endTime').val(),
					type: 'D'
				}, {
					key: 'reason',
					value: $('#modifyApplyContent #reason').val(),
					type: 'S'
				}]);
			}
		},{
			text: '取消',
			click: function() {
				$(this).dialog('close');
			}
		}]
	},
	reportBack: {
		width: 400,
		height: 400,
		open: function(id, taskId) {
			// 打开对话框的时候读取请假内容
			loadDetail.call(this, id, taskId);
			$('#realityStartTime,#realityEndTime').datetimepicker({
	            stepMinute: 5
	        });
		},
		btns: [{
			text: '提交',
			click: function() {
				var realityStartTime = $('#realityStartTime').val();
				var realityEndTime = $('#realityEndTime').val();
				
				if (realityStartTime == '') {
					alert('请选择实际开始时间！');
					return;
				}
				
				if (realityEndTime == '') {
					alert('请选择实际结束时间！');
					return;
				}
				
				var taskId = $(this).data('taskId');
				complete(taskId, [{
					key: 'realityStartTime',
					value: realityStartTime,
					type: 'D'
				}, {
					key: 'realityEndTime',
					value: realityEndTime,
					type: 'D'
				}]);
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
function handle() {
	// 当前节点的英文名称
	var tkey = $(this).attr('tkey');
	
	// 当前节点的中文名称
	var tname = $(this).attr('tname');
	
	// 请假记录ID
	var rowId = $(this).parents('tr').attr('id');
	
	// 任务ID
	var taskId = $(this).parents('tr').attr('tid');
	
	// 使用对应的模板
	$('#' + tkey).data({
		taskId: taskId
	}).dialog({
		title: '流程办理[' + tname + ']',
		modal: true,
		width: handleOpts[tkey].width,
		height: handleOpts[tkey].height,
		open: function() {
			handleOpts[tkey].open.call(this, rowId, taskId);
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