<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图片</title>
<link rel="stylesheet" type="text/css" href="../source/bs/css/bootstrap.min.css"></link>
<script type="text/javascript" src="../source/bs/js/jquery.min.js"></script>
<script type="text/javascript" src="../source/bs/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../source/bs/js/holder.js"></script>
</head>
<body>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Launch demo modal
</button>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body"   style="height:800px">
       	<table border="1px solid #fff;">
       		<thead>
       			<tr>
       				<th>id</th>
       				<th>name</th>
       				<th>address</th>
       				<th>age</th>
       			</tr>
       		</thead>
       	</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</body>
</html>