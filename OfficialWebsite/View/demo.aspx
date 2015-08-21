<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="OfficialWebsite.View.demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" lang="zh-cn">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="icon" href="../Images/applogo_32x32.ico" />
    <title>家庭医生在线app</title>
    <!-- basic styles -->

    <link href="../Content/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/css/font-awesome.min.css" rel="stylesheet" />
    <!--[if IE 7]>
        <link href="../Content/css/font-awesome-ie7.min.css" rel="stylesheet"/>
    <![endif]-->
    <!-- page specific plugin styles -->
    <link href="../Content/OW.css" rel="stylesheet" />
    <!-- fonts -->

    <link rel="stylesheet" href="../Content/css/fonts-googleapis.css" />
    <!-- inline styles related to this page -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
		<script src="../Scripts/html5shiv.js"></script>
		<script src="../Scripts/respond.min.js"></script>
		<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="container ow_Navigation">
                <div class="col-md-2 ow_logo">
                    <a>
                        <img class="img-responsive" src="../Images/applogo.png" /></a>
                </div>
                <div class="col-md-4 CompanyName">
                    <p>家庭医生在线APP</p>
                </div>
                <div class="col-md-6 ow_navbar">
                    <ul class="" style="">
                        <li><a href="#">首页</a></li>
                        <li><a id="gs" href="#" data-container="body" data-toggle="popover" data-placement="bottom" data-html="true" data-content='<div class="col-xs-6 gszi text-center"><a href="#">关于我们</a></div><div class="col-xs-6 gszi text-center"><a href="#">管理团队</a></div>'>公司</a></li>
                        <li><a href="#">加入我们</a></li>
                        <li><a href="#">合作</a></li>
                    </ul>
                    
                </div>
            </div>
            <div id="mycarousel" class="row carousel slide" data-ride="carousel">
                <!--Indicator-->
                <ol class="carousel-indicators">
                    <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#mycarousel" data-slide-to="1"></li>
                    <li data-target="#mycarousel" data-slide-to="2"></li>
                </ol>
                <!--Wrapper for slides-->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <div style="height: 390px; width: 100%; background-color: #9fcb6b;">
                            <div class="col-md-5">
                                <img style="height: 390px; margin-left: 100px" src="../Images/code.png" alt="" />
                            </div>
                            <div class="col-md-3">
                                <img style="margin-top: 180px; margin-right: 330px; height: 80px;" src="../Images/logo.png" />
                            </div>
                        </div>
                        <div class="carousel-caption"></div>
                    </div>
                    <div class="item">
                        <div style="height: 390px;">
                            <img class="img-responsive" style="height: 390px;" src="../Images/bannertwo.png" />
                        </div>
                        <div class="carousel-caption" style="height: 80%;">
                            <p class=" text-left" style="font-size: 70px; color: #1b2314;">真诚呵护</p>
                            <p class=" text-left" style="font-size: 70px; color: #1b2314;">&nbsp; 健康人生</p>
                        </div>
                    </div>
                    <div class="item">
                        <div style="height: 390px; width: 100%; background-color: #9fcb6b;">
                            <div class="col-md-5">
                                <img style="height: 390px; margin-left: 100px" src="../Images/code.png" alt="" />
                            </div>
                            <div class="col-md-3">
                                <img style="margin-top: 180px; margin-right: 330px; height: 80px;" src="../Images/logo.png" />
                            </div>
                        </div>
                        <div class="carousel-caption"></div>
                    </div>
                </div>
                <!--Controls-->
            </div>
            <div class="row" style="margin-top: 30px;">
                <div class="col-md-3"></div>
                <div class="col-md-4">
                    <img src="../Images/iphone-code.png" style="width: 120px; height: 120px; margin-right: 25px;" title="IOS 版下载" />
                    <label class="iosbtn"><i class="icon-apple icon-large pull-left"></i><span>IOS 版下载</span></label>
                </div>
                <div class="col-md-5">
                    <img src="../Images/android-code.png" style="width: 120px; height: 120px; margin-right: 25px;" title="Android 版下载" />
                    <label class="Androidbtn"><i class="icon-android icon-large pull-left"></i><span>Android 版下载</span></label>
                </div>
                <!--Download-->
            </div>
            <div class="row">
                <hr style="margin-bottom: 35px;" />
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-3">
                    <div>
                        <img src="../Images/health.png" class="img-responsive" />
                    </div>
                </div>
                <div class="col-md-7" style="padding-top: 80px; padding-left: 70px;">
                    <span style="font-family: STXingkai; font-size: 92px; color: #8bc34a;">0  1</span><span class="text-left" style="font-size: 42px;">&nbsp;健康十万个为什么</span>
                    <p><span style="font-size: 32px; color: #727272">免费质询医生，50万热问快速回答</span></p>
                </div>
            </div>
            <div class="row">
                <hr style="margin-bottom: 35px;" />
            </div>
            <div class="row">

                <div class="col-md-7" style="">
                    <p class="text-center"><span style="font-family: STXingkai; font-size: 92px; color: #8bc34a;">0  2</span><span style="font-size: 42px;">&nbsp;疾病自查</span></p>

                    <p class="text-center"><span style="font-size: 32px; color: #727272">对症状，查疾病，及时掌握健康状况</span></p>
                </div>
                <div class="col-md-3">
                    <div>
                        <img src="../Images/illness.png" class="img-responsive" />
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
            <div class="row">
                <hr style="margin-bottom: 35px;" />
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-3">
                    <div>
                        <img src="../Images/doctor.png" class="img-responsive" />
                    </div>
                </div>
                <div class="col-md-7" style="padding-top: 80px; padding-left: 70px;">
                    <span style="font-family: STXingkai; font-size: 92px; color: #8bc34a;">0  3</span><span class="text-left" style="font-size: 42px;">&nbsp;找好医生</span>
                    <p><span style="font-size: 32px; color: #727272">方便快捷，找全国各地好医生</span></p>
                </div>
            </div>
            <div class="row">
                <hr style="margin-bottom: 35px;" />
            </div>
            <div class="row">
                <div class="col-md-7" style="">
                    <p class="text-center"><span style="font-family: STXingkai; font-size: 92px; color: #8bc34a;">0  4</span><span style="font-size: 42px;">&nbsp;家庭药箱</span></p>
                    <p class="text-center"><span style="font-size: 32px; color: #727272">专家把关，教你科学用药</span></p>
                </div>
                <div class="col-md-3">
                    <div>
                        <img src="../Images/illness.png" class="img-responsive" />
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
            <div class="row">
                <hr style="margin-bottom: 35px;" />
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-3">
                    <div>
                        <img src="../Images/information.png" class="img-responsive" />
                    </div>
                </div>
                <div class="col-md-7" style="padding-top: 80px; padding-left: 70px;">
                    <span style="font-family: STXingkai; font-size: 92px; color: #8bc34a;">0  5</span><span class="text-left" style="font-size: 42px;">&nbsp;养身咨询</span>
                    <p><span style="font-size: 32px; color: #727272">海量资讯，总能找到您和家人需要的</span></p>
                </div>
            </div>
            <!--app介绍-->
            <div class="row" style="margin-top: 30px; background-color: #8bc34a;">
                <div class="container">
                    <div class="col-md-5">
                        <address class="text-left" style="margin-top: 25px;">
                            <strong>联系我们</strong><br />
                            &nbsp;&nbsp;<span>公司地址：广州市越秀区先烈中路80号汇华商贸大厦618室</span><br />
                            &nbsp;&nbsp;<span>公司名称：广州家庭医生在线移动新媒体科技有限公司</span><br />
                            &nbsp;&nbsp;<span><addr title="phone">联系电话：</addr>020-37619643</span><br />
                            &nbsp;&nbsp;<span>备案号：粤ICP备88888888号-2</span>
                        </address>
                    </div>
                    <div class="col-md-1">
                        <div style="border-right: 1px dashed #ccc; height: 150px; width: 1px;"></div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-6" style="padding-top: 45px; padding-left: 45px;">
                            <img src="../Images/iphone-code.png" style="height: 85px; width: 85px;" />
                        </div>
                        <div class="col-md-6" style="padding-top: 45px; padding-left: 45px;">
                            <img src="../Images/iphone-code.png" style="height: 85px; width: 85px;" />
                        </div>
                    </div>
                </div>
            </div>
            <%--<div class="row hidden">
                <a
                    data-container="body" data-toggle="popover" data-placement="top"
                    data-content='<p>可以显示？？</p>'>顶部的 Popover
                </a>
            </div>--%>
        </div>
    </form>
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
    <script src="../Content/bootstrap/js/bootstrap.min.js"></script>
    <script src="../Scripts/typeahead-bs2.min.js"></script>

    <!-- page specific plugin scripts -->
    <script type="text/javascript">
        $(document).ready(function () {
            $('.carousel').carousel()
            $(function () {
                $("[data-toggle='popover']").popover({ html: true });
            });
        });
    </script>
</body>
</html>
