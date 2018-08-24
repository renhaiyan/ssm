<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javascript</title>
</head>
<body>
<h1>短信页面</h1>
<p><input type="file" name="file" id="file"/></p>
<p><button id="button" value="文件提交">Ok</button></p>
<video src="1.mp4" controls="controls">
	
</video>
<p><span>标题：</span><input type="text" id="title" /></p>
<p><button id="btn" value="查询">查询</button></p>
<script>

var btn = document.getElementById('btn');
btn.onclick=function(){
	var title = document.getElementById('title');
	alert(Boolean(title.value));
}
    
// 	var button = document.getElementById('button');
	
// 	button.onclick = function(){
// 		var file = document.getElementById('file');
// 		alert(file.value);
// 	}
	
	/*window.onload = function(){

		
	}*/
	
// 	function myFunction(){
	
// 		document.getElementById('p1').style.visibility = 'hidden';
// 	}
	
// 	var sw = screen.width;
// 	var sh = screen.height;
	
// 	document.title = sw +':::'+sh;
// 	alert(sw);
</script>
</body>
</html>