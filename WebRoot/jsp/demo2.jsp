<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../source/themes/default/easyui.css"></link>
<link rel="stylesheet" type="text/css" href="../source/themes/icon.css"></link> 
<script type="text/javascript" src="../source/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../source/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../source/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<h2>DataGrid Pagination Demo</h2>
	<div class="demo-info" style="margin-bottom:10px">
		<div class="demo-tip icon-tip">&nbsp;</div>
		<div>Click the page bar to change page number or page size.</div>
	</div>
	<p>
		Pagination on 
		<select id="p-pos" onchange="changeP()">
			<option>bottom</option>
			<option>top</option>
			<option>both</option>
		</select>
		Style
		<select id="p-style" onchange="changeP()">
			<option>manual</option>
			<option>links</option>
		</select>
	</p>
	
	<table id="tt" class="easyui-datagrid" style="width:700px;height:250px"
			url="datagrid_data2.json"
			title="Load Data" iconCls="icon-save"
			rownumbers="true" pagination="true">
		<thead>
			<tr>
				<th field="itemid" width="80">Item ID</th>
				<th field="productid" width="120">Product ID</th>
				<th field="listprice" width="80" align="right">List Price</th>
				<th field="unitcost" width="80" align="right">Unit Cost</th>
				<th field="attr1" width="200">Attribute</th>
				<th field="status" width="60" align="center">Stauts</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
		$(function(){
			
			var date = new Date();
			da = date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate() + ' '+date.getHours() + ':'+date.getMinutes() + ':'+date.getSeconds();
			t = date.getTime();
			dd = Date.parse(date);
			d= date.toLocaleDateString();
			ddd = date.toLocaleString();
<%--			d1 = date.toLocaleTimeString()--%>
<%--			alert(ddd);--%>
			alert(CurentTime());
		});
		function CurentTime()
	    { 
	        var now = new Date();
	       
	        var year = now.getFullYear();       //年
	        var month = now.getMonth() + 1;     //月
	        var day = now.getDate();            //日
	       
	        var hh = now.getHours();            //时
	        var mm = now.getMinutes();          //分
	        var ss = now.getSeconds();
	        
	        var clock = year + "-";
	       
	        if(month < 10)
	            clock += "0";
	       
	        clock += month + "-";
	       
	        if(day < 10)
	            clock += "0";
	           
	        clock += day + " ";
	       
	        if(hh < 10)
	            clock += "0";
	           
	        clock += hh + ":";
	        if (mm < 10) clock += '0';
	        
	        clock += mm + ":"; 
	        
	        if(ss < 10) clock += '0';
	        
	        clock += ss;
	        return(clock); 
	    } 
	</script>
</body>

</html>