<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>律师信息</title>
<style>
	form{
	margin-top: 120px;
	}
	select,input{
	height: 30px;
	}
	select{
	margin-left: -10px;
	}
	
</style>
</head>
<body>
<div>
<center>
<form action="message.action" method="post">
	<input type="button" value="律师地址">
	<select name="address">
		<c:forEach items="${lawyers}" var="lawyer">
		<option value="${lawyer.address}">${lawyer.region}</option>
		</c:forEach>
	</select>
	<input style="width: 30px;height: 26px;" type="text" name="pages"/>
	<input type="submit" value="获取"/>
</form>
</div>
<div>
</div>
</center>
</body>
</html>