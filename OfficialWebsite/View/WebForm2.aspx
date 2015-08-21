<%@ Page Title="" Language="C#" MasterPageFile="~/View/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="OfficialWebsite.View.WebForm2" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                    <img src="../Images/Code/ioscode.jpg" style="width: 120px; height: 120px; margin-right: 25px;" title="IOS 版下载" />
                    <label class="iosbtn"><i class="icon-apple icon-large pull-left"></i><span>IOS 版下载</span></label>
                </div>
                <div class="col-md-5">
                    <img src="../Images/Code/androidcode.jpg" style="width: 120px; height: 120px; margin-right: 25px;" title="Android 版下载" />
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
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderJavascript" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.carousel').carousel()
        });
    </script>
</asp:Content>
