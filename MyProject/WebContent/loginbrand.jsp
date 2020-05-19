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
            
            
 	<form action="LoginBrand.action" method="post">
    <div class="inputName">
        <div style="margin-bottom: 40px">品牌商登录</div>
        <div><label class="green">用户名:</label><input type="text" name="bCName" value="${brand.bCName}"></div>
        <div><label class="green">密码:</label><input type="password" name="brandPwd" value="${brand.brandPwd}"></div>
        <button type="submit" class="btn btn-success" >登录</button>
        
    </div>

	</form>
        <div style="margin-bottom: 10px">品牌商注册</div>
     <button class="btn btn-success"onclick="window.location.href='brand-addbrand.jsp'">注册</button>
    </div></div>



    </body>
    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootbox.min.js"></script>
    <script type="text/javascript">
    $(function(){


    })
    </script>
    
    </body>
</html>
