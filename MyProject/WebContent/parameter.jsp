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

  </style>
    <body>
 <div id="main-content" class="clearfix">
  <div id="page-content" class="clearfix">

    <div class="page-header position-relative">
              <h1 style="color: #2679b5;">参数管理</h1>
            </div>
    <table id="table_bug_report" class="table table-striped table-bordered table-hover">
      <thead>
        <tr>
          <th class="center">
            <label><input type="checkbox" class="ace-checkbox-2"><span class="lbl"></span></label>
          </th>
          <th>参数主键</th>
          <th>参数值</th>
          <th>参数说明</th>
          <th>操作</th>
        </tr>
      </thead>

      <tbody>

        <tr>
          <td class="center">
            <label><input type="checkbox" class="input" ><span class="lbl"></span></label>
          </td>

          <td>STOCK_TIME</td>
          <td>7</td>
          <td>库存预警天数</td>
          <td>
            <div class="inline position-relative" >
              <button class="btn btn-mini btn-info" data-toggle="modal" data-target="#myModal"><i class="icon-edit"></i></button>
              <button class="btn btn-mini btn-danger"><i class="icon-trash"></i></button>
            </div>
          </td>
        </tr>

        <tr>
          <td class="center">
            <label><input type="checkbox" class="input"><span class="lbl"></span></label>
          </td>

          <td>POUNDAGE</td>
          <td>0</td>
          <td>提现手续费</td>
          <td>
            <div class="inline position-relative" >
              <button class="btn btn-mini btn-info" data-toggle="modal" data-target="#myModal"><i class="icon-edit"></i></button>
              <button class="btn btn-mini btn-danger"><i class="icon-trash"></i></button>
            </div>
          </td>
        </tr>


              </tbody>
    </table>

<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">新增</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">参数信息</h4>
      </div>
      <div class="modal-body" >
          <form class="form-horizontal">

            <div class="control-group">
              <label class="control-label" for="form-field-1">参数主键</label>
              <div class="controls">
                <input type="text" id="form-field-1" >
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="form-field-1">参数值</label>
              <div class="controls">
                 <input type="text" id="form-field-1" >
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="form-field-1">参数描述</label>
              <div class="controls">
                <input type="text" id="form-field-1">
              </div>
            </div>

        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal">保存</button>
      </div>
    </div>
  </div>
</div>
  </div></div>
    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootbox.min.js"></script>
    <script>
      $(function(){
        $('.ace-checkbox-2').change(function(){
          if($('.ace-checkbox-2').prop('checked')){
            $('.input').prop('checked',true);
          }else{
            $('.input').prop('checked',false);
          }
        })

        $('.btn-danger').click(function(){
            bootbox.alert("删除成功！");
        })

})



    </script>
    </body>
</html>
