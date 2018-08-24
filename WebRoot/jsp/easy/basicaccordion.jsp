<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>基本的accordion</title>
<link rel="stylesheet" type="text/css" href="../../source/themes/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="../../source/themes/icon.css"></link> 
<script type="text/javascript" src="../../source/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../../source/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../source/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
<div class="easyui-accordion"  style="width:1000px;height:800px;">
	<div title="about" data-options="iconCls:'icon-ok'" style="padding:10px;scrolling="no"">
<%--		<jsp:include page="panel.jsp"></jsp:include>--%>
<%--		<iframe src="panel.jsp" width="100%;" height="100%;" scrolling="no"></iframe>--%>
	</div>
	<div title="help" data-options="iconCls:'icon-help',selected:true" style="overflow:auto;padding:10px;">
		<h1>第二个div</h1>
	</div>
	<div title="tree" data-options="iconCls:'icon-search'" style="padding:10px;">
		<h1>第三个div</h1>
	</div>
</div>
</body>
</html>