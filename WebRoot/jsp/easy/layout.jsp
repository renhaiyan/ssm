<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页面</title>
<link rel="stylesheet" type="text/css" href="../../source/themes/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="../../source/themes/icon.css"></link> 
<script type="text/javascript" src="../../source/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../../source/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../source/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<div class="easyui-layout" style="width:1700px;height:800px;">
		<div data-options="region:'north'" style="height:50px;"><h1>律师信息</h1></div>
		<div data-options="region:'south',split:true" style="height:50px;">微博中的数据</div>
		<div data-options="region:'east',collapsed:true,split:true" title="East" style="width:180px;">
			<ul class="easyui-tree" data-options="url:'../easy/tree.json',animate:true,dnd:true"></ul>
		</div>
		<div data-options="region:'west',split:true" title="West" style="width:180px;">
			<div class="easyui-accordion" data-options="fit:true,border:false">
				<div title="title1" style="padding:10px;">
				content1
				</div>
				<div title="title2" style="padding:10px;" data-options="selected:true">
				content2
				</div>
				<div title="title3" style="padding:10px;">
				content2
				</div>
			</div>
		</div>
		<div data-options="region:'center',title:'main title',inconCls:'icon-ok'">
			<div class="easyui-tabs" data-options="border:false,plain:true" style="height:600px;">
				<div  title="律师地址" style="padding: 5px 5px 50px 5px;">
					<table class="easyui-datagrid" data-options="url:'${pageContext.request.contextPath}/message/address.action?page=1',singleSelect:true,fit:true,fitColumns:true">
						<thead>
							<tr>
								<th data-options="field:'id'" width="80">序号</th>
								<th data-options="field:'address'" width=100"">地址</th>
								<th data-options="field:'region',align:'right'" width="80">地区</th>
								<th data-options="field:'num',align:'right'" width="50">数量</th>
							</tr>
						</thead>
					</table>
					<div class="easyui-pagination" data-options="total:114,pageSize:10,onSelectPage:function(pageNumber,pageSize){$('#content').panel('refresh','${pageContext.request.contextPath}/message/address.action?page='+pageNumber)}" style="border:1px solid #ccc;"></div>
				</div>
				<div title="律师信息" style="padding: 5px 5px 50px 5px;">
					<table class="easyui-datagrid" data-options="url:'${pageContext.request.contextPath}/message/get.action',singleSelect:true,fit:true,fitColumns:true">
						<thead>
							<tr>
								<th data-options="field:'username'" width="80">博主</th>
								<th data-options="field:'network'" width=100"">个人信息</th>
								<th data-options="field:'card',align:'right'" width="80">说明</th>
								<th data-options="field:'attention',align:'right'" width="50">关注</th>
								<th data-options="field:'fans'" width="50">粉丝</th>
								<th data-options="field:'microblog',align:'center'" width="50">微博数</th>
								<th data-options="field:'intro',align:'center'" width="150">简介</th>
								<th data-options="field:'education',align:'center'" width="50">教育</th>
								<th data-options="field:'profession',align:'center'" width="150">职业</th>
							</tr>
					    </thead>
					</table>
						<div class="easyui-pagination" data-options="total:114" style="border:1px solid #ddd;"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>