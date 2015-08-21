<%@ Page Title="" Language="C#" MasterPageFile="~/View/Site1.Master" AutoEventWireup="true" CodeBehind="Team.aspx.cs" Inherits="OfficialWebsite.View.Team" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container TeamTitle">
        <p runat="server" id="pteamTitle"></p>
    </div>
    <div class="container">
        <asp:Repeater runat="server" ID="repeaterTeam">
            <ItemTemplate>
                <div class="col-xs-6 TeamUnit">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-3">
                        <img class="img-circle" src="<%#Eval("Img")%>" />
                    </div>
                    <div class="col-xs-7 TeamUnitTitle">
                        <p><%#Eval("Title")%></p>
                    </div>
                    <div class="col-xs-12 TeamUnitContent">
                        <p>
                            <%#Eval("Introduction")%>
                        </p>
                    </div>
                </div>
                <!--TeamEND-->
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderJavascript" runat="server">
</asp:Content>
