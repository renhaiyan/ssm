<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>相册</title>
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

<%--  <form  action="${pageContext.request.contextPath}/upload/file.action" method="post" enctype="multipart/form-data">
	<input type="file" name="file" value="文件上传" multiple>
	<input type="submit" value="确定提交">
</form>
--%>
<div>
	<a href="javascript:void(0);" onclick="dialog();">上传截图</a>
</div>
<div id="dlg" class="easyui-dialog" title="截图上传" data-options="iconCls:'icon-save'" style="width:1200px;height:800px;padding:10px;">
	<div style="width: 800px;margin: 0 auto;">
	<img  id="ps1"  alt="图片未发现" width="260px;" heigth="50px;" />
  <%-- <img src="2.jpg" width="260px;" heigth="50px;" />
	<img src="3.jpg" width="260px;" heigth="50px;" />
	<img src="4.jpg" width="260px;" heigth="50px;" />
	<img src="1.jpg" alt="图片未发现" width="260px;" heigth="50px;" />
	 <img src="2.jpg" width="260px;" heigth="50px;" />
	<img src="3.jpg" width="260px;" heigth="50px;" />
	<img src="4.jpg" width="260px;" heigth="50px;" />
	<img src="1.jpg" alt="图片未发现" width="260px;" heigth="50px;" />
	 <img src="2.jpg" width="260px;" heigth="50px;" />
	<img src="3.jpg" width="260px;" heigth="50px;" />
	<img src="4.jpg" width="260px;" heigth="50px;" />
	--%>
</div>
</div>
</body>
<script>
	$(function(){
		$("#dlg").dialog("close");
	 $("#ps1").attr("src", "1.jpg");
	});
	
</script>

<script>
function dialog(){
	
	$("#dlg").dialog("open");
}
</script>
</body>
</html>