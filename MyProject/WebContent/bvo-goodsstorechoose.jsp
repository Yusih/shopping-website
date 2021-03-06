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


        <style type="text/css">
            body,html{
                width: 100%;
                height: 100%;
                background: #fff;
            }
            .shoplist{
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 10px;

            }
             .shoplist span{
                 font-size: 24px;
                 line-height: 40px !important;
             }
            .shoplist span:before{
                height: 20px !important;
                line-height: 20px !important;
                width: 20px ;
            }
            .upc{
                margin-top: 20px;
            }

        </style>
    </head>
    <body>
    <div id="main-content" class="clearfix">
          <div id="page-content" class="clearfix">
              <h3 class="header smaller lighter blue">eBay</h3>
              <div class="controls shoplist ebay" >

                  <label>
                      <input name="form-field-checkbox" class="ace-checkbox-2" type="checkbox"><span class="lbl"> store001</span>
                  </label>
                  <label>
                      <input name="form-field-checkbox" class="ace-checkbox-2" type="checkbox"><span class="lbl"> store002</span>
                  </label>
                  <label>
                      <input name="form-field-checkbox" class="ace-checkbox-2" type="checkbox"><span class="lbl"> store003</span>
                  </label>
                  <label>
                      <input name="form-field-checkbox" class="ace-checkbox-2" type="checkbox"><span class="lbl"> store004</span>
                  </label>

              </div>

              <h3 class="header smaller lighter blue">Amazon</h3>
              <div class="controls shoplist amazon" >

                  <label>
                      <input name="form-field-checkbox" class="ace-checkbox-2" type="checkbox"><span class="lbl">store001</span>
                  </label>
                  <label>
                      <input name="form-field-checkbox" class="ace-checkbox-2" type="checkbox"><span class="lbl">store002</span>
                  </label>
                  <label>
                      <input name="form-field-checkbox" class="ace-checkbox-2" type="checkbox"><span class="lbl">store003</span>
                  </label>
                  <label>
                      <input name="form-field-checkbox" class="ace-checkbox-2" type="checkbox"><span class="lbl">store004</span>
                  </label>

              </div>
              <div class="controls upc hide">UPC: <input type="text"></div>
              <div style="text-align: right;margin-top: 20px;"><button class="btn btn-primary" onclick="push()">Push</button></div>
          </div>
  </div>
  
  <form action="addOrder.action" method="post">
		商家ID:<input type="text" name="brandId">
		订单编号:<input type="text" name="orderNo">
		sku:<input type="text" name="sku">
		<input type="submit" value="新增订单">
	</form>
  
  
    </body>
    <script src="js/jquery-1.9.1.js"></script>

    <script>

      function push(){
        alert("推送成功")
      }
      $(function () {
          var checkbox = $('.amazon input[type=checkbox]');
         checkbox.change(function () {
             if($(" .amazon input[type='checkbox']:checked").length>0){
                 $('.upc').show();
             }else{
                 $('.upc').hide();
             }
         })
      })


    </script>
</html>
