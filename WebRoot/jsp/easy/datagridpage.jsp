<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../source/themes/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="../../source/themes/icon.css"></link> 
<script type="text/javascript" src="../../source/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../../source/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../../source/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<table id="dg" title="pagination" style="width:900px;height:700px" data-options="fit:true,rownumbers:true,singleSelect:true,autoRowHeight:false,pagination:true,pageSize:10">
		<thead>
			<tr>
				<th field="inv" width="80">inv no</th>
				<th field="date" width="100">Date</th>
				<th field="name" width="80">Name</th>
				<th field="amount" width="80" alight="right">Amount</th>
				<th field="price" width="80" alight="right">Prise</th>
				<th field="cost" width="100" alight="right">Cost</th>
				<th field="note" width="100" alight="right">Note</th>
			</tr>
		</thead>
	</table>
	<script>
		function getData(){
			var rows = [];
			for(var i=1;i<=800;i++){
				var amount = Math.floor(Math.random()*1000);
				var price = Math.floor(Math.random()*1000);
				rows.push({
					inv:'Inv No '+i,
					date:$.fn.datebox.defaults.formatter(new Date()),
					name:'Name '+i,
					amount:amount,
					price:price,
					cost:amount*price,
					note:'Note '+i
				});
			}
			return rows;
		}
		
		function pagerFilter(data){
			if(typeof data.length == 'number' && typeof data.splice == 'function'){
				data = {
						total:data.length,
						rows:data
				}
			}
			var dg = $(this);
			var opts = dg.datagrid('options');
			var pager = dg.datagrid('getPager');
			pager.pagination({
				onSelectPage:function(pageNum,pageSize){
					opts.pageNumber = pageNum;
					opts.pageSize = pageSize;
					pager.pagination('refresh',{
						pageNumber:pageNum,
						pageSize:pageSize
					});
					dg.datagrid('loadData',data);
				}
			});
			if(!data.originalRows){
				data.originalRows = (data.rows);
			}
			var start = (opts.pageNumber - 1)*parseInt(opts.pageSize);
			var end = start + parseInt(opts.pageSize);
			data.rows = (data.originalRows.slice(start,end));
			return data;
		}
		
		$(function(){
			$("#dg").datagrid({loadFilter:pagerFilter}).datagrid("loadData",getData());
		});
	</script>
</body>
</html>