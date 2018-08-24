<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据表格列选择</title>
<link rel="stylesheet" type="text/css" href="../../source/themes/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="../../source/themes/icon.css"></link> 
<script type="text/javascript" src="../../source/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../../source/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../source/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
<table id="dg" class="easyui-datagrid" title="选择列" style="width:700px;height:250px;" data-options="checkSelect:true,url:'${pageContext.request.contextPath}/message/address.action?page=1'">
	<thead>
			<tr>
				<th data-options="field:'id',width:80,checkbox:true">序号</th>
				<th data-options="field:'address',width:100">地址</th>
				<th data-options="field:'region',width:180,align:'right'">地区</th>
				<th data-options="field:'num',width:150,align:'right'">数量</th>
			</tr>
	</thead>
</table>
<div style="margin:10px 0;">
	<span>select mode:</span>
	<select onchange="$('#dg').datagrid({singleSelect:(this.value==0)})">
		<option value="0">single row</option>
		<option value="1">multiple row</option>
	</select><br/>
	<span>selectoncheck:</span>
	<input type="checkbox" checked onchange="$('#dg').datagrid({selectOnCheck:$(this).is(':checked')})"/><br/>
	<span>checoutonselect:</span>
	<input type="checkbox" checked onchange="$('#dg').datagrid({checkOnSelect:$(this).is(':checked')})">
</div>
</body>
</html>