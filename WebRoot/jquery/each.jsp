<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jquery函数</title>
<script src="../source/js/jquery-1.8.0.min.js"></script>

<style>
	.example{
	background-color:#00f;
	}
	div{
	margin:3px;
	width:80px;
	height:80px;
	background:green;
	position:absolute;
	border:1px #00f solid;
	float:left;
	}
	.newcolor{
	background:blue;
	width:80px;
	height:80px;
	border:1px #00f solid;
	color:#ccc;
	}
	span{
	color:red;
	}
	ul li{
	list-style: none;
	float:left;
	margin-left: 20px;
	}
</style>
</head>
<body>
<button>切换类</button><br/>
<div class="protected"></div><div></div>
</body>
<script>
	$('button').click(function(){

		if($('div').hasClass('protected')){
			$('div').animate({ left: -10 })
		      .animate({ left: 10 })
		      .animate({ left: -10 })
		      .animate({ left: 10 })
		      .animate({ left: 0 });
		}
	});
</script>
</html>