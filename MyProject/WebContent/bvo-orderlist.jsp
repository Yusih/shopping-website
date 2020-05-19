<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
    </head>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/ace.min.css">
    <link rel="stylesheet" href="css/ace-skins.min.css">
    <link rel="stylesheet" href="css/ace-responsive.min.css">
  <style>
    body,html{
      width: 100%;
      height: 100%;
      background: #fff;
    }

    .info div{
        float: right;
    }

  </style>
    <body>
<div id="main-content" class="clearfix">
<div id="page-content" class="clearfix">

    <div class="page-header position-relative">
      <h1 style="color: #2679b5;">借卖方<small><i class="icon-double-angle-right"></i> 订单管理</small></h1>
    </div>
  <form class="form-search">
    Title：
    <input type="text" class="input-medium search-query">
    <button onclick="return false;" class="btn btn-purple btn-small">Search <i class="icon-search icon-on-right"></i></button>
  </form>
  <a href="#" class="btn  btn-success"  style="margin-bottom: 30px">
    <i class="icon-refresh"></i>
    Pull Orders
  </a>

<div class="tabbable">
      <ul class="nav nav-tabs" id="myTab">
        <li class=""><a href="findSeller.action?sellerId=${orsellerId}&OrderState=waitforpay">待支付</a></li>
        <li class=""><a href="findSeller.action?sellerId=${orsellerId}&OrderState=paied"> 待发货</a></li>
        <li class=""><a href="findSeller.action?sellerId=${orsellerId}&OrderState=during">已发货</a></li>
        <li class=""><a href="findSeller.action?sellerId=${orsellerId}&OrderState=finished">已完成</a></li>
        <li class=""><a href="findSeller.action?sellerId=${orsellerId}&OrderState=cancel">已取消</a></li>
      </ul>
		
      
      <div class="tab-content">
        <div  class="tab-pane active">
          <p>
          <table id="table_bug_report" class="table table-striped table-bordered table-hover">
          <thead>
            <tr>
            <th class="center">
              <label><input type="checkbox" class="ace-checkbox-2"><span class="lbl"></span></label>
            </th>
            <th>Title</th>
            <th>Price</th>
            <th>Total</th>
            <th class="hidden-480">QTY</th>
            <th>Sku</th>
            <th class="hidden-480">Order No</th>
            <th class="hidden-480">Total</th>
            <th> </th>
            </tr>
          </thead>
          
		<form action="payOrder.action" method="post">
			<button type="submit" class="btn btn-success" onclick="submitto()">pay</button>
		 <c:forEach items="${orderlist1}" var="orderlist">
			<tbody>
            <tr>
              <td class="center">
                <label><input type="checkbox" class="input" name="orderId" value="${orderlist.orderId}"><span class="lbl"></span></label>
                <a href="payOrder.action?orderId=${orderlist.orderId}">
              </td>
              <td><a href="searchAllProduct.action">${orderlist.title}</a></td>
              <td>${orderlist.price}</td>
              <td>${orderlist.total}</td>
              <td class="hidden-480">${orderlist.quantity}</td>
              <td class="">${orderlist.sku}</td>
              <td class="hidden-480">${orderlist.orderNo}</td>
              <td>
                  ${orderlist.orderTime}
              </td>
			<input type="checkbox" />
            </tr> 
			
			</c:forEach>

              </tbody>
  
            
              
              
              
            </table>
          </p>
        </div>
      </div>
  </div>
  </div></div>

    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
      $(function(){

        $('.ace-checkbox-2').each(function(){
              $('.ace-checkbox-2').change(function(){
                if($(this).prop('checked')){
                 $(this).parents('.tab-pane').find('.input').prop('checked',true);
               }else{
                $(this).parents('.tab-pane').find('.input').prop('checked',false);
              }
          })

        })

})



    </script>
    
    
       <script>
    function submitto(){
			alert("支付成功");
		//document.getElementById("login1").submit();
	}
	</script>
    </body>
</html>
