<%@ Page Title="" Language="C#" MasterPageFile="~/View/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OfficialWebsite.View.Home" %>

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
        <div class="col-md-2"></div>
        <div class="col-md-4" style="margin-left:30px;">
            <img src="../Images/Code/ioscode.jpg" style="width: 120px; height: 120px; margin-right: 25px;" title="IOS 版下载" />
            <a class="iosbtn" runat="server" id="ioslink" target="_blank"><i class="icon-apple icon-large pull-left"></i><span>IOS 版下载</span></a>
        </div>

        <div class="col-md-5">
            <img src="../Images/Code/androidcode.jpg" style="width: 120px; height: 120px; margin-right: 25px;" title="Android 版下载" />
            <a class="Androidbtn"  runat="server" id="Androidlink" target="_blank"><i class="icon-android icon-large pull-left"></i><span>Android 版下载</span></a>
        </div>
        <!--Download-->
    </div>
    <div class="row">
        <hr style="margin-bottom: 35px;" />
    </div>
    <asp:Repeater runat="server" ID="RepeaterHome">
        <ItemTemplate>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-3">
                    <div>
                        <img src="<%#Eval("img")%>" class="img-responsive" />
                    </div>
                </div>
                <div class="col-md-7" style="padding-top: 80px; padding-left: 70px;">
                    <span style="font-family: STXingkai; font-size: 92px; color: #8bc34a;letter-spacing:15px;"><%#Eval("tag")%></span><span class="text-left" style="font-size: 42px;">&nbsp;<%#Eval("oneline")%></span>
                    <p><span style="font-size: 32px; color: #727272"><%#Eval("twoline")%></span></p>
                </div>
            </div>
            <div class="row">
                <hr style="margin-bottom: 35px;" />
            </div>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <div class="row">
                <div class="col-md-7" style="">
                    <p class="text-center"><span style="font-family: STXingkai; font-size: 92px; color: #8bc34a;letter-spacing:15px;"><%#Eval("tag")%></span><span style="font-size: 42px;">&nbsp;<%#Eval("oneline")%></span></p>
                    <p class="text-center"><span style="font-size: 32px; color: #727272"><%#Eval("twoline")%></span></p>
                </div>
                <div class="col-md-3">
                    <div>
                        <img src="<%#Eval("img")%>" class="img-responsive" />
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
            <div class="row">
                <hr style="margin-bottom: 35px;" />
            </div>
        </AlternatingItemTemplate>
    </asp:Repeater>
    <!--app介绍-->
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderJavascript" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.carousel').carousel()
        });
    </script>
</asp:Content>
