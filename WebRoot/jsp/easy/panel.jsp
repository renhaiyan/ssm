<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>面板</title>
<link rel="stylesheet" type="text/css" href="../../source/themes/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="../../source/themes/icon.css"></link> 
<script type="text/javascript" src="../../source/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../../source/js/jquery.easyui.min.js"></script>
</head>
<body>
	<h2>basic panel</h2>
	<div class="demo-info">
		<div class="demo-tip icon-tip">
		<div>the panel is a container for other components or elements.</div>
	</div>
	<div style="margin:10px 0">
		<a href="#" class="easyui-linkbutton" onclick="javascript:$('#p').panel('open')">open</a>
		<a href="#" class="easyui-linkbutton" onclick="javascript:$('#p').panel('close')">close</a>
	</div>
	<div id="p" class="easyui-panel" title="basic panel" style="width:500px;height:200px;padding:10px;">
	<p style="font-size:14px;">jquery easyui framework help you build your web page easily</p>
	<ul>
		<li>jquery easyinfo</li>
		<li>jquery easyinfo</li>
		<li>jquery easyinfo</li>
		<li>jquery easyinfo</li>
		<li>jquery easyinfo</li>
		<li>jquery easyinfo</li>
		<li>jquery easyinfo</li>
		<li>jquery easyinfo</li>
	
	</ul>
	</div>
</body>
</html>