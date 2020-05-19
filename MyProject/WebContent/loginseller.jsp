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
            
            
 	<form action="LoginSeller.action" method="post">
    <div class="inputName">
        <div style="margin-bottom: 40px">借卖方登录</div>
        <div><label class="green">用户名:</label><input type="text" name="sName" value="${seller.sName}"></div>
        <div><label class="green">密码:</label><input type="password" name="sPwd" value="${seller.sPwd}"></div>
        <button type="submit" class="btn btn-success" >登录</button>

    </div>

	</form>
	 	<form action="RegisterSeller.action" method="post">
    <div class="inputName">
        <div style="margin-bottom: 40px">借卖方注册</div>
                                              
        <div><label class="green">用户名:</label><input type="text" name="sName" ></div>
        <div><label class="green">密码:</label><input type="password" name="sPwd" ></div>
        <div><label class="green">邮箱:</label><input type="text" name="sEmail" ></div>
        <div><label class="green">联系电话:</label><input type="text" name="sPhone" ></div>
        <button type="submit" class="btn btn-success" onclick="submittw()">注册</button>

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
    </script>
        <script >
     function submittw(){
    	 alert("注册成功");
     }  
    </script>
    
    </body>
</html>
