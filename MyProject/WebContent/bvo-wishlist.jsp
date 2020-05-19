<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
        <style type="text/css">
            body,html{
                width: 100%;
                height: 100%;
                background: #fff;
            }
            img{
                width: 200px;
                height: 200px;
            }
            .imglist{
                width: 100%;
                height: 250px;
                list-style: none;
                margin-left: 100px;

            }
            .imglist a{
                display: block;
                width: 100%;
                height: 100%;
            }
            .imglist img{
                float: left;
                margin-right: 20px;
            }
            .imglist .right,.imglist label{
                float: left;
            }
            .imglist label{
                width: 25px;
                height: 25px;
                margin-right: 10px;
            }
        </style>
    </head>
    <body>
        <div id="main-content" class="clearfix">
            <div id="page-content" class="clearfix" style="margin-top: 45px;">
             <div class="page-header position-relative">
              <h1 style="color: #2679b5;">借卖方<small><i class="icon-double-angle-right"></i> 心愿单</small></h1>
            </div>
            <form action="deleteWishlist.action" method="post">
            <button type="submit" class="btn btn-success"><i class="icon-trash icon-4x icon-only">delete</i></button>
            <ul>
                <li class="imglist">
                	<c:forEach items="${wishlist}" var="wishlist">
                    <label><input type="checkbox" class="input" name="wishName" value="${wishlist.wishName}"><span class="lbl"></span></label>
                    <a href="findOneWishlist.action?wishName=${wishlist.wishName}">
                    <img src="${wishlist.wishPic}"  alt="" />
                    <div class="right">
                        <p>${wishlist.wishName}</p>
                        <span class="red">￥ ${wishlist.wishPrice}</span>
                        <p>sku:${wishlist.wishsku} </p>
                        <input type="checkbox" />
                    </div>
                    </a>
                    </c:forEach>
                </li>
            </ul>
            </form>
            <script type="text/javascript">
       			$("#getCheckboxValue").click(function(){
          			 var str = document.getElementsByName("checkboxValue");
           			 var arr = str.length;
           			 var tar = "";
           			 for(var i=0;i<arr;i++){
               				if(str[i].checked == true){
                   				tar+=str[i].value+",";
               				}
           			 }
           if(tar==""){
               alert("请选择一个删除");
           }else{
               alert("您要删除的是---"+tar);
           }
       });

			</script>
        </div>
        </div>
        <script type="text/javascript">
            $(function(){

            })
        </script>
    </body>
</html>
