<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传</title>
<link rel="stylesheet" type="text/css" href="../source/themes/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="../source/themes/icon.css"></link> 
<script type="text/javascript" src="source/js/jquery.min.js"></script>
<script type="text/javascript" src="../source/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../source/js/easyui-lang-zh_CN.js"></script>

<link rel="stylesheet" href="source/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="source/css/fileinput.min.css"></link>

<script type="text/javascript" src="source/js/fileinput.min.js"></script>
<script type="text/javascript" src="source/js/zh.js"></script>
<script type="text/javascript" src="source/js/bootstrap.min.js"></script>
</head>
<body>
<div>
	<a href="javascript:void(0);" onclick="dialog();">上传截图</a>
</div>
<div id="dlg" class="easyui-dialog" title="截图上传" data-options="iconCls:'icon-save'" style="width:1200px;height:800px;padding:10px;">
	<iframe src="file2.jsp" width="1100px;" height="800px;"></iframe>
</div>
</body>
<script>
	$(function(){
		$("#dlg").dialog("close");
	});
</script>

<script>
function dialog(){
	
	$("#dlg").dialog("open");
}
</script>

</html>