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
<div class="file-loading" style="z-index:9000;">
    <input id="imgUpload" type="file" name="file" class="file-loading" multiple accept="image/*" enctype="multipart/form-data">
</div>
<script>
		$("#imgUpload")
		.fileinput({
		language: 'zh',
		uploadUrl: "${pageContext.request.contextPath}/upload/file.action",
		autoReplace: true,
		 showPreview:true,//是否显示文件预览
<%--		maxFileCount: 1,--%>
		allowedFileExtensions: ["jpg", "png", "gif","bmp","jpeg"],
		browseClass: "btn btn-primary", //按钮样式 
		previewFileIcon: "<i class='glyphicon glyphicon-king'></i>"
		});
		$('#uploadfile').on('fileerror', function(event, data, msg) {
            console.log(data.id);
            console.log(data.index);
            console.log(data.file);
            console.log(data.reader);
            console.log(data.files);
            // get message
            alert(msg);
          //异步上传返回结果处理

            $("#uploadfile").on("fileuploaded", function (event, data, previewId, index) {
                           console.log(data.id);
                           console.log(data.index);
                           console.log(data.file);
                           console.log(data.reader);
                           console.log(data.files);

                            var obj = data.response;
                            alert(JSON.stringify(data.success));
                            
                        });

            //同步上传错误处理
                   $('#uploadfile').on('filebatchuploaderror', function(event, data, msg) {
                        console.log(data.id);
                        console.log(data.index);
                        console.log(data.file);
                        console.log(data.reader);
                        console.log(data.files);
                        // get message
                        alert(msg);
                     });
               //同步上传返回结果处理
               $("#uploadfile").on("filebatchuploadsuccess", function (event, data, previewId, index) {
                       console.log(data.id);
                           console.log(data.index);
                           console.log(data.file);
                           console.log(data.reader);
                           console.log(data.files);
                            var obj = data.response;
                            alert(JSON.stringify(data.success));
                  });

            //上传前

            $('#uploadfile').on('filepreupload', function(event, data, previewId, index) {
                    var form = data.form, files = data.files, extra = data.extra,
                        response = data.response, reader = data.reader;
                    console.log('File pre upload triggered');
                });
});


</script>
</body>
</html>