<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>第一个layui</title>
<%--<link rel="stylesheet" type="text/css" href="../../source/layui/css/layui.css"></link>--%>
<script type="text/javascript" src="../source/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../source/layer/layer.js"></script>
<%--<script type="text/javascript" src="../../source/layui/layui.all.js"></script>--%>
<%--<script type="text/javascript" src="../../source/layui/layui.js"></script>--%>
</head>
<body>
<button id="about">点击</button>
<script>
<%--	$("#about").on("click",function(){--%>
		
<%--		alert("niahi ")--%>
<%--		layer.alert("Hi,layer!!!")--%>
<%--	});--%>
<%--	});--%>
<%--	$--%>
	$("#about").click(function(){
		layer.alert("来自");
	});
</script>
</body>
</html>