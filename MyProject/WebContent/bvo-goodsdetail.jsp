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
            .goods-header{
                overflow: hidden;
            }
            .goods-header-left{
                width: 30%;
                float: left;
            }
            .goods-header-right{
                width: 70%;
                float: left;
            }
            .goods-header-left img{
                width: 100%;
            }

        </style>
    </head>
    <body>
	
        <div id="main-content" class="clearfix">
            <div id="page-content" class="clearfix">
            
            
            <form action="addWishlist.action" method="post">
            <div class="goods-header">
                <div class="goods-header-left"><img src="${product.proPic}" alt="" /></div>
                <div class="goods-header-right">
                    <p>${product.proName}</p>
                    <p class="red">￥${product.price}</p>
                    <p>sku:${product.sku}</p>
                    <p>Brand：${product.brandName}</p>
                    <p>Stock in US：${product.stock}</p>
                    <input type="hidden" name="wishName" value="${product.proName}">
                    <input type="hidden" name="wishPic" value="${product.proPic}">
                    <input type="hidden" name="wishsku" value="${product.sku}">
                    <input type="hidden" name="wishPrice" value="${product.price}">
                    <button type="submit" class="btn btn-primary">Add to Wish List</button>
                </div>
            </div>
			</form>
			<form action="addOrder.action" method="post">
            <input type="hidden" name="brandId" value="${product.brandId}">
            <input type="hidden" name="sku" value="${product.sku}">
            <input type="hidden" name="price" value="${product.price}">
            <button type="submit" class="btn btn-primary">Add to Order</button>
			</form>
            
                <h4 class="lighter">Item Description</h4>
                <div class="tabbable">
                    <ul class="nav nav-tabs" id="myTab">
                        <li class="active"><a data-toggle="tab" href="#ebay"> ebay description</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="ebay" class="tab-pane active">
                            ${product.ebayDes}
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </body>
    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
</html>
