<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script src="../source/js/jquery-1.8.0.min.js"></script>
<style>
	div.container{
	width:480px;
	height:180px;
	background-color: #ccc;
	margin-left: 5px;
	}
	ul li{
	list-style: none;
	float:left;
	margin-right: 5px;
	}
/* 	ul li:hover{ */
/* 	background-color: #f00; */
/* 	font-size: 20px; */
/* 	} */
	.hilight{
	background-color: #ff0;
	color:#00f;
	}
	table{
	border:1px solid #000;
	}
	div{
	position: absolute;
	border:1px solid #f00;
	background-color: #ff0;
	width:50px;
	height:50px;
	}
</style>
</head>
<body>
<button>click me</button><br/>
<div id="foo"/>
</form>
</body>
<script>

	$('button').click(function(){
	
		$('#foo').slideUp(3000).delay(2000).fadeIn(5000);
	});
</script>
</html>