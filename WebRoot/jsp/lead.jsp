<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>领导下发任务</title>
<link rel="stylesheet" type="text/css" href="../source/themes/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="../source/themes/icon.css"></link> 
<script type="text/javascript" src="../source/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../source/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../source/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	
	<table id="dg" class="easyui-datagrid" title="领导下发任务" style="width:800px;height:auto"
			data-options="
				iconCls: 'icon-edit',
				singleSelect: true,
				toolbar: '#tb',
				url: 'datagrid_data1.json',
				method: 'get',
				onClickRow: onClickRow,
				pagination:true,
				pageSize:10
			">
		<thead>
			<tr>
				<th data-options="field:'id',width:80">序号</th>
				<th data-options="field:'taskType',width:100,
						formatter:function(value,row){
							return row.taskType;
						},
						editor:{
							type:'combobox',
							options:{
								valueField:'productname',
								textField:'productid',
								method:'get',
								url:'products.json',
								required:true
							}
						}">任务类型</th>
			<th data-options="field:'executeDate',width:80,align:'right',editor:'text'">执行时间</th>
				<th data-options="field:'executeUser',width:80,align:'right',editor:'text'">执行人</th>
				<th data-options="field:'title',width:80,editor:'text'">标题</th>
				<th data-options="field:'link',width:80,editor:'text'">链接</th>
				<th data-options="field:'printscreen',width:80,editor:'text'">截图</th>
				<th data-options="field:'exenum',width:80,editor:'numberbox'">执行行数</th>
				<th data-options="field:'unit',width:80,editor:'text'">单位</th>
			</tr>
		</thead>
	</table>
 
	<div id="tb" style="height:auto">
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="append()">添加</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" onclick="accept()">保存</a>
	</div>
	
	<script type="text/javascript">
		var editIndex = undefined;
		function endEditing(){
			if (editIndex == undefined){
				return true;
				}
			if ($('#dg').datagrid('validateRow', editIndex)){
				var ed = $('#dg').datagrid('getEditor', {index:editIndex,field:'taskType'});
				var productname = $(ed.target).combobox('getText');
				$('#dg').datagrid('getRows')[editIndex]['taskType'] = productname;
				$('#dg').datagrid('endEdit', editIndex);
				editIndex = undefined;
				return true;
			} else {
				return false;
			}
		}
		//点击行
		function onClickRow(index){
			if (editIndex != index){
				if (endEditing()){
					$('#dg').datagrid('selectRow', index)
							.datagrid('beginEdit', index);
					editIndex = index;
					var da = $("#dg").datagrid("getSelected");
<%--					alert(da.id);--%>
				} else {
					$('#dg').datagrid('selectRow', editIndex);
				}
			}
		}
		function accept(){
			
			if (endEditing()){
				$('#dg').datagrid('acceptChanges');
			}
			var row = $("#dg").datagrid("getSelected");
			alert(row.id);
<%--			editIndex = $('#dg').datagrid('getRows').length-1;--%>
<%--			var row = $('#dg').datagrid('getSelected');--%>
<%--			var row = $("#dg").datagrid('getRows');--%>
<%--			alert(row[0].executeDate );--%>

		}
		
		function append(){
<%--			editIndex = $('#dg').datagrid('getRows').length;--%>
<%--			$("#dg").datagrid('insertRow',{index:0,row:{id:'11'}});--%>
			
			
			if (endEditing()){
				editIndex = $('#dg').datagrid('getRows').length;
				$('#dg').datagrid('insertRow',{index:0,row:{}});
				$('#dg').datagrid('selectRow', 0)
						.datagrid('beginEdit', 0);
			}

		}
		
		function removeit(){
			if (editIndex == undefined){return}
			$('#dg').datagrid('cancelEdit', editIndex)
					.datagrid('deleteRow', editIndex);
			editIndex = undefined;
		}
		
		function reject(){
			$('#dg').datagrid('rejectChanges');
			editIndex = undefined;
		}
		function getChanges(){
			var rows = $('#dg').datagrid('getChanges');
			alert(rows.length+' rows are changed!');
		}
	</script>
</body>