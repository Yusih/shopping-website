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
  <style>
    body,html{
      width: 100%;
      height: 100%;
      background: #fff;
    }


    .info div{
        float: right;
    }
  </style>
    <body>
    
    

    <div id="main-content" class="clearfix">
      <div id="page-content" class="clearfix">

    <div class="page-header position-relative">
              <h1 style="color: #2679b5;">品牌商 <small><i class="icon-double-angle-right"></i> 提现明细</small></h1>
            </div>
    <table id="table_bug_report" class="table table-striped table-bordered table-hover">
      <thead>
        <tr>
          <th>交易流水号</th>
          <th>余额</th>
          <th>时间</th>
          <th class="center">状态</th>
        </tr>
      </thead>

     
      <tbody>
       <c:forEach items="${brandWallet}" var="brandWallet">
        <tr>
          
          <td>${brandWallet.tranNum}</td>
          <td>${brandWallet.money}</td>
          <td>
            ${brandWallet.createTime}
          </td>
          <td class="center">
            ${brandWallet.state}
          </td>
          
        </tr>
        </c:forEach>
              </tbody>
              
        
    </table>
  </div></div>

    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
      $(function(){

})



    </script>
    
    
    </body>
</html>
