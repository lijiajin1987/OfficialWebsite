<%@ Page Title="" Language="C#" MasterPageFile="~/ConsoleView/Site1.Master" ValidateRequest="false" AutoEventWireup="true" CodeBehind="UPTeam.aspx.cs" Inherits="OfficialWebsite.ConsoleView.UPTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- basic styles -->

    <link href="../Content/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../Content/css/font-awesome.min.css" />

    <!--[if IE 7]>
		  <link rel="stylesheet" href="../Content/css/font-awesome-ie7.min.css" />
		<![endif]-->

    <!-- page specific plugin styles -->

    <link rel="stylesheet" href="../Content/css/select2.css" />

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
                <a href="#">主页</a>
            </li>

            <li>
                <a href="#">关于我们</a>
            </li>
            <li class="active">管理团队</li>
        </ul>
        <!-- .breadcrumb -->

        <div class="nav-search" id="nav-search">
        </div>
        <!-- #nav-search -->
    </div>

    <div class="page-content">
        <div class="page-header">
            <h1>管理团队
            </h1>
        </div>
        <!-- /.page-header -->

        <div class="row">
            <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->
                <%--<div class="hr hr-18 hr-double dotted"></div>--%><%--这是一条分割线--%>
                <div class="col-md-1"></div>
                <div class="col-md-6">
                    <div class="form-horizontal">
                        <%--添加class-has-error表名错误--%>
                        <div class="form-group has-error">
                            <label for="inputError" class="col-xs-6 col-sm-3 col-md-3 control-label no-padding-right">领导名称</label>

                            <div class="col-xs-3 col-sm-5 col-md-6">
                                <input id="txtLeadername" type="text" class="width-100"/>
                                <%--<asp:TextBox ID="txtLeadername" runat="server" CssClass="width-100"></asp:TextBox>--%>
                            </div>
                            <div class="help-block col-xs-3 col-sm-4 col-md-3 inline ">不能为空 </div>

                        </div>
                    </div>
                    <div class="form-horizontal">
                        <%--添加class-has-error表名错误--%>
                        <div class="form-group has-error">
                            <label for="inputError" class="col-xs-6 col-sm-3 col-md-3 control-label no-padding-right">介绍</label>
                            <div class="col-xs-3 col-sm-5 col-md-6">
                                <textarea class="form-control" id="txtIntroduction" placeholder="Default Text"></textarea>
                                <%--<input type="text" class="width-100" />--%>
                            </div>
                            <div class="help-block col-xs-3 col-sm-4 col-md-3 inline">不能为空 </div>
                        </div>
                    </div>
                    <div class="hr hr-18 hr-double dotted"></div>
                    <div class="form-horizontal">
                        <%--添加class-has-error表名错误--%>
                        <div class="form-group has-error">
                            <button class="btn btn-info" type="button" id="btnSubmit">
                                <i class="icon-ok bigger-110"></i>
                                提交
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="col-md-12" id="upimg"><span class="img-thumbnail">
                        <img id="imgHeadPortrait" class="img-circle" src="../Content/avatars/ljj.jpg" alt="Photo" width="120" height="120" /></span></div>
                    <div class="col-md-12">
                        <input type="file" class="hidden" id="fileupimg" name="fileupimg" /><label class="text-danger">点击图像上传图片</label></div>
                </div>
                <!-- PAGE CONTENT ENDS -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.page-content -->
    <div>
        <label class="hidden" id="teamid"><%=Teamid %></label></div>
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

    <script src="../Scripts/fuelux/fuelux.wizard.min.js"></script>
    <script src="../Scripts/jquery.validate.min.js"></script>
    <script src="../Scripts/additional-methods.min.js"></script>
    <script src="../Scripts/bootbox.min.js"></script>
    <script src="../Scripts/jquery.maskedinput.min.js"></script>
    <script src="../Scripts/select2.min.js"></script>
    <script src="../Scripts/ajaxfileupload.js"></script>
    <!-- ace scripts -->

    <script src="../Scripts/ace-elements.min.js"></script>
    <script src="../Scripts/ace.min.js"></script>

    <!-- inline scripts related to this page -->

    <script type="text/javascript">
        $(document).ready(function () {
            $('.form-group').removeClass("has-error");
            $('.help-block').addClass("hidden");
            //用ajax加载数据
            $.ajax({
                type: "get",
                url: "ashx/GetTeamInfo.ashx",
                data: { Tag: $("#teamid").html() },
                dataType: "json",
                success: function (data) {
                    $('#txtLeadername').val(data.txtLeadername);
                    $('#txtIntroduction').val(data.txtIntroduction);
                    $('#imgHeadPortrait').attr("src", data.imgHeadPortrait + "?t=" + Math.random());
                    //处理结果
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
            $("#btnSubmit").click(function () {
                //验证
                if ($('#txtLeadername').val() == "" || $('#txtIntroduction').val() == "") {
                    $('.form-group').addClass("has-error");
                    $('.help-block').removeClass("hidden");
                }
                else { 
                    $.ajax({
                        type: "POST",
                        url: "ashx/UpTeamInfoHandler.ashx",
                        data: { txtLeadername: $('#txtLeadername').val(), txtIntroduction: $('#txtIntroduction').val(), imgHeadPortrait: $('#imgHeadPortrait').attr("src").substr(0, $('#imgHeadPortrait').attr("src").indexOf("?")), teamid: $('#teamid').html() },
                        dataType: "json",
                        success: function (data) {
                            //alert(data.Result);
                            if (data.Result=="yes") {
                                $("#imgHeadPortrait").attr("src", data.imgHeadPortrait + "?t=" + Math.random());
                                alert("保存完成");
                                location.href = "Team.aspx";
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
                    url: 'ashx/UploadPicturesHandler.ashx',
                    type: 'post',
                    secureuri: false,
                    data: { 'asd': 'asd' },
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
