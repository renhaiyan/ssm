<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	input{
	height: 24px;
	}
</style>
</head>
<body>
<center>
<form action="${pageContext.request.contextPath}/qqlike/agree.action" method="post">
	<p><span>拥有者：</span><input type="text" name="address"/><input type="submit" value="去执行"/></p>
</form>
</center>
</body>
</html>