<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>汇总任务</title>
<link rel="stylesheet" type="text/css" href="../source/themes/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="../source/themes/icon.css"></link> 
<script type="text/javascript" src="../source/js/jquery-1.8.0.min.js"></script>

<script type="text/javascript" src="../source/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../source/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<div style="margin: 10px 10px 10px 10px;">
			开始时间: <input class="easyui-datebox" style="width:100px">
			结束时间: <input class="easyui-datebox" style="width:100px">
			地域: 
			<select class="easyui-combobox" panelHeight="auto" style="width:100px">
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
			<select class="easyui-combobox" panelHeight="auto" style="width:100px">
			<option value="0"></option>
				<option value="1">领导下发任务</option>
				<option value="2">自主下发任务</option>
			</select>
			<a href="#" class="easyui-linkbutton" iconCls="icon-search">查询</a>
		</div>
	<table class="easyui-datagrid" title="汇总任务" style="width:800px;height:auto"
			data-options="iconCls:'icon-edit',rownumbers:false,singleSelect:true,url:'datagrid_data1.json',showFooter: true,pagination:true,
				pageSize:10,showFooter: true">
		<thead>
			<tr>
				<th data-options="field:'itemid',width:100,align:'center'" rowspan="3">单位</th>
				<th colspan="3">转发次数</th>
				<th colspan="4">跟帖条数</th>
			</tr>
			<tr>
				<th data-options="field:'listprice',width:100,align:'center'" rowspan="2">微信朋友圈</th>
				<th data-options="field:'listprice',width:100,align:'center'" rowspan="2">微博</th>
				<th data-options="field:'listprice',width:100,align:'center'" rowspan="2">论坛贴吧</th>
				<th colspan="2">新闻跟帖</th>
				<th data-options="field:'attr1',width:100" rowspan="2">微博跟帖</th>
				<th data-options="field:'status',width:100,align:'center'" rowspan="2">微信留言</th>
			</tr>
			<tr>
			<th data-options="field:'attr1',width:100,align:'center'">PC端</th>
			<th data-options="field:'attr1',width:100,align:'center'">移动端</th>
			
			</tr>
		</thead>
	</table>

</body>
</html>