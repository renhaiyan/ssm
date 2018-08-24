<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>折叠面板</title>
<link rel="stylesheet" type="text/css" href="../../source/themes/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="../../source/themes/icon.css"></link> 
<script type="text/javascript" src="../../source/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../../source/js/jquery.easyui.min.js"></script>
</head>
<body>
	<div style="margin:10px 0;">
		<a href="javascript:void(0);" class="easyui-linkbutton" onclick="select();">Select</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" onclick="add();">Add</a>
		<a href="javascript:void(0);" class="easyui-linkbutton" onclick="remove();">Remove</a>
	</div>
	<div id="aa" class="easyui-accordion" data-options="fit:true" style="width:50px;">
		<div title="about" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			<h3 style="color:#0099FF;">Accordion for jquery</h3>
			<p>Accordion is a part of easyui framework for jquery.It lets you define accordion component on web page more easily.</p>
		</div>
		<div title="Help" data-options="iconCls:'icon-help'" style="padding:10px;">
			<p>The accorgion allows you to provide multiple panels and display on at a time.</p>
		</div>
		<div title="TreeMenu" data-options="iconCls:'icon-search'" style="padding:10px;">
			<ul class="easyui-tree">
				<li>
					<span>Foods</span>
					<ul>
						<li>
							<span>Fruits</span>
							<ul>
								<li>apple</li>
								<li>orange</li>
							</ul>
						</li>
						<li>
							<span>Vegetables</span>
							<ul>
								<li>tomato</li>
								<li>carrot</li>
								<li>cabbage</li>
								<li>potato</li>
								<li>lettuce</li>
							</ul>
						</li>
						<li>
							<span>Vegetables</span>
							<ul>
								<li>tomato</li>
								<li>carrot</li>
								<li>cabbage</li>
								<li>potato</li>
								<li>lettuce</li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<script>
		function select(){
			$.messager.prompt('Prompt','Please enter the panel title:',function(s){
				if(s){
					$("#aa").accordion('select',s);
				}
			});
		}
		var idx = 1;
		function add(){
			$("#aa").accordion('add',{
				title:'面板'+idx,
				content:'<div style="padding:10px;">Content'+idx+'</div>'
			});
			idx++;
		}
		function remove(){
			var pp = $("#aa").accordion('getSelected');
<%--			$.messager.alert(pp);--%>
<%--			$.messager.confirm(pp);--%>
			if(pp){
				var index = $("#aa").accordion('getPanelIndex',pp);
				$('#aa').accordion('remove',index);
			}
		}
	</script>
</body>
</html>