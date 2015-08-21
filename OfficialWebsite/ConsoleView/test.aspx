<%@ Page Title="" Language="C#" MasterPageFile="~/ConsoleView/Site1.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="OfficialWebsite.ConsoleView.test" %>

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
    <div class="page-content">
        <div class="page-header">
            <h1>这里是标题</h1>
        </div>
        <!-- /.page-header -->
        <div class="row">
            <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->

                <h4 class="header green clearfix">Bootstrap Lightweight Editor
									<span class="block pull-right">
                                        <small class="grey middle">Choose style: &nbsp;</small>

                                        <span class="btn-toolbar inline middle no-margin">
                                            <span data-toggle="buttons" class="btn-group no-margin">
                                                <label class="btn btn-sm btn-yellow">
                                                    1
													<input type="radio" value="1" />
                                                </label>

                                                <label class="btn btn-sm btn-yellow active">
                                                    2
													<input type="radio" value="2" />
                                                </label>

                                                <label class="btn btn-sm btn-yellow">
                                                    3
													<input type="radio" value="3" />
                                                </label>
                                            </span>
                                        </span>
                                    </span>
                </h4>

                <div class="wysiwyg-editor" id="editor1"></div>

                <label class="btn btn-sm btn-danger" onclick="testajax()"><i class="icon-save bigger-125"></i>Save</label>
                <div>
                    <label for="form-field-9">With Character Limit</label>

                    <textarea class="form-control limited" id="textarea1" maxlength="50"></textarea>
                </div>
                <div class="hr hr-double dotted"></div>



                <script type="text/javascript">
                    var $path_assets = "assets";//this will be used in loading jQuery UI if needed!
                </script>

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

            $('[data-toggle="buttons"] .btn').on('click', function (e) {
                var target = $(this).find('input[type=radio]');
                var which = parseInt(target.val());
                var toolbar = $('#editor1').prev().get(0);
                if (which == 1 || which == 2 || which == 3) {
                    toolbar.className = toolbar.className.replace(/wysiwyg\-style(1|2)/g, '');
                    if (which == 1) $(toolbar).addClass('wysiwyg-style1');
                    else if (which == 2) $(toolbar).addClass('wysiwyg-style2');
                }
            });




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
                url: "testajax.aspx/GetValueAjax",
                data: "{'wysiwyg':'" + s + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    $('#textarea1').val(data.d)
                    
                    //alert();
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(XMLHttpRequest.status);
                    alert(XMLHttpRequest.readyState);
                    alert(textStatus);
                }
            });


        }
    </script>
    <div style="display: none">
        <script src='../Scripts/stat.js' language='JavaScript' charset='gb2312'></script>
    </div>
</asp:Content>
