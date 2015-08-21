<%@ Page Title="" Language="C#" MasterPageFile="~/ConsoleView/Site1.Master" AutoEventWireup="true" CodeBehind="AddRecruitment.aspx.cs" Inherits="OfficialWebsite.ConsoleView.AddRecruitment" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- basic styles -->

    <link href="../Content/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../Content/css/font-awesome.min.css" />

    <!--[if IE 7]>
		  <link rel="stylesheet" href="../Content/css/font-awesome-ie7.min.css" />
		<![endif]-->

    <!-- page specific plugin styles -->

    <link rel="stylesheet" href="../Content/css/jquery-ui-1.10.3.custom.min.css" />
    <link rel="stylesheet" href="../Content/css/chosen.css" />
    <link rel="stylesheet" href="../Content/css/datepicker.css" />
    <link rel="stylesheet" href="../Content/css/bootstrap-timepicker.css" />
    <link rel="stylesheet" href="../Content/css/daterangepicker.css" />
    <link rel="stylesheet" href="../Content/css/colorpicker.css" />

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
                <a href="#">加入我们</a>
            </li>
            <li class="active">招聘信息编辑</li>
        </ul>
        <!-- .breadcrumb -->

        <div class="nav-search hidden" id="nav-search">
        </div>
        <!-- #nav-search -->
    </div>

    <div class="page-content">
        <div class="page-header">
            <h1>招聘信息编辑
            </h1>
        </div>
        <!-- /.page-header -->

        <div class="row">
            <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->

                <div class="form-horizontal" role="form">

                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">工作地点 </label>

                        <div class="col-sm-9">
                            <div class="clearfix">
								<input type="text" id="WorkingAddress" name="WorkingAddress" placeholder="工作地点" class="col-xs-10 col-sm-5" />
							</div>
                            
                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">职位名称 </label>

                        <div class="col-sm-9">
                            <input type="text" id="JobTitle" name="JobTitle" placeholder="职位名称" class="col-xs-10 col-sm-5" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">岗位职责 </label>

                        <div class="col-sm-8">
                            <div class="wysiwyg-editor" id="editor1"></div>
                        </div>
                        <div class="col-sm-1">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">岗位描述 </label>

                        <div class="col-sm-8">
                            <div class="wysiwyg-editor" id="editor2"></div>
                        </div>
                        <div class="col-sm-1">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1">投递方式 </label>

                        <div class="col-sm-9">
                            <input type="text" id="MailBox" name="MailBox" placeholder="投递方式" class="col-xs-10 col-sm-5" />
                        </div>
                    </div>
                    <div class="clearfix form-actions">
                        <div class="col-md-offset-3 col-md-9">
                            <button class="btn btn-info" type="button" id="btnSubmit">
                                <i class="icon-ok bigger-110"></i>
                                提交
                            </button>

                            &nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
                                                <i class="icon-undo bigger-110"></i>
                                                重置
                                            </button>
                        </div>
                    </div>

                </div>

                <!-- PAGE CONTENT ENDS -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.page-content -->
    <div>
        <label class="hidden" id="jobid"><%=jobid %></label></div>
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

    <!--[if lte IE 8]>
		  <script src="../Scripts/excanvas.min.js"></script>
		<![endif]-->

    <script src="../Scripts/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="../Scripts/jquery.ui.touch-punch.min.js"></script>
    <script src="../Scripts/jquery.validate.min.js"></script>
    <script src="../Scripts/chosen.jquery.min.js"></script>
    <script src="../Scripts/fuelux/fuelux.spinner.min.js"></script>
    <script src="../Scripts/date-time/bootstrap-datepicker.min.js"></script>
    <script src="../Scripts/date-time/bootstrap-timepicker.min.js"></script>
    <script src="../Scripts/date-time/moment.min.js"></script>
    <script src="../Scripts/date-time/daterangepicker.min.js"></script>
    <script src="../Scripts/bootstrap-colorpicker.min.js"></script>
    <script src="../Scripts/jquery.knob.min.js"></script>
    <script src="../Scripts/jquery.autosize.min.js"></script>
    <script src="../Scripts/jquery.inputlimiter.1.3.1.min.js"></script>
    <script src="../Scripts/jquery.maskedinput.min.js"></script>
    <script src="../Scripts//bootstrap-tag.min.js"></script>

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



            //we could just set the data-provide="tag" of the element inside HTML, but IE8 fails!
            //var tag_input = $('#form-field-tags');
            //if (!(/msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()))) {
            //    tag_input.tag(
            //      {
            //          placeholder: tag_input.attr('placeholder'),
            //          //enable typeahead by specifying the source array
            //          source: ace.variable_US_STATES,//defined in ace.js >> ace.enable_search_ahead
            //      }
            //    );
            //}
            //else {
            //    //display a textarea for old IE, because it doesn't support this plugin or another one I tried!
            //    tag_input.after('<textarea id="' + tag_input.attr('id') + '" name="' + tag_input.attr('name') + '" rows="3">' + tag_input.val() + '</textarea>').remove();
            //    //$('#form-field-tags').autosize({append: "\n"});
            //}




            /////////
            

            //chosen plugin inside a modal will have a zero width because the select element is originally hidden
            //and its width cannot be determined.
            //so we set the width after modal is show
 
            /**
            //or you can activate the chosen plugin after modal is shown
            //this way select element becomes visible with dimensions and chosen works as expected
            $('#modal-form').on('shown', function () {
                $(this).find('.modal-chosen').chosen();
            })
            */


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
                    { name: 'insertorderedlist', className: 'btn-success' },
                    { name: 'undo', className: 'btn-grey' },
                    { name: 'redo', className: 'btn-grey' }
                ],
                'wysiwyg': {
                    fileUploadError: showErrorAlert
                }
            }).prev().addClass('wysiwyg-style2');

            $('#editor2').ace_wysiwyg({
                toolbar:
                [
                    { name: 'insertorderedlist', className: 'btn-success' },
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
        $(document).ready(function () {
            $('.form-group').removeClass("has-error");
            //这里加载数据
            //alert($("#jobid").html());
            if ($("#jobid").html()!="") {
                $.ajax({
                    type: "get",
                    url: "ashx/ow_jobHandler.ashx",
                    //data: { JobTitle: JobTitle, WorkingAddress: WorkingAddress, JobResponsibilities: JobResponsibilities, JobRequirements: JobRequirements, MailBox: MailBox, ID: ID },
                    data: { ID: $("#jobid").html() },
                    dataType: "json",
                    success: function (data) {
                        if (data.Result == "yes") {
                            $("#JobTitle").val(data.JobTitle);
                            $("#WorkingAddress").val(data.WorkingAddress);
                            //$("#editor1").html(data.JobResponsibilities);
                            //$("#editor2").html(data.JobRequirements);
                            $("#MailBox").val(data.MailBox);
                            $.GetJobResponsibilities();
                            $.GetJobRequirements();
                        }
                    },
                    beforeSend: function () {
                        //执行前发生
                    },
                    complete: function () {
                        //执行完成后发生
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert(XMLHttpRequest.status);
                        alert(XMLHttpRequest.readyState);
                        alert(textStatus);
                    }
                });
            }
            $.GetJobResponsibilities = function ()
            {
                $.ajax({
                    type: "get",
                    url: "ashx/ow_jobHandler.ashx",
                    //data: { JobTitle: JobTitle, WorkingAddress: WorkingAddress, JobResponsibilities: JobResponsibilities, JobRequirements: JobRequirements, MailBox: MailBox, ID: ID },
                    data: { ID: $("#jobid").html(), JobResponsibilitiestext: $("#jobid").html() },
                    dataType: "text",
                    success: function (data) {
                        $("#editor1").html(data);
                    },
                    beforeSend: function () {
                        //执行前发生
                    },
                    complete: function () {
                        //执行完成后发生
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert(XMLHttpRequest.status);
                        alert(XMLHttpRequest.readyState);
                        alert(textStatus);
                    }
                });
            }

            $.GetJobRequirements = function () {
                $.ajax({
                    type: "get",
                    url: "ashx/ow_jobHandler.ashx",
                    //data: { JobTitle: JobTitle, WorkingAddress: WorkingAddress, JobResponsibilities: JobResponsibilities, JobRequirements: JobRequirements, MailBox: MailBox, ID: ID },
                    data: { ID: $("#jobid").html(), JobRequirementstext: $("#jobid").html() },
                    dataType: "text",
                    success: function (data) {
                        $("#editor2").html(data);
                    },
                    beforeSend: function () {
                        //执行前发生
                    },
                    complete: function () {
                        //执行完成后发生
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert(XMLHttpRequest.status);
                        alert(XMLHttpRequest.readyState);
                        alert(textStatus);
                    }
                });
            }
            //这里做验证
            $("#btnSubmit").click(function () {
                var JobTitle = $("#JobTitle").val();
                var WorkingAddress = $("#WorkingAddress").val();
                var JobResponsibilities = $("#editor1").html();
                var JobRequirements = $("#editor2").html();
                var MailBox = $("#MailBox").val();
                var ID = $('#jobid').html();
                //alert("JobTitle=" + JobTitle + ",\r\nWorkingAddress=" + WorkingAddress + ",\r\nJobResponsibilities=" + JobResponsibilities + ",\r\nJobRequirements=" + JobRequirements + ",\r\nMailBox=" + MailBox + ",\r\nID=" + ID);
                if (JobTitle != "" && WorkingAddress != "" && JobResponsibilities != "" && JobRequirements != "" && MailBox != "") {
                    $('.form-group').removeClass("has-error");
                    $.ajax({
                        type: "post",
                        url: "ashx/ow_jobHandler.ashx",
                        data: { JobTitle: JobTitle, WorkingAddress: WorkingAddress, JobResponsibilities: JobResponsibilities, JobRequirements: JobRequirements, MailBox: MailBox, ID: ID },
                        dataType: "json",
                        success: function (data) {
                            //alert(data.Result);
                            if (data.Result == "yes") {
                                alert("保存完成");
                                location.href = "Recruitment.aspx";
                            }
                        },
                        beforeSend: function () {
                            //执行前发生
                        },
                        complete: function () {
                            //执行完成后发生
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            //alert(XMLHttpRequest.status);
                            //alert(XMLHttpRequest.readyState);
                            //alert(textStatus);
                        }
                    });
                }
                else
                {
                    $('.form-group').addClass("has-error");
                }
            });
        });
        
    </script>
</asp:Content>
