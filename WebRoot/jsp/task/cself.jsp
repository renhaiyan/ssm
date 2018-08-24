<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String markImage = (String) request.getSession().getAttribute("markImage");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>汇总结果</title>

<link rel="stylesheet" type="text/css" href="<%=basePath%>pages/css/easy/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="<%=basePath%>pages/css/easy/icon.css"></link> 
<script type="text/javascript" src="<%=basePath%>pages/js/basic/jquery.js"></script>
<script type="text/javascript" src="<%=basePath%>pages/js/basic/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>pages/js/basic/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>pages/css/index/stylebk.css?v=1.1"/>
</head>
<body>
<div class="task-rw-right-2" style="background-image: -webkit-cross-fade(url(pages/img/mark_water.jpg), url(<%=markImage%>), 10%);height:1000px;">	

	<div style="margin: 10px 10px 10px 10px;">
			开始时间: <input id="start" class="easyui-datebox" style="width:100px">
			结束时间: <input id="end" class="easyui-datebox" style="width:100px">
			地域: 
			<select id="region" class="easyui-combobox" panelHeight="auto" style="width:100px">
				<option value="0"></option>
				<option value="1">石家庄市</option>
				<option value="2">唐山市</option>
				<option value="3">秦皇岛市</option>
				<option value="4">邯郸市</option>
				<option value="5">邢台市</option>
				<option value="6">保定市</option>
				<option value="7">张家口市</option>
				<option value="8">承德市</option>
				<option value="9">沧州市</option>
				<option value="10">廊坊市</option>
				<option value="11">衡水市</option>
				<option value="12">雄安新区</option>
			</select>
			下发任务: 
			<select id="tasktype" class="easyui-combobox" panelHeight="auto" style="width:100px">
			<option value="0"></option>
				<option value="1">领导下发任务</option>
				<option value="2">自主下发任务</option>
			</select>
			<a href="#" id="search" class="easyui-linkbutton" iconCls="icon-search" onclick="search()">查询</a>
		</div>	<table id="dg" class="easyui-datagrid" title="领导下发任务" style="width:auto;height:auto"
			data-options="
				iconCls: 'icon-search',
				singleSelect: true,
				toolbar: '#tb',
				url: '${pageContext.request.contextPath}/task/self.action',
				method: 'get',
				pagination:true,
				pageSize:10
			">
		<thead>
			<tr>
				<th data-options="field:'itemid',width:80">序号</th>
				<th data-options="field:'productid',width:100,
						formatter:function(value,row){
							return row.productname;
						},
						editor:{
							type:'combobox',
							options:{
								valueField:'productid',
								textField:'productname',
								method:'get',
								url:'products.json',
								required:true
							}
						}">任务类型</th>
			<th data-options="field:'listprice',width:80,align:'right',editor:'text'">执行时间</th>
				<th data-options="field:'listprice',width:80,align:'right',editor:'numberbox'">执行人</th>
				<th data-options="field:'listprice',width:80,editor:'text'">标题</th>
				<th data-options="field:'unitcost',width:80,editor:'text'">链接</th>
				<th data-options="field:'listprice',width:80,editor:'text'">截图</th>
				<th data-options="field:'attr1',width:80,editor:'numberbox'">执行行数</th>
				<th data-options="field:'listprice',width:80,editor:'text'">单位</th>
			</tr>
		</thead>
	</table>
 
	
	<script type="text/javascript">
		var editIndex = undefined;
		
		function search(){
			
			
		}
		function endEditing(){
			if (editIndex == undefined){return true}
			if ($('#dg').datagrid('validateRow', editIndex)){
				var ed = $('#dg').datagrid('getEditor', {index:editIndex,field:'productid'});
				var productname = $(ed.target).combobox('getText');
				$('#dg').datagrid('getRows')[editIndex]['productname'] = productname;
				$('#dg').datagrid('endEdit', editIndex);
				editIndex = undefined;
				return true;
			} else {
				return false;
			}
		}
		function onClickRow(index){
			if (editIndex != index){
				if (endEditing()){
					$('#dg').datagrid('selectRow', index)
							.datagrid('beginEdit', index);
					editIndex = index;
				} else {
					$('#dg').datagrid('selectRow', editIndex);
				}
			}
		}
		function append(){
			if (endEditing()){
				$('#dg').datagrid('appendRow',{status:'P'});
				editIndex = $('#dg').datagrid('getRows').length-1;
				$('#dg').datagrid('selectRow', editIndex)
						.datagrid('beginEdit', editIndex);
			}
		}
		function removeit(){
			if (editIndex == undefined){return}
			$('#dg').datagrid('cancelEdit', editIndex)
					.datagrid('deleteRow', editIndex);
			editIndex = undefined;
		}
		function accept(){
			if (endEditing()){
				$('#dg').datagrid('acceptChanges');
			}
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
</div>
</body>
</html>