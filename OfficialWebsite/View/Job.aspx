<%@ Page Title="" Language="C#" MasterPageFile="~/View/Site1.Master" AutoEventWireup="true" CodeBehind="Job.aspx.cs" Inherits="OfficialWebsite.View.Job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-xs-12 jobTitle">
            <p class="text-center">加入我们，在这里你将获得：</p>
        </div>
        <div class="col-xs-4 jobTitle">
            <img src="../Images/struggle.png" /></div>
        <div class="col-xs-4 jobTitle">
            <img src="../Images/coffice.png" /></div>
        <div class="col-xs-4 jobTitle">
            <img src="../Images/money.png" /></div>
        <div class="col-xs-4 jobTitleTaggingd">
            <p class="text-center jobTitleTagging">难得的创业经历</p>
            <p class="jobWelfare">你的工作位于医疗互联网的前沿，可能对整个行业的发展产生影响。</p>
        </div>
        <div class="col-xs-4 jobTitleTaggingd">
            <p class="text-center jobTitleTagging">良好的工作氛围</p>
            <p class="jobWelfare">我们提供宽松灵活的工作环境，提倡创新，鼓励思想的碰撞，每个人的意见都得到重视。</p>
        </div>
        <div class="col-xs-4 jobTitleTaggingd">
            <p class="text-center  jobTitleTagging">有竞争力的待遇</p>
            <p class="jobWelfare">不定期的团队活动和团队聚餐；表现好的员工将获得公司一部分的期权。</p>
        </div>
        <div class="col-xs-12 jobTitle">
            <p class="text-center">我们正在寻找</p>
        </div>
        <div class="col-xs-12 joblist">
            <asp:Repeater runat="server" ID="repeaterJob">
                <ItemTemplate>
                    <div class="col-xs-1 jobitem">
                    </div>
                    <div class="col-xs-5 jobitem">
                        <label id="<%#Eval("ID") %>" class="col-xs-9 Jobbtn  text-center"><%#Eval("JobTitle") %></label>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderJavascript" runat="server">
<script type="text/javascript">
    $(document).ready(function () {
        $(".Jobbtn").click(function (e) {
            var id = $(e.target).attr("id");
            location.href = "jobinfo.aspx?id="+id;
        });
    });
</script>
</asp:Content>
