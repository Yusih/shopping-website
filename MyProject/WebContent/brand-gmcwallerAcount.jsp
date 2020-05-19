<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    a{color:#fff;}
    a:hover{color:#fff;}
  </style>
    <body>
    
    <form action="findWalletWater.action" method="post">

    <div id="main-content" class="clearfix">
      <div id="page-content" class="clearfix">
    <div class="page-header position-relative">
      <h1 style="color: #2679b5;">品牌商 <small><i class="icon-double-angle-right"></i> 账户余额</small></h1>
    </div>
     <table id="table_bug_report" class="table table-striped table-bordered table-hover">
      <thead>
        <tr>
          <th>账户</th>
          <th>余额</th>
          <th class="center">操作</th>
        </tr>
      </thead>

      <tbody>
        <tr>
          <td>${brandWallet.bNum}</td>
          <td>${brandWallet.bMoney}</td>
          <td class="center">
            <div class="inline position-relative" data-toggle="modal" data-target="#myModal">
              <button class="btn btn-mini btn-info">提现</button>
            </div>
          </td>
        </tr>

              </tbody>
    </table>
     <div class="inline position-relative">
     <form action="findWalletWater.action">
     <button type="submit" class="btn btn-mini btn-info">提现流水</button>
              
           </form>
            </div>


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">提现</h4>
      </div>
      <div class="modal-body" >
          <form class="form-horizontal">

            <div class="control-group">
              <label class="control-label" for="form-field-1">提现：$</label>
              <div class="controls">
                <input type="text" id="form-field-1" >
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="form-field-1">密码：</label>
              <div class="controls">
                <input tid="form-field-1" type="password">
              </div>
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal">确认</button>
      </div>
    </div>
  </div>
</div>
  </div>
    </div>


    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
      $(function(){

})



    </script>
    
    </form>
    
    </body>
</html>
