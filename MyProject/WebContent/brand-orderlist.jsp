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
      <h1 style="color: #2679b5;">品牌商<small><i class="icon-double-angle-right"></i> 订单管理</small></h1>
    </div>
    <form class="form-search">
      商品标题：
      <input type="text" class="input-medium search-query">
      <button onclick="return false;" class="btn btn-purple btn-small">Search <i class="icon-search icon-on-right"></i></button>
    </form>

    <div class="tabbable">
      <ul class="nav nav-tabs" id="myTab">
       <li class=""><a  href="findSAE.action?brandId=${orbrandId}&OrderState=waitforpay"> 待支付</a></li>
        <li class=""><a   href="findSAE.action?brandId=${orbrandId}&OrderState=paied"> 待发货</a></li>
        <li class=""><a  href="findSAE.action?brandId=${orbrandId}&OrderState=during">已发货</a></li>
        <li class=""><a   href="findSAE.action?brandId=${orbrandId}&OrderState=finished">已完成</a></li> 
        <li class=""><a  href="findSAE.action?brandId=${orbrandId}&OrderState=cancel">已取消</a></li>
      </ul>
      
      
      
      
     
    <form action="findOne.action" method="post">
		输入要修改的订单ID<input type="text" name="orderId" value="${orderId}">
		<input type="hidden" name="brandId" value="1">
		<input type="submit">
	</form> 
      
      <div class="tab-content">
        <div class="tab-pane active">
          <p>
          <table id="table_bug_report" class="table table-striped table-bordered table-hover">
          <thead>
            <tr>
            <th class="center">
              <label><input type="checkbox" class="ace-checkbox-2"><span class="lbl"></span></label>
            </th>
            <th>商品标题</th>
            <th>价格</th>
            <th>总价</th>
            <th class="hidden-480">数量</th>
            <th>sku</th>
             <th class="hidden-480">订单编号</th>
             <th class="hidden-480">订单创建时间</th>
             <th class="hidden-480">订单状态</th>
            </tr>
          </thead>
          
          
          
       	<form action="deleteOrder.action" method="post">
       	<button type="submit" class="btn btn-success"><i class="icon-trash icon-4x icon-only">delete</i></button>
          <c:forEach items="${orderlist1}" var="orderlist">
          <tbody>
            <tr>
              <td class="center">
                <label><input type="checkbox" class="input" name="orderId" value="${orderlist.orderId}"><span class="lbl"></span></label>
              	<a href="deleteOrder.action?orderId=${orderlist.orderId}">
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
              <td>
				${orderlist.orderState}
            	</td>
            <input type="checkbox" />
            </tr>
            </a>
			</c:forEach>
		
                  </tbody>
            </table>
          </p>
        </div>
       </form>
        
        
        
        
       <%--  
        
        
        <form action="findOne.action" method="post">
        <button type="submit" class="btn btn-success">update</i></button>
        <div class="tab-pane">
          <p>
          <table id="table_bug_report" class="table table-striped table-bordered table-hover">
          <thead>
            <tr>
            <th class="center">
              <label><input type="checkbox" class="ace-checkbox-2"><span class="lbl"></span></label>
            </th>
            <th>商品标题</th>
            <th>价格</th>
            <th class="hidden-480">数量</th>
            <th>sku</th>
            <th class="hidden-480">订单编号</th>
            <th class="hidden-480">订单创建时间</th>

            <th>操作</th>
            </tr>
          </thead>
			
			
			
			
			<c:forEach items="${orderlist1}" var="orderlist">
          <tbody>
            <tr>
              <td class="center">
                <label><input type="checkbox" class="input" name="orderId" value="${orderlist.orderId}"><span class="lbl"></span></label>
              	<a href="findOne.action?orderId=${orderlist.orderId}&brandId=1">
              </td>
              <td><a href="bvo-goodsdetail.jsp">${orderlist.title}</a></td>
              <td>${orderlist.price}</td>
              <td class="hidden-480">${orderlist.quantity}</td>
              <td class="">${orderlist.sku}</td>
              <td class="hidden-480">${orderlist.orderNo}</td>
              <td>
                  ${orderlist.orderTime}
              </td>
              <td>
				${orderlist.orderState}
            	</td>
            <input type="checkbox" />
            </tr>
            </a>
			</c:forEach>
		
                  </tbody>
            </table>
          </p>
        </div>
        
        
         --%>
        
        
      </div>
  </div>
  </div>
  </div>





    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootbox.min.js"></script>



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

        $('.send-out').click(function(){
          bootbox.alert("已发货!");
        })
        $('.cancel').click(function(){
          bootbox.alert("订单已取消!");
        })





})



    </script>
    </body>
</html>
