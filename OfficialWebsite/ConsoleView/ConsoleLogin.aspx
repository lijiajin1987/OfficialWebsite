<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsoleLogin.aspx.cs" Inherits="OfficialWebsite.ConsoleView.ConsoleLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="keywords" content="后台" />
    <meta name="description" content="后台" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录页面 - 官网后台</title>
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


    <!--[if lte IE 8]>
		  <link rel="stylesheet" href="../Content/css/ace-ie.min.css" />
		<![endif]-->

    <!-- inline styles related to this page -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
		<script src="../Scripts/html5shiv.js"></script>
		<script src="../Scripts/respond.min.js"></script>
		<![endif]-->
</head>
<body class="login-layout">
    <div class="main-container">
        <div class="main-content">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="login-container">
                        <div class="center">
                            <h1>
                                <i class="icon-leaf green"></i>
                                <span class="red">官网</span>
                                <span class="white">后台</span>
                            </h1>
                            <h4 class="blue">&copy; 家庭医生在线APP</h4>
                        </div>

                        <div class="space-6"></div>

                        <div class="position-relative">
                            <div id="login-box" class="login-box visible widget-box no-border">
                                <div class="widget-body">
                                    <div class="widget-main">
                                        <h4 class="header blue lighter bigger">
                                            <i class="icon-coffee green"></i>
                                            请输入登陆信息
                                        </h4>

                                        <div class="space-6"></div>

                                        <form id="form1" runat="server">
                                            <fieldset>
                                                <label class="block clearfix" id="lblusername">
                                                    <span class="block input-icon input-icon-right">
                                                        <input type="text" id="txtuserName" name="txtuserName" class="form-control" placeholder="用户名" />
                                                        <i class="icon-user"></i>
                                                    </span>
                                                </label>

                                                <label class="block clearfix" id="lblpwd">
                                                    <span class="block input-icon input-icon-right">
                                                        <input type="password" id="txtpassword" name="txtuserName" class="form-control" placeholder="密码" />
                                                        <i class="icon-lock"></i>
                                                    </span>
                                                </label>

                                                <div class="space"></div>
                                                
                                                <div id="Loadingdiv" class="clearfix">
                                                    <button id="btnLogin" type="button" class="width-35 pull-right btn btn-sm btn-primary">
                                                        <i class="icon-key"></i>
                                                        登陆
                                                    </button>
                                                </div>
                                                <div class="space-4"></div>
                                            </fieldset>
                                        </form>
                                    </div>
                                    <!-- /widget-main -->
                                </div>
                                <!-- /widget-body -->
                            </div>
                            <!-- /login-box -->
                        </div>
                        <!-- /position-relative -->
                    </div>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
    </div>
    <!-- /.main-container -->
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

    <!-- inline scripts related to this page -->

    <script type="text/javascript">
        $(document).ready(function () {
            //<i id="Loading-i" class="icon-spinner icon-spin orange bigger-300"></i>
            //<span id="Loading-span"  class="lbl">Loading...</span>
            var Loadingi = '<i id="Loadingi" class="icon-spinner icon-spin orange bigger-250"></i>';
            var Loadingspan = '<span id="Loadingspan"  class="lbl">Loading...</span>';
            var loginerror = '<span id="loginerror" class="text-danger">用户不存在或密码错误。</span>';
            //这里做个表单验证并提交数据
            $("#btnLogin").click(function () {
                $("#loginerror").remove();
                var username = $("#txtuserName");
                var pwd = $("#txtpassword");
                if (username.val()=="") {
                    //username.attr("placeholder", "请输入用户名");
                    //form-group has-error
                    $("#lblusername").addClass("form-group has-error");
                }
                if (pwd.val() == "") {
                    //pwd.attr("placeholder", "请输入密码");
                    $("#lblpwd").addClass("form-group has-error");
                }
                
                if (username.val() != "" && pwd.val() != "")
                {
                    //验证通过登陆咯！
                    //修改属性
                    $("#lblusername").removeClass("form-group has-error");
                    $("#lblpwd").removeClass("form-group has-error");
                    $.ajax({
                        type: "POST",
                        url: "ashx/LoginHandler.ashx",
                        data: {username:username.val(),pwd:pwd.val()},
                        dataType: "json",
                        success: function (data)
                        {
                            if (data.username == "1") {
                                location.href = "Home.aspx";
                            }
                            else
                            {
                                $("#Loadingdiv").before(loginerror);
                            }
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert(XMLHttpRequest.status);
                            alert(XMLHttpRequest.readyState);
                            alert(textStatus);
                        },
                        beforeSend: function () {
                            $("#btnLogin").attr({ disabled: "disabled" });
                            $("#Loadingdiv").before(Loadingspan);
                            $("#Loadingdiv").before(Loadingi);
                        },
                        complete: function () {
                            $("#btnLogin").removeAttr("disabled");
                            $("#Loadingi").remove();
                            $("#Loadingspan").remove();
                        }
                    });
                }
            });
        });
    </script>
    <div style="display: none">
        <script src="../Scripts/stat.js" language='JavaScript' charset='gb2312'></script>
    </div>
</body>
</html>
