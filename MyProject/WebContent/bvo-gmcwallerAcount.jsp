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
        <link rel="stylesheet" href="webuploader/webuploader.css">
        <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
        <style type="text/css">
            body,html{
                width: 100%;
                height: 100%;
                background: #fff;
            }


            .Register{
                width: 50%;
                margin:auto;
            }
        </style>
    </head>
    <body>
    
    <form action="findSellerWallet.action" method="post">

    
    <div id="main-content" class="clearfix">
        <div id="page-content" class="clearfix">
            <div class="page-header position-relative">
                <h1 style="color: #2679b5;">借卖方<small><i class="icon-double-angle-right"></i> 钱包账号注册</small></h1>
            </div>
            <div class="Register">
                <div><label class="green">Email:</label><input type="text" name="sEmail"></div>
                <div><label class="green">Account Name:</label><input type="text" name="sName"></div>
                <div><label class="green">Password:</label><input type="password" name="sPwd"></div>
                <button type="submit" class="btn  btn-success save" >Sign Up</button>
                
            </div>

        </div>
    </div>

    <script type="text/javascript">
    function gotoWallet(){
        window.location.href = "bvo-gmcwallermoney.jsp"
    }

    </script>
    </form>
    
    </body>
</html>
