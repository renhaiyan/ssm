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
<div  class="file-loading" style="z-index:inherit">
 <input id="imgUpload" name="input-ficons-6[]" multiple type="file">
<%--<input id="imgUpload" type="file" class="file-loading" multiple">--%>
</div>
<script>
<%--$(document).on('ready', function() {--%>
<%--    $("#imgUpload").fileinput({--%>
<%--        rtl: true,--%>
<%--        allowedFileExtensions: ["jpg", "png", "gif","bmp","jpeg"]--%>
<%--    });--%>
<%--});--%>
</script>
<script>
$("#imgUpload").fileinput({
	language: 'zh',
    uploadUrl: "${pageContext.request.contextPath}/upload/file.action",
<%--    enctype:'multipart/form-data',--%>
    allowedFileExtensions : ['jpg', 'png','bmp','jpeg'],//接收的文件后缀
<%--    showUpload: false, //是否显示上传按钮--%>
<%--    showPreview: true,              //展前预览--%>
<%--    showCaption: false,//是否显示标题--%>
<%--    maxFileSize : 10000,//上传文件最大的尺寸--%>
<%--    maxFilesNum : 10,//--%>
<%--    dropZoneEnabled: false,//是否显示拖拽区域--%>
<%--    browseClass: "btn btn-primary", //按钮样式--%>
    uploadAsync: false,
    previewFileIcon: '<i class="fa fa-file"></i>',
    preferIconicZoomPreview: true, 
    layoutTemplates :{
        // actionDelete:'', //去除上传预览的缩略图中的删除图标
<%--        actionUpload:'',//去除上传预览缩略图中的上传图片；--%>
<%--        actionZoom:''   //去除上传预览缩略图中的查看详情预览的缩略图标。--%>
    },
    previewFileIconSettings: { 
        'doc': '<i class="fa fa-file-word-o text-primary"></i>',
        'xls': '<i class="fa fa-file-excel-o text-success"></i>',
        'ppt': '<i class="fa fa-file-powerpoint-o text-danger"></i>',
        'pdf': '<i class="fa fa-file-pdf-o text-danger"></i>',
        'zip': '<i class="fa fa-file-archive-o text-muted"></i>',
        'htm': '<i class="fa fa-file-code-o text-info"></i>',
        'txt': '<i class="fa fa-file-text-o text-info"></i>',
        'mov': '<i class="fa fa-file-movie-o text-warning"></i>',
        'mp3': '<i class="fa fa-file-audio-o text-warning"></i>',
        'jpg': '<i class="fa fa-file-photo-o text-danger"></i>', 
        'gif': '<i class="fa fa-file-photo-o text-warning"></i>', 
        'png': '<i class="fa fa-file-photo-o text-primary"></i>'    
    },
    previewFileExtSettings: { // configure the logic for determining icon file extensions
        'doc': function(ext) {
            return ext.match(/(doc|docx)$/i);
        },
        'xls': function(ext) {
            return ext.match(/(xls|xlsx)$/i);
        },
        'ppt': function(ext) {
            return ext.match(/(ppt|pptx)$/i);
        },
        'zip': function(ext) {
            return ext.match(/(zip|rar|tar|gzip|gz|7z)$/i);
        },
        'htm': function(ext) {
            return ext.match(/(htm|html)$/i);
        },
        'txt': function(ext) {
            return ext.match(/(txt|ini|csv|java|php|js|css)$/i);
        },
        'mov': function(ext) {
            return ext.match(/(avi|mpg|mkv|mov|mp4|3gp|webm|wmv)$/i);
        },
        'mp3': function(ext) {
            return ext.match(/(mp3|wav)$/i);
        },
    }
}).on('fileerror', function(event, data, msg) {  //一个文件上传失败
    console.log('文件上传失败！'+msg);
    alert("上传文件失败");
}).on('filedeleted', function(event, key) {
    console.log('Key = ' + key);
}).on('filereset', function(event) {
    console.log("filereset");
}).on('filecleared', function(event) {
    console.log('File batch upload complete');
}).on('fileclear', function(event) {        
}).on('fileuploaded', function(event, data, previewId, index)
		{ console.log(data.response.message); 
		
}); 

  
</script>
</body>
</html>