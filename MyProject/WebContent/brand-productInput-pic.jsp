<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="webuploader/webuploader.css">


  <style>
    body,html{
      width: 100%;
      height: 100%;
      background: #fff;
    }

    .modal{
      width: 800px;
      margin-left: -400px;
    }
    .form-control {
    display: block;
    width: 50%;
    height: 35px;
    line-height: 35px;
    margin-bottom: 20px;
    padding: 6px 12px;
    font-size: 14px;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
 .thumbnail {
    float: left;
    position: relative;
    margin: 0 20px 20px 0;
    width: 110px;
    height: 110px;
    padding: 4px;
  }
  .file-item .info {
    position: absolute;
    left: 4px;
    bottom: 4px;
    right: 4px;
    height: 20px;
    line-height: 20px;
    text-indent: 5px;
    background: rgba(0, 0, 0, 0.6);
    color: white;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    font-size: 12px;
    z-index: 10;
}
#filePicker {
    display: inline-block;

    vertical-align: middle;
    margin: 0 12px 0 0;
}
.imgList{
  width: 30px;
  height: 30px;
}
  .red{
      width: 73%;
      margin: auto;
  }
  </style>
    <body>


    <div id="main-content" class="clearfix">
  <div id="page-content" class="clearfix">

    <div class="page-header position-relative" data-toggle="modal" data-target="#myModal">
      <h1 style="color: #2679b5;">品牌商 <small><i class="icon-double-angle-right"></i> 商品分类&主图</small></h1>
    </div>
      <form action="searchProduct.action" class="form-search">
          商品标题：
          <input type="text" class="input-medium search-query" name="proName">
          <button type="submit" class="btn btn-purple btn-small">Search <i class="icon-search icon-on-right"></i></button>
      </form>

      <table id="table_bug_report" class="table table-striped table-bordered table-hover">
      <thead>
        <tr>
          <th class="center">
            <label><input type="checkbox" class="ace-checkbox-2"><span class="lbl"></span></label>
          </th>
          <th>商品标题</th>
          <th>分类</th>
          <th class="hidden-480">主图</th>
          <th class="hidden-480">状态</th>
          <th>操作</th>
        </tr>
      </thead>

      <tbody>
     
      <c:forEach items="${product}" var="product">
      
        <tr>
          <td class="center">
            <label><input type="checkbox" class="input"><span class="lbl"></span></label>
          </td>
          <td>${product.proName}</td>
          <td>${product.proType}</td>
          <td class="hidden-480"><img src="${product.proPic}" alt="" class="imgList"></td>
          <td class="hidden-480"><span class="label label-sm label-warning">${product.proState}</span></td>
          
          <td>
            <div class="inline position-relative" align="left">
              <button class="btn btn-mini btn-info" onclick="javascrtpt:window.location.href='searchOneProduct.action?proName=${product.proName}'"><i class="icon-edit"></i></button>
               <div align="reight">
               <form action="deleteProduct.action" method="post">
               <input type="hidden" name="proName" value="${product.proName}" />
          <input type="hidden" name="proType" value="${product.proType}" />
          <input type="hidden" name="proPic" value="${product.proPic}" />
          <input type="hidden" name="proState" value="${product.proState}" />
              <button type="submit" class="btn btn-mini btn-danger"><i class="icon-trash"></i></button>
              </form>
              </div>
            </div>
          </td>
        </tr>
        
		</c:forEach>
		
              </tbody>
    </table>
    <button class="btn btn-primary" onclick="gotoadd()">新增</button>
  </div></div>

    <script src="js/jquery-1.9.1.js"></script>
    <script src="webuploader/webuploader.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootbox.min.js"></script>
      <script>
function gotoadd() {
  window.location.href = "brand-productInput-pic2.jsp";
}


    </script>
    </body>
</html>
