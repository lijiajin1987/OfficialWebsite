<%@ Page Title="" Language="C#" MasterPageFile="~/ConsoleView/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" ValidateRequest="false" Inherits="OfficialWebsite.ConsoleView.About"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- basic styles -->

    <link href="../Content/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../Content/css/font-awesome.min.css" />

    <!--[if IE 7]>
		  <link rel="stylesheet" href="../Content/css/font-awesome-ie7.min.css" />
		<![endif]-->

    <!-- page specific plugin styles -->

    <link rel="stylesheet" href="../Content/css/jquery-ui-1.10.3.custom.min.css" />

    <!-- fonts -->

    <link rel="stylesheet" href="../Content/css/fonts-googleapis.css" />

    <!-- ace styles -->

    <link rel="stylesheet" href="../Content/css/ace.min.css" />
    <link rel="stylesheet" href="../Content/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="../Content/css/ace-skins.min.css" />

    <!--[if lte IE 8]>
		  <link rel="stylesheet" href="../Content/css/ace-ie.min.css" />
		<![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->

    <script src="../Scripts/ace-extra.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
		<script src="../Scripts/html5shiv.js"></script>
		<script src="../Scripts/respond.min.js"></script>
		<![endif]-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
						    try { ace.settings.check('breadcrumbs', 'fixed') } catch (e) { }
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">首页</a>
							</li>

							<li>
								<a href="#">公司</a>
							</li>
							<li class="active">关于我们</li>
						</ul><!-- .breadcrumb -->

					</div>

        <div class="page-content">
        <div class="page-header">
            <h1>关于我们</h1>
        </div>
        <!-- /.page-header -->
        <div class="row">
            <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->

                <h4 class="header green clearfix">关于我们文章编辑
                </h4>

                <div class="wysiwyg-editor" id="editor1"></div>

                <div class="clearfix form-actions">
                    <label class="btn btn-sm btn-danger" onclick="testajax()"><i class="icon-save bigger-125"></i>保存</label>
                    <label id="editorstate" class="text-danger"></label>
                </div>
                
                <div class="hr hr-double dotted"></div>

                <!-- PAGE CONTENT ENDS -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.page-content -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="end" runat="server">
    <!-- basic scripts -->

    <!--[if !IE]> -->

    <script src="../Scripts/2.0.3/jquery.min.js"></script>

    <!-- <![endif]-->

    <!--[if IE]>
<script src="../Scripts/1.10.2/jquery.min.js"></script>
<![endif]-->

    <!--[if !IE]> -->

    <script type="text/javascript">
        window.jQuery || document.write("<script src='../Scripts/jquery-2.0.3.min.js'>" + "<" + "/script>");
    </script>

    <!-- <![endif]-->

    <!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='../Scripts/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

    <script type="text/javascript">
        if ("ontouchend" in document) document.write("<script src='../Scripts/jquery.mobile.custom.min.js'>" + "<" + "/script>");
    </script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/typeahead-bs2.min.js"></script>

    <!-- page specific plugin scripts -->

    <script src="../Scripts/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="../Scripts/jquery.ui.touch-punch.min.js"></script>
    <script src="../Scripts/markdown/markdown.min.js"></script>
    <script src="../Scripts/markdown/bootstrap-markdown.min.js"></script>
    <script src="../Scripts/jquery.hotkeys.min.js"></script>
    <script src="../Scripts/bootstrap-wysiwyg.min.js"></script>
    <script src="../Scripts/bootbox.min.js"></script>

    <!-- ace scripts -->

    <script src="../Scripts/ace-elements.min.js"></script>
    <script src="../Scripts/ace.min.js"></script>

    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        jQuery(function ($) {

            function showErrorAlert(reason, detail) {
                var msg = '';
                if (reason === 'unsupported-file-type') { msg = "Unsupported format " + detail; }
                else {
                    console.log("error uploading file", reason, detail);
                }
                $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
                 '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
            }

            //$('#editor1').ace_wysiwyg();//this will create the default editor will all buttons

            //but we want to change a few buttons colors for the third style
            $('#editor1').ace_wysiwyg({
                toolbar:
                [
                    'font',
                    null,
                    'fontSize',
                    null,
                    { name: 'bold', className: 'btn-info' },
                    { name: 'italic', className: 'btn-info' },
                    { name: 'strikethrough', className: 'btn-info' },
                    { name: 'underline', className: 'btn-info' },
                    null,
                    { name: 'insertunorderedlist', className: 'btn-success' },
                    { name: 'insertorderedlist', className: 'btn-success' },
                    { name: 'outdent', className: 'btn-purple' },
                    { name: 'indent', className: 'btn-purple' },
                    null,
                    { name: 'justifyleft', className: 'btn-primary' },
                    { name: 'justifycenter', className: 'btn-primary' },
                    { name: 'justifyright', className: 'btn-primary' },
                    { name: 'justifyfull', className: 'btn-inverse' },
                    null,
                    { name: 'createLink', className: 'btn-pink' },
                    { name: 'unlink', className: 'btn-pink' },
                    null,
                    { name: 'insertImage', className: 'btn-success' },
                    null,
                    'foreColor',
                    null,
                    { name: 'undo', className: 'btn-grey' },
                    { name: 'redo', className: 'btn-grey' }
                ],
                'wysiwyg': {
                    fileUploadError: showErrorAlert
                }
            }).prev().addClass('wysiwyg-style2');


            //Add Image Resize Functionality to Chrome and Safari
            //webkit browsers don't have image resize functionality when content is editable
            //so let's add something using jQuery UI resizable
            //another option would be opening a dialog for user to enter dimensions.
            if (typeof jQuery.ui !== 'undefined' && /applewebkit/.test(navigator.userAgent.toLowerCase())) {

                var lastResizableImg = null;
                function destroyResizable() {
                    if (lastResizableImg == null) return;
                    lastResizableImg.resizable("destroy");
                    lastResizableImg.removeData('resizable');
                    lastResizableImg = null;
                }

                var enableImageResize = function () {
                    $('.wysiwyg-editor')
                    .on('mousedown', function (e) {
                        var target = $(e.target);
                        if (e.target instanceof HTMLImageElement) {
                            if (!target.data('resizable')) {
                                target.resizable({
                                    aspectRatio: e.target.width / e.target.height,
                                });
                                target.data('resizable', true);

                                if (lastResizableImg != null) {//disable previous resizable image
                                    lastResizableImg.resizable("destroy");
                                    lastResizableImg.removeData('resizable');
                                }
                                lastResizableImg = target;
                            }
                        }
                    })
                    .on('click', function (e) {
                        if (lastResizableImg != null && !(e.target instanceof HTMLImageElement)) {
                            destroyResizable();
                        }
                    })
                    .on('keydown', function () {
                        destroyResizable();
                    });
                }

                enableImageResize();

                /**
                //or we can load the jQuery UI dynamically only if needed
                if (typeof jQuery.ui !== 'undefined') enableImageResize();
                else {//load jQuery UI if not loaded
                    $.getScript($path_assets+"/js/jquery-ui-1.10.3.custom.min.js", function(data, textStatus, jqxhr) {
                        if('ontouchend' in document) {//also load touch-punch for touch devices
                            $.getScript($path_assets+"/js/jquery.ui.touch-punch.min.js", function(data, textStatus, jqxhr) {
                                enableImageResize();
                            });
                        } else	enableImageResize();
                    });
                }
                */
            }


        });
    </script>
    <script type="text/javascript">
        function testajax() {
            var s = $('#editor1').html();
            //alert(s);
            $.ajax({
                type: "Post",
                url: "ashx/UpAboutHandler.ashx",
                data: {Content:s},
                dataType: "json",
                success: function (data) {
                    $('#editor1').val(data.Result);
                },
                beforeSend: function () {
                    
                    //执行前发生
                },
                complete: function () {
                    $('#editorstate').html("保存成功");
                    
                    //执行完成后发生
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    //alert(XMLHttpRequest.status);
                    //alert(XMLHttpRequest.readyState);
                    //alert(textStatus);
                    $('#editorstate').html("保存失败");
                }
            });


        }
        $(document).ready(function () {
            //用ajax加载数据
            $.ajax({
                type: "get",
                url: "ashx/GetAboutHandler.ashx",
                data: { Tag: "3" },
                dataType: "text",
                success: function (data) {
                    $('#editor1').append(data);
                    //处理结果
                },
                beforeSend: function () {
                    //执行前发生
                },
                complete: function () {
                    //执行完成后发生
                }//,
                //error: function (XMLHttpRequest, textStatus, errorThrown) {
                //    alert(XMLHttpRequest.status);
                //    alert(XMLHttpRequest.readyState);
                //    alert(textStatus);
                //}
            });
        });
    </script>
    <div style="display: none">
        <script src='../Scripts/stat.js' language='JavaScript' charset='gb2312'></script>
    </div>
</asp:Content>
