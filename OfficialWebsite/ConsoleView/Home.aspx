<%@ Page Title="" Language="C#" MasterPageFile="~/ConsoleView/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OfficialWebsite.ConsoleView.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- basic styles -->

    <link href="../Content/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../Content/css/font-awesome.min.css" />

    <!--[if IE 7]>
		  <link rel="stylesheet" href="../Content/css/font-awesome-ie7.min.css" />
		<![endif]-->

    <!-- page specific plugin styles -->

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
                <a href="Home.aspx">首页配置</a>
            </li>
        </ul>
        <!-- .breadcrumb -->
        <div class="page-content">
            <div class="page-header">
                <h1>首页二维码上传
                </h1>
            </div>
            <!-- /.page-header -->
            <div class="row">
                <div class="col-xs-12 page-header">
                    <input type="file" class="hidden" id="fileupimg" name="fileupimg" />
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="col-md-12">
                        <span class="img-thumbnail">
                            <img id="androidcode" class="img-thumbnail" src="../Images/Code/androidcode.jpg" alt="Photo" width="120" height="120" /></span>
                        <label class="text-danger">点击图像上传安卓应用二维码</label>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="col-md-12">
                        <span class="img-thumbnail">
                            <img id="ioscode" class="img-thumbnail" src="../Images/Code/ioscode.jpg" alt="Photo" style="width: 120px; height: 120px;" /></span>
                        <label class="text-danger">点击图像上传苹果应用二维码</label>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="col-md-12">
                        <span class="img-thumbnail">
                            <img id="weixincode" class="img-thumbnail" src="../Images/Code/weixincode.jpg" alt="Photo" style="width: 120px; height: 120px;" /></span>
                        <label class="text-danger">点击图像上传微信二维码</label>
                    </div>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="col-md-12">
                        <span class="img-thumbnail">
                            <img id="weibocode" class="img-thumbnail" src="../Images/Code/weibocode.jpg" alt="Photo" style="width: 120px; height: 120px;" /></span>
                        <label class="text-danger">点击图像上传新浪微博二维码</label>
                    </div>
                </div>
                <div class="col-xs-12">
                    <div class="col-xs-12 col-md-2">
                        <label>IOS应用下载链接：</label>
                    </div>
                    <div class="col-xs-12 col-md-10">
                        <asp:TextBox runat="server" ID="txtiosapplink" CssClass="col-md-7"></asp:TextBox>
                    </div>
                </div>
                <div class="col-xs-12">
                    <div class="col-xs-12 col-md-2">android应用下载链接：</div>
                    <div class="col-xs-12 col-md-10">
                        <asp:TextBox runat="server" ID="txtapklink" CssClass="col-md-7"></asp:TextBox>
                    </div>
                </div>
                <div class="col-xs-12">
                    <div class="col-xs-12 col-md-2">
                        <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-info" Text="提交" OnClick="btnSubmit_Click"/>
<%--                        <button class="btn btn-info" type="button" id="btnSubmit">
                            <i class="icon-ok bigger-110"></i>
                            
                        </button>--%>
                    </div>
                </div>
                <!-- /.col -->
            </div>
        </div>
        <!-- /.page-content -->
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="end" runat="server">
    <!-- basic scripts -->

    <!--[if !IE]> -->

    <script src="../Scripts/2.0.3/jquery.min.js"></script>
    <script src="../Scripts/ajaxfileupload.js"></script>
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
    <script type="text/javascript">
        $(document).ready(function () {
            var filename = "";
            //图片上传函数
            $("#androidcode,#ioscode,#weixincode,#weibocode").click(function () {
                filename = $(this).attr("id");
                //alert(filename);
                $("#fileupimg").click();
            });
            $("#fileupimg").change(function () {
                $("#fileupimg").upcode();
            });
            jQuery.fn.upcode = function () {
                //alert($("#fileupimg").val());
                $.ajaxFileUpload({
                    url: 'ashx/UpImgCodeHandler.ashx',
                    type: 'post',
                    secureuri: false,
                    data: { filename: filename },
                    fileElementId: 'fileupimg',
                    datatype: 'text',
                    success: function (data, status) {
                        data = jQuery.parseJSON(jQuery(data).text());//经过调查，是因为返回的json中，带有<pre>标签。【eval( "data = " + data );】-->【data = jQuery.parseJSON(jQuery(data).text());】
                        //$("#imgHeadPortrait").attr("src", data.imgpath);
                        $("#" + filename).attr("src", data.imgpath + "?t=" + Math.random());
                        //alert(data.imgpath);
                    },
                    complete: function (xmlHttpRequest) {
                        $("#fileupimg").replaceWith('<input type="file" class="hidden"  id="fileupimg" name="fileupimg"/>');
                        $("#fileupimg").change(function () {
                            $("#fileupimg").upcode();
                        });
                    },
                    error: function (data, status, e) {
                        alert("错误:" + e);
                    }

                });
                //location.href = "Home.aspx";
            }

        });
    </script>
    <!-- ace scripts -->

    <script src="../Scripts/ace-elements.min.js"></script>
    <script src="../Scripts/ace.min.js"></script>
</asp:Content>
