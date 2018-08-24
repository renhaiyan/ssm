<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>动画</title>
<link rel="stylesheet" type="text/css" href="../../source/themes/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="../../source/themes/icon.css"></link> 
<script type="text/javascript" src="../../source/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../../source/js/jquery.easyui.min.js"></script>
</head>
<body>

</body>

<script>
	$(function(){
		
		$.messager.show({
			title:'My Title',
			width:500,
			height:200,
			msg:'Message will be closed after 5 seconds.Message will be closed after 5 seconds.Message will be closed after 5 seconds.',
			timeout:0,
			showType:'slide'
		});
		
	});

</script>
</html>