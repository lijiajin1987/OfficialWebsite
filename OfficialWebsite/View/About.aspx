<%@ Page Title="" Language="C#" MasterPageFile="~/View/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OfficialWebsite.View.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row carousel slide">
        <div class="carousel-inner">
            <div class="item active">
                <div class="row">
                    <img class="img-responsive" src="../Images/banner.png" />
                </div>
                <div class="carousel-caption owAbout" style="height: 90%;">
                    <div class="row">
                        <div class="col-xs-2">
                            <img class="AboutICON" src="../Images/家庭医生新媒体-拷贝.png" title="" /></div>
                        <div><p class="Abouttitle" style="">家庭医生在线</p></div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12"><p class="Aboutintroduce">做千家万户的家庭医生</p></div>
                    </div>
                    <p class="col-xs-9 AboutFigure text-right">钟南山</p>
                </div>
            </div>
        </div>
    </div>
    
    <!--标题栏-->
    <div class="container" id="appAbout" style="margin-top:25px;">
    </div>
    <!--关于我们-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderJavascript" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            //用ajax加载数据
            $.ajax({
                type: "get",
                url: "../ConsoleView/ashx/GetAboutHandler.ashx",
                data: { Tag: "3" },
                dataType: "text",
                success: function (data) {
                    $('#appAbout').append(data);
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
</asp:Content>
