<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分页</title>
<link rel="stylesheet" type="text/css" href="../../source/themes/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="../../source/themes/icon.css"></link> 
<script type="text/javascript" src="../../source/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../../source/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../source/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
<%--<div class="easyui-tabs" data-options="border:false,plain:true" style="height:600px;">--%>
<%--<div id="content" class="easyui-panel" style="height:200px"--%>
<%--    						data-options="href:'${pageContext.request.contextPath}/message/address.action?page=1'">--%>
    				<table id="content1" class="easyui-datagrid" data-options="singleSelect:true,fit:true,fitColumns:true,pagination:true,onSelectPage:function(pageNumber,pageSize){$('#content').panel('refresh','${pageContext.request.contextPath}/message/address.action?page='+pageNumber)}">
						<thead>
							<tr>
								<th data-options="field:'id'" width="80">序号</th>
								<th data-options="field:'address'" width=100"">地址</th>
								<th data-options="field:'region',align:'right'" width="80">地区</th>
								<th data-options="field:'num',align:'right'" width="50">数量</th>
							</tr>
						</thead>
					</table>
<%--</div>--%>
<%--					<div class="easyui-pagination" data-options="total:114,pageSize:10,onSelectPage:function(pageNumber,pageSize){$('#content').panel('refresh','${pageContext.request.contextPath}/message/address.action?page='+pageNumber)}" style="border:1px solid #ccc;"></div>--%>
<%--				</div>--%>
<%--	<script>--%>
<%--		var buttons=[{--%>
<%--			iconCls:'icon-add',--%>
<%--			handler:function(){--%>
<%--				alert('add');--%>
<%--			}--%>
<%--		},{--%>
<%--			iconCls:'icon-cut',--%>
<%--			handler:function(){--%>
<%--				alert('cut');--%>
<%--			}--%>
<%--		},{--%>
<%--			iconCls:'icon-save',--%>
<%--			handler:function(){--%>
<%--				alert('save');--%>
<%--			}--%>
<%--		}];--%>
<%--	</script>--%>
<script>

</script>
</body>
</html>