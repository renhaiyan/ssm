<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>多文件上传</title>
<link rel="stylesheet" href="source/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="source/css/fileinput.min.css"></link>
<script type="text/javascript" src="source/js/jquery.min.js"></script>
<script type="text/javascript" src="source/js/fileinput.min.js"></script>
<script type="text/javascript" src="source/js/zh.js"></script>
<script type="text/javascript" src="source/js/bootstrap.min.js"></script>
</head>
<body>
<div dir=rtl class="file-loading"> <!-- note the direction if you want to display file-loading indicator -->
    <!-- note that your input must just set the `rtl` data property of the plugin or in your javascript code -->
    <input id="input-b8" name="input-b8[]" multiple type="file" class="file">
</div>
<script>
$(document).on('ready', function() {
    $("#input-b8").fileinput({
    	language: 'zh',
    	uploadUrl: "${pageContext.request.contextPath}/upload/file.action",
        rtl: true,
        allowedFileExtensions: ["jpg", "png", "gif"]
    });
});
</script>
</html>