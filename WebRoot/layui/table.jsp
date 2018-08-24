<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图标</title>
<link rel="stylesheet" type="text/css" href="../source/layui/css/layui.css"></link>
<script type="text/javascript" src="../source/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../source/layer/layer.js"></script>
<script type="text/javascript" src="../source/layui/layui.js"></script>
</head>
<body>
<i class="layui-icon" style="font-size:50px;">&#xe6c6;</i>
<i class="layui-icon" style="font-size: 30px; color: #1E9FFF;">&#xe60c;</i> 

<p class="layui-bg-cyan">python is very good!!!</p>

<table id="demo" lay-filter="test"></table>
 
<script src="/layui/layui.js"></script>
<script>
layui.use('table', function(){
  var table = layui.table;
  
  //第一个实例
  table.render({
    elem: '#demo'
    ,height: 315
    ,url: '/demo/table/user/' //数据接口
    ,page: true //开启分页
    ,cols: [[ //表头
      {field: 'id', title: 'ID', width:80, sort: true, fixed: 'left'}
      ,{field: 'username', title: '用户名', width:80}
      ,{field: 'sex', title: '性别', width:80, sort: true}
      ,{field: 'city', title: '城市', width:80} 
      ,{field: 'sign', title: '签名', width: 177}
      ,{field: 'experience', title: '积分', width: 80, sort: true}
      ,{field: 'score', title: '评分', width: 80, sort: true}
      ,{field: 'classify', title: '职业', width: 80}
      ,{field: 'wealth', title: '财富', width: 135, sort: true}
    ]]
  });
  
});
</script>
</body>
</html>