<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据显示</title>
<link rel="stylesheet" href="../source/batable/bootstrap-table.css"></link>
<link rel="stylesheet" href="../source/bs/css/bootstrap.css"></link>
<script src="../source/bs/js/jquery.min.js"></script>
<script src="../source/bs/js/bootstrap.js"></script>
<script src="../source/bstable/bootstrap-table.js"></script>
<script src="../source/bstable/locale/bootstrap-table-zh-CN.min.js"></script>
</head>
<body>
	<!--  <table data-toggle="table">
		<thead>
        <tr>
        <th data-checkbox="true"></th> 
            <th>Item ID</th>
            <th>Item Name</th>
            <th>Item Price</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Item 1</td>
            <td>$1</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Item 2</td>
            <td>$2</td>
        </tr>
    </tbody>
	</table>-->
	<div class="form-group panel-margin-top">
    <table id="monthCount_Table" style="color: black;font-weight: 550; font-size: small;"  class="table table-bordered">
        
     </table>
</div>
 
<script>
	$("#monthCount_Table").bootstrapTable({
            search: true,
            pagination: true,
            striped: true,
            pageSize: 2,
            pageList: [5, 10, 15, 20],
            showColumns: true,
            showRefresh: true,
            showToggle: true,
            sortable: true,
            locale: "zh-CN",
            clickToSelect: true,
            //只需加入下面这个checkbox，就会在第一列显示复选框
           /* columns:[
                {
                  checkbox: true  
                },{
                  field: 'theDate',
                  title: '日期'
                },{
                  field: 'theDate',
                  title: '名称'
                }
                   
            ]*/
            columns: [{
                  checkbox: true  
                },{
        field: 'id',
        title: 'Item ID'
    }, {
        field: 'name',
        title: 'Item Name'
    }, {
        field: 'price',
        title: 'Item Price'
    }],
    data: [{
        id: 1,
        name: 'Item 1',
        price: '$1'
    }, {
        id: 2,
        name: 'Item 2',
        price: '$2'
    },{
        id: 1,
        name: 'Item 1',
        price: '$3'
    }, {
        id: 2,
        name: 'Item 2',
        price: '$4'
    },{
        id: 1,
        name: 'Item 1',
        price: '$5'
    }, {
        id: 2,
        name: 'Item 2',
        price: '$6'
    }]
        });
        
        var getSelectRows = $("#monthCount_Table").bootstrapTable('getSelections', function (row) {
          return row;
		});
		
		//自定义给表格赋值的方法，json就是getSelectRows，调用 showTableData(getSelectRows); 即可
function showTableData(json) {
            $("#get_sum_table").bootstrapTable('removeAll');
            tableData = [];
            var newUserNum = 0;
            for (var i = 0; i < json.length; i++) {
                //从存在的表中取的数据，字段名不是服务端发来的字段了，是上一个表data-field的字段名，不要搞错了
                //这只是获得所选月的总量，所以只有一条数据，先算所选的几个月的和，再push
                newUserNum+=json[i].userNum;
            }
            tableData.push({
                active_num: activeUserNum
            })
            tableData.reverse();
            //这是第二个表的id，就不写出来了
            $("#get_sum_table").bootstrapTable('append', tableData);
        }
        $("#table").bootstrapTable('getSelections',param);
</script>
</body>
</html>