<%@ Page Title="" Language="C#" MasterPageFile="~/ConsoleView/Site1.Master" AutoEventWireup="true" CodeBehind="Addcooperation.aspx.cs" Inherits="OfficialWebsite.ConsoleView.Addcooperation" ValidateRequest="false" %>

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
                <a href="#">合作 </a>
            </li>
            <li class="active">编辑合作信息</li>
        </ul>
        <!-- .breadcrumb -->

        <div class="nav-search hidden" id="nav-search">
        </div>
        <!-- #nav-search -->
    </div>

    <div class="page-content">
        <div class="page-header">
            <h1>合作信息编辑
            </h1>
        </div>
        <!-- /.page-header -->

        <div class="row">
            <div class="col-xs-12 col-md-7">
                <!-- PAGE CONTENT BEGINS -->

                <div class="form-horizontal" role="form">

                    <div class="form-group">
                        <label class="col-sm-5 control-label no-padding-right" for="form-field-1">合作项目 </label>

                        <div class="col-sm-7">
                            <div class="clearfix">
                                <input type="text" id="CooperationItem" name="CooperationItem" placeholder="合作项目" class="col-xs-10 col-sm-10" />
                            </div>

                        </div>
                    </div>
                    <div class="space-4"></div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label no-padding-right" for="form-field-1">联系人 </label>

                        <div class="col-sm-7">
                            <input type="text" id="ContactPerson" name="ContactPerson" placeholder="联系人" class="col-xs-10 col-sm-10" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label no-padding-right" for="form-field-1">邮箱 </label>

                        <div class="col-sm-7">
                            <input type="text" id="Mailbox" name="Mailbox" placeholder="邮箱" class="col-xs-10 col-sm-10" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label no-padding-right" for="form-field-1">电话 </label>

                        <div class="col-sm-7">
                            <input type="text" id="Telephone" name="Telephone" placeholder="电话" class="col-xs-10 col-sm-10" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-5 control-label no-padding-right" for="form-field-1">QQ </label>

                        <div class="col-sm-7">
                            <input type="text" id="QQ" name="QQ" placeholder="QQ" class="col-xs-10 col-sm-10" />
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
            <div class="col-xs-12 col-md-5">
                <div class="col-md-12" id="upimg">
                    <span class="img-thumbnail">
                        <img id="imgHeadPortrait" class="img-circle" src="../Images/cooperation/ljj.jpg" alt="Photo" width="120" height="120" /></span>
                </div>
                <div class="col-md-12">
                    <input type="file" class="hidden" id="fileupimg" name="fileupimg" /><label class="text-danger">点击图像上传图片</label>
                </div>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.page-content -->
    <div>
        <label class="hidden" id="cid"><%=cid %></label>
    </div>
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
    <script src="../Scripts/ajaxfileupload.js"></script>
    <!-- ace scripts -->

    <script src="../Scripts/ace-elements.min.js"></script>
    <script src="../Scripts/ace.min.js"></script>

    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        $(document).ready(function () {
            $('.form-group').removeClass("has-error");
            //这里加载数据
            //alert($("#cid").html());
            if ($("#cid").html() != "") {
                $.ajax({
                    type: "get",
                    url: "ashx/ow_cooperationHandler.ashx",
                    //data: { JobTitle: JobTitle, WorkingAddress: WorkingAddress, JobResponsibilities: JobResponsibilities, JobRequirements: JobRequirements, MailBox: MailBox, ID: ID },
                    data: { ID: $("#cid").html() },
                    dataType: "json",
                    success: function (data) {
                        //alert(data.Result);
                        if (data.Result == "yes") {
                            $("#CooperationItem").val(data.CooperationItem);
                            $("#ContactPerson").val(data.ContactPerson);
                            $("#Mailbox").val(data.Mailbox);
                            $("#Telephone").val(data.Telephone);
                            $("#QQ").val(data.QQ);
                            $("#imgHeadPortrait").attr("src", data.ICON + "?t=" + Math.random());
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

            //这里做验证
            $("#btnSubmit").click(function () {
                var CooperationItem = $("#CooperationItem").val();
                var ContactPerson = $("#ContactPerson").val();
                var Mailbox = $("#Mailbox").val();
                var Telephone = $("#Telephone").val();
                var QQ = $("#QQ").val();
                var ICON = $("#imgHeadPortrait").attr("src").substr(0, $("#imgHeadPortrait").attr("src").indexOf("?"));
                var ID = $('#cid').html();
                if (CooperationItem != "" && ContactPerson != "" && Mailbox != "" && Telephone != "" && QQ != "") {
                    $('.form-group').removeClass("has-error");
                    $.ajax({
                        type: "post",
                        url: "ashx/ow_cooperationHandler.ashx",
                        data: { CooperationItem: CooperationItem, ContactPerson: ContactPerson, Mailbox: Mailbox, Telephone: Telephone, QQ: QQ, ICON: ICON, ID: ID },
                        dataType: "json",
                        success: function (data) {
                            //alert(data.Result);
                            if (data.Result == "yes") {
                                alert("保存完成");
                                location.href = "CooperationList.aspx";
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
                else {
                    $('.form-group').addClass("has-error");
                }
            });

            //图片上传函数
            $("#upimg").click(function () {
                $("#fileupimg").click();

            });
            $("#fileupimg").change(function () {
                //alert($("#fileupimg").val());
                $("#fileupimg").upimg();
            });
            jQuery.fn.upimg = function () {
                $.ajaxFileUpload({
                    url: 'ashx/UploadICONHandler.ashx',
                    type: 'post',
                    secureuri: false,
                    data: { Folder: "cooperation" },
                    fileElementId: 'fileupimg',
                    datatype: 'text',
                    success: function (data, status) {
                        data = jQuery.parseJSON(jQuery(data).text());//经过调查，是因为返回的json中，带有<pre>标签。【eval( "data = " + data );】-->【data = jQuery.parseJSON(jQuery(data).text());】
                        $("#imgHeadPortrait").attr("src", data.imgpath + "?t=" + Math.random());
                    },
                    complete: function (xmlHttpRequest) {
                        $("#fileupimg").replaceWith('<input type="file" class="hidden" id="fileupimg" name="fileupimg" />');
                        $("#fileupimg").change(function () {
                            $("#fileupimg").upimg();
                        });
                    },
                    error: function (data, status, e) {
                        alert(e);
                    }
                });
            }
        });

    </script>
</asp:Content>
