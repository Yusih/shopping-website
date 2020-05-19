<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

  </style>
    <body>
    
<div id="main-content" class="clearfix">
<div id="page-content" class="clearfix">
    <div class="page-header position-relative">
              <h1 style="color: #2679b5;">借卖方<small><i class="icon-double-angle-right"></i> 支付订单</small></h1>
            </div>
<form action="payOrder.action" method="post">
<h4>商品名称：MP3</h4>

 <form class="form-horizontal" style="width: 60%; margin:20px auto">
            <div class="control-group">
             <label class="control-label" for="form-field-1">用户名</label>
             <div class="controls">
                 <input type="text" id="form-field-4" value="${seller.sellerId}">
             </div>
         </div>
            <div class="control-group">
              <label class="control-label" for="form-field-1">密码</label>
                <div class="controls">
                    <input type="text" id="form-field-4" value="luji">
                </div>
            </div>
            

              <h3 style="text-align: center">
                Total：<b class="red">$100</b>
              </h3>

<div style="text-align: center"><button class="btn btn-primary" data-toggle="modal" data-target="#myModal"><i class="icon-beaker"></i> Pay Now</button></div>



<!-- Modal -->
<div class="modal fade hide" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Payment</h4>
      </div>
      <div class="modal-body" >
          <form class="form-horizontal">
              <div class="control-group">
                  <h3>Total:<span class="red">$56767</span></h3>
              </div>
              <div class="control-group">
                  Payment Method：
                  <div>
                      <input name="form-field-radio" type="radio" style="opacity: 1;position: inherit"><img src="image/gmc.png" alt="">My Wallet
                      <div class="blue">Account Balance:$6775</div>
                  </div>
                  <div>
                      <input name="form-field-radio" type="radio" style="opacity: 1;position: inherit"><img src="image/paycal@2x.png" alt="">Paypal
                      <div class="blue">Total amount you should pay include payment processing fee:$5765</div>
                  </div>

              </div>

            <div class="control-group">
              Enter Password：<input type="password" id="form-field-2" placeholder="Password">
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <input type="submit" class="btn btn-primary sure" data-dismiss="modal" value="pay Now">
      </div>
    </div>

  </div>
</div>
  </div></div>
</form>
    <script src="js/jquery-1.9.1.js"></script>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootbox.min.js"></script>
    <script>
      $(function(){
        $('.sure').click(function(){
            bootbox.alert("Success！")
            setTimeout(function(){
               window.location.href = "bvo-orderlist.jsp";
            },2000)

        })
})



    </script>
    </body>
</html>
