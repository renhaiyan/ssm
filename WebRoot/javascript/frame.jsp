<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>frame</title>
</head>
<frameset rows="50,*" frameborder="yes" border="2px">
	<frame src="frame1.jsp"></frame>
	<frameset cols="150,*">
	
		<frame src="frame2.jsp" noresize></frame>
		<frame src="frame3.jsp"></frame>
	</frameset>
</frameset>
</html>