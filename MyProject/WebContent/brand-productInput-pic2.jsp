<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
    </head>
    <link rel="stylesheet" href="richText/bootstrap-combined.no-icons.min.css">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="richText/index.css" type="text/css"> </link>
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
    #editor{
      height: 200px;
    }


  </style>
    <body>

    <div id="main-content" class="clearfix">
      <div id="page-content" class="clearfix">
        <div class="page-header position-relative">
          <h1 style="color: #2679b5;">品牌商<small><i class="icon-double-angle-right"></i> 商品信息图片录入</small></h1>
        </div>

          <form class="form-horizontal" action="insertProduct.action" enctype="multipart/form-data" method="post">

            <div class="control-group">
              <p class="red">商品标题准确、简洁、完整</p>
              <label class="control-label" for="form-field-1">商品标题</label>
              <div class="controls">
                <input type="text" name="proName"  />
              </div>
            </div>
            <div class="control-group">
                <p class="red">请先输入GMC借卖平台商品大类，此分类决定了您的商品在借卖平台中展示的位置</p>
              <label class="control-label" for="form-field-1">商品分类</label>
              <div class="controls">
				<input type="text" id="type" name="proType" />
              </div>
            </div>


            <div class="control-group">
                <p class="red">
                    图片要求：

                    最多可以上传1张图：分辨率1000像素（高度）X 1000像素（宽度）以上；
                    正方形，为无水印白底图或情景图，商品占图片80%；
                    可以是多角度拍摄商品图片，也可以是细节图。
                </p>
              <label class="control-label" for="form-field-1">商品主图</label>
				<br>
              <div class="controls">
                  	选择图片：<input type="file" name="proPic" />
              </div>
            </div>
      	
            <div class="control-group">
              <label class="control-label" for="form-field-1">体积重</label>
              <div class="controls">
                <p class="red">指邮购零售包装体积重，以仓库实际测量为准。( 100厘米=39.3700787英寸，1千克=2.2046226磅)</p>
                长 Length <input class="input-mini" type="text" id="form-field-4-1" onkeyup="jisuan();"> cm
                宽 Width <input class="input-mini" type="text" id="form-field-4-2" onkeyup="jisuan();"> cm
                高 Height <input class="input-mini" type="text" id="form-field-4-3" onkeyup="jisuan();"> cm
                重量 Weight <input class="input-mini" type="text" id="form-field-4-4" onkeyup="jisuan();"> kg
                体积Volume  <input class="input-mini" type="text" id="form-field-4-5" onkeyup="jisuan();" name="volume">立方厘米        
					<script type="text/javascript">
						function jisuan(){
						var text1=document.getElementById("form-field-4-1").value;
						var text2=document.getElementById("form-field-4-2").value;
						var text3=document.getElementById("form-field-4-3").value;
						document.getElementById("form-field-4-5").value=parseFloat(text1)*parseFloat(text2)*parseFloat(text3);
						}
					</script>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="form-field-1">商品sku编码</label>
              <div class="controls">
                <input type="text" id="form-field-1" name="sku">
              </div>
            </div>
            <p class="red">品牌商可以选择不提供UPC和EAN码
              eBay网店不一定需要UPC码，amazon网店通常自己再另外为借卖商品申请UPC码，这样可以让商品独立销售，如果amazon网店不为借卖商品另外申请UPC码，将以跟卖商品销售商品。</p>
            <div class="control-group">
            <label class="control-label" for="form-field-1">upc编码</label>
            <div class="controls">
              <input type="text" id="form-field-1" name="upc">
              <p class="blue">UPC码也是用于商品的条码，主要用于美国和加拿大地区，UPC条码是由美国统一代码委员会制定的一种条码。出口到北美地区为了适应北美地区的需要，也需要申请UPC条码，UPC条码也有标准版和缩短版两种，标准版由12位数字构成，缩短版由8位数字构成。</p>
            </div>
          </div>
            <div class="control-group">
              <label class="control-label" for="form-field-1">ena编码</label>
              <div class="controls">
                <input type="text" id="form-field-1" name="ena">
                <p class="blue">EAN码(英文全称: European Article Number)由前缀码、厂商识别码、商品项目代码和校验码组成。前缀码是国际EAN组织标识各会员组织的代码，我国为690-695；标准版表示13位数字，又称为EAN13码，缩短码表示8位数字，又称EAN8。两种条码的最后一位为校验码，由前面的12位或7位数字计算得出。</p>
              </div>
            </div>

            <div class="control-group">
              <p class="red">商品正式上架前，请再审阅借卖价格，并选择借卖价格有效期</p>
              <label class="control-label" for="form-field-1">借卖价格 ￥</label>
              <div class="controls">
                <input type="text" id="form-field-1" name="price">
              </div>
            </div>
            
            <div class="control-group">
              <label class="control-label" for="form-field-1">商品库存</label>
              <div class="controls">
                <input type="text" id="form-field-1" name="stock">
              </div>
            </div>

            <div class="control-group">
              <p class="red">商品质保承诺将大大提升市场信心（可不提供）</p>
              <label class="control-label" for="form-field-1">保修期</label>
              <div class="controls">
                <input type="text" id="form-field-1" name="time">
              </div>
            </div>

            <div class="control-group">
              <p class="red">注意：在eBay网店，商品详情可以利用图片+文字的方式推送</p>
              <label class="control-label" for="form-field-1">eBay description:</label>
              <div class="controls">
                <div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
                  <div class="btn-group">
                    <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="icon-font"></i><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      <li><a data-edit="fontName Serif" style="font-family:'Serif'">Serif</a></li><li><a data-edit="fontName Sans" style="font-family:'Sans'">Sans</a></li><li><a data-edit="fontName Arial" style="font-family:'Arial'">Arial</a></li><li><a data-edit="fontName Arial Black" style="font-family:'Arial Black'">Arial Black</a></li><li><a data-edit="fontName Courier" style="font-family:'Courier'">Courier</a></li><li><a data-edit="fontName Courier New" style="font-family:'Courier New'">Courier New</a></li><li><a data-edit="fontName Comic Sans MS" style="font-family:'Comic Sans MS'">Comic Sans MS</a></li><li><a data-edit="fontName Helvetica" style="font-family:'Helvetica'">Helvetica</a></li><li><a data-edit="fontName Impact" style="font-family:'Impact'">Impact</a></li><li><a data-edit="fontName Lucida Grande" style="font-family:'Lucida Grande'">Lucida Grande</a></li><li><a data-edit="fontName Lucida Sans" style="font-family:'Lucida Sans'">Lucida Sans</a></li><li><a data-edit="fontName Tahoma" style="font-family:'Tahoma'">Tahoma</a></li><li><a data-edit="fontName Times" style="font-family:'Times'">Times</a></li><li><a data-edit="fontName Times New Roman" style="font-family:'Times New Roman'">Times New Roman</a></li><li><a data-edit="fontName Verdana" style="font-family:'Verdana'">Verdana</a></li></ul>
                  </div>
                  <div class="btn-group">
                    <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
                      <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
                      <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
                    </ul>
                  </div>
                  <div class="btn-group">
                    <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
                    <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
                    <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="icon-strikethrough"></i></a>
                    <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
                  </div>
                  <div class="btn-group">
                    <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="icon-list-ul"></i></a>
                    <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="icon-list-ol"></i></a>
                    <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
                    <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="icon-indent-right"></i></a>
                  </div>
                  <div class="btn-group">
                    <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
                    <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
                    <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
                    <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
                  </div>


                  <div class="btn-group">
                    <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
                    <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
                  </div>
                  <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="" style="display: none;" name="ebayDes">
                </div>

                <div id="editor" contenteditable="true">
                  输入内容…
                </div>
              </div>
            </div>
            <div class="control-group">
              <p class="red">在Amazon网店，目前只允许白金级别网店以图片+文字方式推送，其余将删除图片，只推送纯文字</p>
              <label class="control-label" for="form-field-1">Amazon description:</label>
              <div class="controls">
                <div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
                  <div class="btn-group">
                    <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="icon-font"></i><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      <li><a data-edit="fontName Serif" style="font-family:'Serif'">Serif</a></li><li><a data-edit="fontName Sans" style="font-family:'Sans'">Sans</a></li><li><a data-edit="fontName Arial" style="font-family:'Arial'">Arial</a></li><li><a data-edit="fontName Arial Black" style="font-family:'Arial Black'">Arial Black</a></li><li><a data-edit="fontName Courier" style="font-family:'Courier'">Courier</a></li><li><a data-edit="fontName Courier New" style="font-family:'Courier New'">Courier New</a></li><li><a data-edit="fontName Comic Sans MS" style="font-family:'Comic Sans MS'">Comic Sans MS</a></li><li><a data-edit="fontName Helvetica" style="font-family:'Helvetica'">Helvetica</a></li><li><a data-edit="fontName Impact" style="font-family:'Impact'">Impact</a></li><li><a data-edit="fontName Lucida Grande" style="font-family:'Lucida Grande'">Lucida Grande</a></li><li><a data-edit="fontName Lucida Sans" style="font-family:'Lucida Sans'">Lucida Sans</a></li><li><a data-edit="fontName Tahoma" style="font-family:'Tahoma'">Tahoma</a></li><li><a data-edit="fontName Times" style="font-family:'Times'">Times</a></li><li><a data-edit="fontName Times New Roman" style="font-family:'Times New Roman'">Times New Roman</a></li><li><a data-edit="fontName Verdana" style="font-family:'Verdana'">Verdana</a></li></ul>
                  </div>
                  <div class="btn-group">
                    <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
                      <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
                      <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
                    </ul>
                  </div>
                  <div class="btn-group">
                    <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
                    <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
                    <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="icon-strikethrough"></i></a>
                    <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
                  </div>
                  <div class="btn-group">
                    <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="icon-list-ul"></i></a>
                    <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="icon-list-ol"></i></a>
                    <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
                    <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="icon-indent-right"></i></a>
                  </div>
                  <div class="btn-group">
                    <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
                    <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
                    <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
                    <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
                  </div>


                  <div class="btn-group">
                    <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
                    <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
                  </div>
                  <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="" style="display: none;" name="AmazonDes">
                </div>

                <div id="editor" contenteditable="true">
                  输入内容…
                </div>
              </div>
            </div>
      	
      	        <div class="modal-footer">
        	<button type="reset" class="btn btn-default" data-dismiss="modal">取消</button>
        	<button type="submit" class="btn btn-primary" data-dismiss="modal">保存</button>
      	</div>
      	
        </form>
        
		</div>
    </div>
    <script src="js/jquery-1.9.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootbox.min.js"></script>
    <script src="richText/bootstrap-wysiwyg.js" type="text/javascript"></script>
    <script src="richText/jquery.hotkeys.js" type="text/javascript"></script>
    </body>
</html>
