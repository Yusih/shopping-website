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
              <h1 style="color: #2679b5;">借卖方<small><i class="icon-double-angle-right"></i> 我的信息</small></h1>
            </div>
            
    <form action="update.action" method="post">
    <div class="inputName">
        <div style="margin-bottom: 40px">Username:gmcbrand1</div>
                                              <input type="hidden" name="sellerId" value="${seller.sellerId}">  
        <div><label class="green">Name:</label><input type="text" name="sName" value="${seller.sName}"></div>
        <div><label class="green">Email:</label><input type="text" name="sEmail" value="${seller.sEmail}"></div>
        <div><label class="green">Phone:</label><input type="text" name="sPhone" value="${seller.sPhone}"></div>
        <button type="submit" class="btn  btn-success save" onclick="submitto()">save</button>
    </div>
     </form>
           

    </div></div>


    <div id="main-content" class="clearfix">
  <div id="page-content" class="clearfix">
           <div class="page-header position-relative">
              <h1 style="color: #2679b5;">借卖方<small><i class="icon-double-angle-right"></i> 我的店铺</small></h1>
            </div>
            
    <div class="inputName">
        
        <button class="btn  btn-pink" onclick="myshop()">My Stores</button>
    </div>
           

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
   
    <script >
     function submitto(){
    	 alert("修改成功");
     }  
    </script>
    
    </body>
</html>
