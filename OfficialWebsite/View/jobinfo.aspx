<%@ Page Title="" Language="C#" MasterPageFile="~/View/Site1.Master" AutoEventWireup="true" CodeBehind="jobinfo.aspx.cs" Inherits="OfficialWebsite.View.jobinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="height:auto;">
        <div class="row" style="background-color: #9fcb6b;">
                <img class="img-responsive" style="width: 100%;" src="../Images/banner2-.png" />
        </div>
        <div class="col-xs-6 Jobinfo" style="clear:both;">
            <div class="col-xs-12"><p id="JobTitle"></p></div>
            <div class="col-xs-12 JobRequirements">
                <p class="">岗位职责：</p>
                <div id="JobResponsibilities"></div>
            </div>
            <div class="col-xs-12 JobRequirements">
                <p class="">岗位要求：</p>
                <div id="JobRequirements"></div>
            </div>
            <div class="col-xs-12">
                <div class="col-xs-6">
                    <label class="lblmailbox" id="MailBox"></label></div>
                <div class="col-xs-6 text-right" style="font-size:16px;margin-top:20px;">
                    <p class="text-warning"><a href="Job.aspx">查看其他职位</a></p></div>
            </div>
            <div class="col-xs-12">
                <p class="infoTitletag">*邮件请注明应聘职位</p>
            </div>
        </div>
        <div class="col-xs-12" style="height:80px;"></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderJavascript" runat="server">
    <script type="text/javascript">
        function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
            if (r != null) return unescape(r[2]); return null; //返回参数值
        }
        $(document).ready(function () {
            var id = getUrlParam("id");
            if (id!= "") {
                $.ajax({
                    type: "get",
                    url: "../ConsoleView/ashx/ow_jobHandler.ashx",
                    //data: { JobTitle: JobTitle, WorkingAddress: WorkingAddress, JobResponsibilities: JobResponsibilities, JobRequirements: JobRequirements, MailBox: MailBox, ID: ID },
                    data: { ID: id },
                    dataType: "json",
                    success: function (data) {
                        //alert(data.Result);
                        if (data.Result == "yes") {
                            $("#JobTitle").html(data.JobTitle);
                            //$("#WorkingAddress").html(data.WorkingAddress);
                            //$("#JobResponsibilities").html(data.JobResponsibilities);
                            //$("#JobRequirements").html(data.JobRequirements);
                            $("#MailBox").html("简历投递箱：" + data.MailBox);
                            $.GetJobRequirements();
                            $.GetJobResponsibilities();
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
            $.GetJobResponsibilities = function () {
                $.ajax({
                    type: "get",
                    url: "../ConsoleView/ashx/ow_jobHandler.ashx",
                    //data: { JobTitle: JobTitle, WorkingAddress: WorkingAddress, JobResponsibilities: JobResponsibilities, JobRequirements: JobRequirements, MailBox: MailBox, ID: ID },
                    data: { ID: id, JobResponsibilitiestext: id },
                    dataType: "text",
                    success: function (data) {
                        $("#JobResponsibilities").html(data);
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
            }

            $.GetJobRequirements = function () {
                $.ajax({
                    type: "get",
                    url: "../ConsoleView/ashx/ow_jobHandler.ashx",
                    //data: { JobTitle: JobTitle, WorkingAddress: WorkingAddress, JobResponsibilities: JobResponsibilities, JobRequirements: JobRequirements, MailBox: MailBox, ID: ID },
                    data: { ID: id, JobRequirementstext: id },
                    dataType: "text",
                    success: function (data) {
                        $("#JobRequirements").html(data);
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
            }
        });
    </script>
</asp:Content>
