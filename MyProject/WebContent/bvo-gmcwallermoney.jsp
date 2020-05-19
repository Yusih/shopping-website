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

  </style>
    <body>
    
    <form action="findWalletWater2.action" method="post">

    <div id="main-content" class="clearfix">
  <div id="page-content" class="clearfix">
    <div class="page-header position-relative">
      <h1 style="color: #2679b5;">借卖方 <small><i class="icon-double-angle-right"></i> 账户余额</small></h1>
    </div>

    <table id="table_bug_report" class="table table-striped table-bordered table-hover">
      <thead>
        <tr>
          <th>Account Name</th>
          <th>Available Money</th>
          <th></th>
        </tr>
      </thead>

      <tbody>
        <tr>
          <td><a href="#">${sellerWallet.sName}</a></td>
          <td>${sellerWallet.aMoney}</td>
          <td class="center">
            <div class="inline position-relative" >
              <button class="btn btn-mini btn-info" data-toggle="modal" data-target="#myModal">deposit</button>

            </div>
          </td>
        </tr>

              </tbody>
    </table>
     <div class="inline position-relative" >
              <button class="btn btn-mini btn-info" data-toggle="modal" data-target="#myModal1">Change Password</button>
              <button type="submit" class="btn btn-mini btn-info history">Record</button>
            </div>
  </form>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Deposit Account</h4>
      </div>
      <div class="modal-body" >
          
          
          <form action="updateAvailableMoney.action" method="post" id="updateMoney1">
          <input type="hidden" name="sName" value="${sellerWallet.sName}">
            <div class="control-group">
              <label class="control-label" for="form-field-1">Deposit Amount：$</label>
              <div class="controls">
                <input type="text" id="form-field-1" name="aMoney">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="form-field-1">Password：</label>
              <div class="controls">
                <input type="password" id="form-field-1" name="sPwd">
              </div>
            </div>
        <button type="reset" class="btn btn-default" data-dismiss="modal">cancel</button>
        <input type="button" class="btn btn-primary" data-dismiss="modal"  value="confirm" onclick="add()">
        </form> 
      </div>      
    </div>
  </div>
</div>
<script>
  function add(){
	  $("#updateMoney1").submit();
  }
</script>

<!-- Modal -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Change Password</h4>
      </div>
      <div class="modal-body" >
          
          <form action="updateSellerWallet.action" class="form-horizontal">
            <div class="control-group">
              <label class="control-label" for="form-field-1">old password</label>
              <div class="controls">
                <input type="password" id="form-field-1" >
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="form-field-1">new password</label>
              <div class="controls">
                <input type="password" id="form-field-1" name="sPwd">
                <input type="hidden" name="sName" value="${sellerWallet.sName}">
              </div>
            </div>
            <button type="reset" class="btn btn-default" >cancel</button>
        <button type="submit" class="btn btn-primary" >confirm</button>
        </form>
        
      </div>
      <div class="modal-footer">
        
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

        $('.history').click(function(){
          window.location.href = "bvo-gmcwallerAcountList.jsp"
        })

})



    </script>
    
  
    
    </body>
</html>
