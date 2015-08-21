<%@ Page Title="" Language="C#" MasterPageFile="~/View/Site1.Master" AutoEventWireup="true" CodeBehind="cooperation.aspx.cs" Inherits="OfficialWebsite.View.cooperation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <img class="img-responsive" style="height: 390px; width: 100%;" src="../Images/bannerone.jpg" />
    </div>
    <div class="container cooperation">
        <asp:Repeater runat="server" ID="repeatercooperation">
            <ItemTemplate>
                <div class="col-xs-6" style="margin-top:40px;">
                    <div class="col-xs-12 cooperationtitle">
                        <p><%#Eval("CooperationItem")%></p>
                    </div>
                    <div class="col-xs-5">
                        <p class="cooperationcontent">联系人：<%#Eval("ContactPerson") %></p>
                        <p class="cooperationcontent">邮箱：<%#Eval("Mailbox") %></p>
                        <p class="cooperationcontent">电话：<%#Eval("Telephone")%></p>
                        <p class="cooperationcontent">QQ：<%#Eval("QQ") %></p>
                    </div>
                    <div class="col-xs-7">
                        <img style="height: 110px; width: 110px;" src="<%#Eval("ICON")%>" />
                    </div>
                </div>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <div class="col-md-1" style="padding:0px 0px;margin:0px 0px;">
                        <div style="border-right: 1px solid #E6E6E6; height: 150px; width: 1px;margin-top:80px;"></div>
                 </div>
                <div class="col-xs-5 " style="margin-top:40px;">
                    <div class="col-xs-12 cooperationtitle">
                        <p><%#Eval("CooperationItem")%></p>
                    </div>
                    <div class="col-xs-7">
                        <p class="cooperationcontent">联系人：<%#Eval("ContactPerson") %></p>
                        <p class="cooperationcontent">邮箱：<%#Eval("Mailbox") %></p>
                        <p class="cooperationcontent">电话：<%#Eval("Telephone")%></p>
                        <p class="cooperationcontent">QQ：<%#Eval("QQ") %></p>
                    </div>
                    <div class="col-xs-5">
                        <img style="height: 110px; width: 110px;" src="<%#Eval("ICON")%>" />
                    </div>
                </div>
            </AlternatingItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderJavascript" runat="server">
</asp:Content>
