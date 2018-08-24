<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>弹力球</title>
<style>

	*{
	margin: 0px;
	padding: 0px;
	background: #0f0;
	}
	img{
		width:200px;
		height:200px;
	}
	#imgid,#imgid2,#imgid3{
	position: absolute;
	}
</style>
</head>
<body>
<div id="imgid">
	<img src="fb.png">
</div>
<div id="imgid2">
	<img src="fb.png">
</div>
<div id="imgid3">
	<img src="fb.png">
</div>
<script>

	yheight = document.documentElement.clientHeight;
	
	ydiff = yheight - 200;
	
	xwidth = document.documentElement.clientWidth;
	
	xdiff = xwidth - 200;
	var ys = 0;
	var yv = 23;
	
	var xs = 0;
	var xv = 23;
	setInterval(function(){
		xs += xv;
		
		if(xs >= xdiff){
			xs = xdiff;
			xv = -xv;
		}	
		
		if(xs <= 0){
			xv = -xv;
		}
		
		document.getElementById('imgid').style.left = xs + 'px';
	},100);
	
	
	setInterval(function(){
	
		ys += yv;
		
		if(ys >= ydiff){
			ys = ydiff;
			yv = -yv;
		}
		
		if(ys <= 0){
		
			yv = -yv;
		}
		document.getElementById('imgid').style.top = ys + 'px';
	
	},100);
</script>
<script>

	yheight2 = document.documentElement.clientHeight;
	
	ydiff2 = yheight2 - 200;
	
	xwidth2 = document.documentElement.clientWidth;
	
	xdiff2 = xwidth2 - 200;
	var ys2 = 0;
	var yv2 = 15;
	
	var xs2 = 0;
	var xv2 = 15;
	setInterval(function(){
		xs2 += xv2;
		
		if(xs2 >= xdiff2){
			xs2 = xdiff2;
			xv2 = -xv2;
		}	
		
		if(xs2 <= 0){
			xv2 = -xv2;
		}
		
		document.getElementById('imgid2').style.left = xs2 + 'px';
	},100);
	
	
	setInterval(function(){
	
		ys2 += yv2;
		
		if(ys2 >= ydiff2){
			ys2 = ydiff2;
			yv2 = -yv2;
		}
		
		if(ys2 <= 0){
		
			yv2 = -yv2;
		}
		document.getElementById('imgid2').style.top = ys2 + 'px';
	
	},100);
</script>
<script>

	yheight3 = document.documentElement.clientHeight;
	
	ydiff3 = yheight3 - 200;
	
	xwidth3 = document.documentElement.clientWidth;
	
	xdiff3 = xwidth3 - 200;
	var ys3 = 0;
	var yv3 = 18;
	
	var xs3 = 0;
	var xv3 = 18;
	setInterval(function(){
		xs3 += xv3;
		
		if(xs3 >= xdiff3){
			xs3 = xdiff3;
			xv3 = -xv3;
		}	
		
		if(xs3 <= 0){
			xv3 = -xv3;
		}
		
		document.getElementById('imgid3').style.left = xs3 + 'px';
	},100);
	
	
	setInterval(function(){
	
		ys3 += yv3;
		
		if(ys3 >= ydiff3){
			ys3 = ydiff3;
			yv3 = -yv3;
		}
		
		if(ys3 <= 0){
		
			yv3 = -yv3;
		}
		document.getElementById('imgid3').style.top = ys3 + 'px';
	
	},100);
</script>
</body>
</html>