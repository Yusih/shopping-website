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


            .goodscontent p{font-size: 24px;line-height: 40px;}
            .store{border:1px solid #ccc;border-radius: 10px;margin: 20px 0 20px 0;padding-left: 3%;}
            .store h3{line-height: 40px;}
            .store p{line-height: 40px;color:#666;border-top:1px solid #ccc;}



        </style>
    </head>
    <body>

    <div id="main-content" class="clearfix">
  <div id="page-content" class="clearfix">
        <div class="goodscontent">
            <p>My stores</p>
            <div class="store">
                <h3 class="blue">amamzon</h3>
                <p>store_001</p>
                <p>store_002</p>
                <p>store_003</p>
            </div>
            <div class="store">
                <h3 class="blue">ebay</h3>
                <p>store_001</p>
                <p>store_002</p>
                <p>store_003</p>
            </div>

            <div style="text-align: right"><button class="btn btn-primary addshop">Add a new store</button></div>

        </div>
    </div>
  </div>
    </body>
    <script src="js/jquery-1.9.1.js"></script>
    <script>
      $('.addshop').click(function(){
        window.location.href = "bvo-shops.jsp";
      })

    </script>
</html>
