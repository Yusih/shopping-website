<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/ace.min.css">
        <link rel="stylesheet" href="css/ace-skins.min.css">
        <link rel="stylesheet" href="css/ace-responsive.min.css">

    </head>
    <style>
        body,html{
            width: 100%;
            height: 100%;
            background: #fff;
        }


    .inputName{
        width: 50%;
        margin: 0 auto;
        font-size: 20px;
    }

  </style>
    <body>

 <div id="main-content" class="clearfix">
  <div id="page-content" class="clearfix">
           <div class="page-header position-relative">
              
            </div>
            
            
 	<form action="updateOrder.action" method="post">
    <div class="inputName">
        <div style="margin-bottom: 40px">订单更新</div>
        <div><label class="green">orderNo:</label><input type="text" name="orderNo" value="${orderlist1.orderNo}"></div>
        <div><label class="green">orderState:</label><input type="text" value="${orderlist1.orderState}" name="orderState"></div>
        <div><label class="green">orderTime:</label><input type="text" value="${orderlist1.orderTime}" name="orderTime"></div>
        <div><label class="green">trackingNo:</label><input type="text" value="${orderlist1.trackingNo}" name="trackingNo"></div>
        <div><label class="green">quantity:</label><input type="text" value="${orderlist1.quantity}" name="quantity"></div>
        <div><label class="green">title:</label><input type="text" value="${orderlist1.title}" name="title"></div>
        <div><label class="green">price:</label><input type="text" value="${orderlist1.price}" name="price"></div>
        <input type="hidden" name="orderId" value="${orderlist1.orderId}">
        <button type="submit" class="btn btn-success" onclick="submitto()">update</button>
        <input type="checkbox"/>
        <button class="btn  btn-pink" onclick="myshop()">My Stores</button>
    </div>

	</form>

    </div></div>



    </body>
    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootbox.min.js"></script>
    <script type="text/javascript">
    $(function(){


    })
       function myshop(){
            window.location.href = "bvo-goodsstoreAdd.jsp"
        }
    </script>
    
    <script>
    function submitto(){
			alert("修改成功");
		//document.getElementById("login1").submit();
	}
	</script>
    
    </body>
</html>
