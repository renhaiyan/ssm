<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>foundation</title>
<link rel="stylesheet" type="text/css" href="../source/foundation/css/foundation.css"></link>
<script type="text/javascript" src="../source/foundation/js/vendor/jquery.js"></script>
<script type="text/javascript" src="../source/foundation/js/foundation.min.js"></script>
<script type="text/javascript" src="../source/foundation/js/vendor/modernizr.js"></script>
</head>
<style>
label {
    background: #ccc;
}
</style>
<body style="padding-top:10px;">
<ul class="accordion" data-accordion>
  <li class="accordion-navigation">
    <a href="#demo" style="text-decoration:none;">Accordion 1</a>
    <div id="demo" class="content active">
      Demo 1 - Lorem ipsum dolor sit amet....
    </div>
  </li>
  <li class="accordion-navigation">
    <a href="#demo2" style="text-decoration:none;">Accordion 2</a>
    <div id="demo2" class="content">
      Demo 2 - Lorem ipsum dolor sit amet....
    </div>
  </li>
  <li class="accordion-navigation">
    <a href="#demo3" style="text-decoration:none;">Accordion 3</a>
    <div id="demo3" class="content">
      Demo 3 - Lorem ipsum dolor sit amet....
    </div>
  </li>
</ul>
<script>
	$(document).ready(function(){
		$(document).foundation();
	});
</script>
</body>
</html>