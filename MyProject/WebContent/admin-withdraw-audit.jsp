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
    <link rel="stylesheet" href="webuploader/webuploader.css">
  <style>
    body,html{
      background: #fff;
      width: 100%;
      height: 100%;
    }
      a:hover{
        cursor: pointer;
      }



  </style>
    <body>

<div id="main-content" class="clearfix">
    <div id="page-content" class="clearfix">

    <div class="page-header position-relative">
      <h1 style="color: #2679b5;">管理员<small><i class="icon-double-angle-right"></i> 提现审核</small></h1>
    </div>
    <table id="table_bug_report" class="table table-striped table-bordered table-hover">
      <thead>
        <tr>
          <th class="center">
            <label><input type="checkbox" class="ace-checkbox-2"><span class="lbl"></span></label>
          </th>
          <th>账户名</th>
          <th>业务类型</th>
          <th class="hidden-480">金额</th>
          <th class="hidden-phone">申请时间</th>
          <th>状态</th>
          <th>操作</th>
        </tr>
      </thead>

      <tbody>

        <tr>
          <td class="center">
            <label><input type="checkbox" class="input"><span class="lbl"></span></label>
          </td>
          <td>LOh</td>
          <td>充值</td>
          <td class="hidden-480">$3,330</td>
          <td class="hidden-phone">Feb 12</td>
          <td class="state">等待审核</td>
          <td>

              <a class="aa" data-toggle="modal" data-target="#myModal">审核</a>

          </td>
        </tr>


        <tr>
          <td class="center">
            <label><input type="checkbox" class="input"><span class="lbl"></span></label>
          </td>
          <td>LOh</td>
          <td>提现</td>
          <td class="hidden-480">$3,330</td>
          <td class="hidden-phone">Feb 12</td>
          <td class="state">等待审核</td>
          <td>

              <a class="aa" data-toggle="modal" data-target="#myModal">审核</a>

          </td>
        </tr>


        <tr>
          <td class="center">
            <label><input type="checkbox" class="input"><span class="lbl"></span></label>
          </td>
          <td>LOh</td>
          <td>充值</td>
          <td class="hidden-480">$3,330</td>
          <td class="hidden-phone">Feb 12</td>
          <td class="state">等待审核</td>
          <td>

              <a class="aa" data-toggle="modal" data-target="#myModal">审核</a>

          </td>
        </tr>


        <tr>
          <td class="center">
            <label><input type="checkbox" class="input"><span class="lbl"></span></label>
          </td>
          <td>LOh</td>
          <td>提现</td>
          <td class="hidden-480">$3,330</td>
          <td class="hidden-phone">Feb 12</td>
          <td class="state">等待审核</td>
          <td>
              <a class="aa" data-toggle="modal" data-target="#myModal">审核</a>
          </td>
        </tr>
      </tbody>
    </table>


        <!--modal-->
        <div class="modal fade in hide" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title" id="myModalLabel">审核</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div style="text-align: center">
                                <label style="display: inline-block;margin-right: 20px">
                                    <input name="form-field-radio" type="radio"><span class="lbl"> 通过</span>
                                </label>
                                <label style="display: inline-block">
                                    <input name="form-field-radio" type="radio"><span class="lbl"> 不通过</span>
                                </label>
                            </div>

                            <div id="uploader-demo">
                                上传水单：
                                <span class="red">(建议图片大小160*80的jpg/png格式)</span>
                                <!--用来存放item-->
                                <div id="thelist" class="uploader-list"></div>
                                <div style="width: 20%;  margin:20px auto;">
                                    <div id="filePicker" class="webuploader-container" ><div class="webuploader-pick" style="padding: 3px 5px;">选择图片</div><div id="rt_rt_1bn828lkecjk10911jjk1l811ls1" style="position: absolute; top: 0px; left: 0px; width: 86px; height: 40px; overflow: hidden; bottom: auto; right: auto;"><input type="file" name="file" class="webuploader-element-invisible" multiple="multiple" accept="image/*"><label style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label></div></div>
                                    <button id="ctlBtn" class="btn btn-default" >开始上传</button>
                                </div>

                            </div>
                            <small>如不通过，请填写原因：</small>
                            <textarea style="width: 90%" class="span12" id="form-field-8" placeholder="Default Text"></textarea>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal">保存</button>
                    </div>
                </div>
            </div>
        </div>
  </div>
</div>

    <script src="js/jquery-1.9.1.js"></script>
    <script src="webuploader/webuploader.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootbox.min.js"></script>
    <script>
      $(function(){
          /*init webuploader*/
          var $list=$("#thelist");   //这几个初始化全局的百度文档上没说明，好蛋疼。
          var $btn =$("#ctlBtn");   //开始上传
          var thumbnailWidth = 100;   //缩略图高度和宽度 （单位是像素），当宽高度是0~1的时候，是按照百分比计算，具体可以看api文档
          var thumbnailHeight = 100;

          var uploader = WebUploader.create({
              // 选完文件后，是否自动上传。
              auto: false,

              // swf文件路径
              swf: '/Uploader.swf',

              // 文件接收服务端。
              server: 'http://webuploader.duapp.com/server/fileupload.php',

              // 选择文件的按钮。可选。
              // 内部根据当前运行是创建，可能是input元素，也可能是flash.
              pick: '#filePicker',

              // 只允许选择图片文件。
              accept: {
                  title: 'Images',
                  extensions: 'gif,jpg,jpeg,bmp,png',
                  mimeTypes: 'image/*'
              },
              method:'POST',
          });
          // 当有文件添加进来的时候
          uploader.on( 'fileQueued', function( file ) {  // webuploader事件.当选择文件后，文件被加载到文件队列中，触发该事件。等效于 uploader.onFileueued = function(file){...} ，类似js的事件定义。
              var $li = $(
                              '<div id="' + file.id + '" class="file-item thumbnail">' +
                              '<img>' +
                              '<div class="info">' + file.name + '</div>' +
                              '</div>'
                      ),
                      $img = $li.find('img');


              // $list为容器jQuery实例
              $list.append( $li );

              // 创建缩略图
              // 如果为非图片文件，可以不用调用此方法。
              // thumbnailWidth x thumbnailHeight 为 100 x 100
              uploader.makeThumb( file, function( error, src ) {   //webuploader方法
                  if ( error ) {
                      $img.replaceWith('<span>不能预览</span>');
                      return;
                  }

                  $img.attr( 'src', src );
              }, thumbnailWidth, thumbnailHeight );
          });
          // 文件上传过程中创建进度条实时显示。
          uploader.on( 'uploadProgress', function( file, percentage ) {
              var $li = $( '#'+file.id ),
                      $percent = $li.find('.progress span');

              // 避免重复创建
              if ( !$percent.length ) {
                  $percent = $('<p class="progress"><span></span></p>')
                          .appendTo( $li )
                          .find('span');
              }

              $percent.css( 'width', percentage * 100 + '%' );
          });

          // 文件上传成功，给item添加成功class, 用样式标记上传成功。
          uploader.on( 'uploadSuccess', function( file ) {
              $( '#'+file.id ).addClass('upload-state-done');
          });

          // 文件上传失败，显示上传出错。
          uploader.on( 'uploadError', function( file ) {
              var $li = $( '#'+file.id ),
                      $error = $li.find('div.error');

              // 避免重复创建
              if ( !$error.length ) {
                  $error = $('<div class="error"></div>').appendTo( $li );
              }

              $error.text('上传失败');
          });

          // 完成上传完了，成功或者失败，先删除进度条。
          uploader.on( 'uploadComplete', function( file ) {
              $( '#'+file.id ).find('.progress').remove();
          });
          $btn.on( 'click', function() {
              console.log("上传...");
              uploader.upload();
              console.log("上传成功");
          });

        $('.ace-checkbox-2').change(function(){
          if($('.ace-checkbox-2').prop('checked')){
            $('.input').prop('checked',true);
          }else{
            $('.input').prop('checked',false);
          }
        })
})



    </script>
    </body>
</html>
