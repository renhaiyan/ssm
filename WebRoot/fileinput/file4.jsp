<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>多文件上传</title>
<link rel="stylesheet" href="source/css/bootstrap.min.css"></link>
<link rel="stylesheet" href="source/css/fileinput.min.css"></link>
<script type="text/javascript" src="source/js/jquery.min.js"></script>
<script type="text/javascript" src="source/js/fileinput.min.js"></script>
<script type="text/javascript" src="source/js/zh.js"></script>
<script type="text/javascript" src="source/js/bootstrap.min.js"></script>
</head>
<body>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch Modal
</button>
 
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
        <div dir=rtl class="file-loading">
          <input id="input-b9" name="input-b9[]" multiple type="file"'>
        </div>
        <div id="kartik-file-errors"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" title="Your custom upload logic">Save</button>
      </div>
    </div>
  </div>
</div>
 
 
<script>
$(document).on('ready', function() {
    $("#input-b9").fileinput({
        showPreview: false,
        showUpload: false,
        rtl: true,
        elErrorContainer: '#kartik-file-errors',
        allowedFileExtensions: ["jpg", "png", "gif"]
        //uploadUrl: '/site/file-upload-single'
    });
});
</script>
</body>
</html>