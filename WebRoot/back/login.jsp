<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
<title>信息管理系统</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>source/bs/css/bootstrap.min.css"></link>
<script type="text/javascript" src="<%=basePath%>source/bs/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>source/bs/js/bootstrap.min.js"></script>
<style type="text/css">
	.loginbody1{
		 margin-top: 25px;
		 margin-left:0px;
		 margin-right:0px;
		 width: 100%;
		 height: 600px;
		 background:url(<%=basePath%>pages/images/bg.jpg)no-repeat; 
		 background-position:center center;
	}
	.box1{
		
		border: 1px solid #999;width: 300px;height: 310px;
		float: right;
		margin-right: 30px;
		margin-bottom: 20px;
		margin-top:90px;padding: 15px 20px;
	}
	.box1 span{
		font:bold 18px/18px '微软雅黑';color: #333;margin-top: 8px;
	}
	.box1 input{
		width: 254px;
		height: 32px;
		border: 1px solid #999;
		border-radius: 4px;
		margin-top: 14px;padding-left:6px;font-size: 14px;
		color: #444;
	}
	.box1 i{
		float: left;font: normal 14px/20px '微软雅黑';padding-top: 8px;color: #555;cursor: pointer;
	}
	.box1 button{
		width: 260px;
		height: 36px;
		background: #ccc;
		margin-top: 30px;
		border-radius: 4px;
		color: #fff;
		font:normal 16px/34px '微软雅黑';
	}
	#footer{
		
		margin-top: 0px;
		padding-top: 40px;
	}
	@media only screen and (max-width:750px ) {
	.box1{
		border: 1px solid #999;
		height: 300px;
		float: right;
		margin-right: 20px;
		margin-bottom: 20px;
		margin-top:90px;
		padding: 15px 20px;
	}
	.box1 span{
		font:bold 14px/14px '微软雅黑';
		margin-top: 8px;
	}
	.box1 input{
		width: 254px;
		height: 30px;
		border: 1px solid #999;
		border-radius: 4px;
		margin-top: 14px;padding-left:6px;font-size: 14px;
		color: #444;
	}
	.box1 i{
		float: left;font: normal 14px/20px '微软雅黑';padding-top: 8px;color: #555;cursor: pointer;
	}
	.box1 button{
		width: 253px;
		height: 32px;
		margin-top: 30px;
		border-radius: 4px;
		color: #fff;
		font:normal 14px/30px '微软雅黑';
	}
		
	}
	ul{
		list-style: none;
	}
	ul li{
		float:left;
		margin-right: 5px;
	}
	ul li a{
		text-decoration: none;
	}
</style>
<script language="JavaScript" src="<%=basePath%>pages/js/jquery.js"></script>
<script language="javascript">
	$(document).ready(function(){
		
	});
	function toSubmit(){
		var userName = document.getElementById("userName").value;
		if(userName==''){$("#errorInfo").html("请输入用户名!");  return false;}
		var password = document.getElementById("password").value;
		if(password==''){$("#errorInfo").html("请输入密码!");return false;}
		var randomCode = document.getElementById("randomCode").value;
		if(randomCode==''){$("#errorInfo").html("请输入验证码!");return false;}
		return true;
	}
	function refresh(obj) {
        obj.src = "<%=basePath%>login/getRandomCode.do?"+Math.random();
    }
    function hiddenInfo(){
    	$("#errorInfo").html("");
    }
</script> 
</head>
<body >
			<div class="container">
					 <div class="loginbody1">
        		<div  class="box1">
        	<form id="loginform" name="loginform" action="<%=basePath%>login/login.do" method="post">   
		         <div>
		       		<span style="font:bold 18px/18px '微软雅黑';color: #333;margin-top: 3px;">账户登录</span>
		       		<font id="errorInfo" color="red" >${errorInfo}</font>
		       		<br />
		       		<input onfocus="hiddenInfo();" type="text" id="userName" name="userName" value="${nameInfo}"  placeholder="请输入用户名/邮箱"/>
		       		
		       		<input onfocus="hiddenInfo();" type="password" id="password" name="password" value="${passwordInfo}"  placeholder="请输入密码"/>
		       		
		       		<input onfocus="hiddenInfo();" name="randomCode" id="randomCode" type="text" placeholder="验证码" style="width:160px;" onclick="JavaScript:this.value=''" />
		    		
		    		<img title="点击更换" onclick="javascript:refresh(this);" src="<%=basePath%>login/getRandomCode.do" style="margin-top:15px;">
					
		       		<input type="submit" onClick="return toSubmit();" value="登 录"  />
	      	
		      		<p>
		      			<i style="float: left;font: normal 14px/20px '微软雅黑';padding-top: 8px;color: #555;cursor: pointer;"></i>
		      			<i style="float: right;font: normal 14px/20px '微软雅黑';padding-top: 8px;color: #555;cursor: pointer;"><a href="<%=basePath%>pages/register.jsp" target="_blank">免费注册</a></i>
		      		</p>
	      		 </div>
      		 </form>
      	</div>
    </div>
    
			</div>
   
</body>

</html>
