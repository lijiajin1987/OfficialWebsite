<%@ Page Title="" Language="C#" MasterPageFile="~/ConsoleView/Site1.Master" AutoEventWireup="true" CodeBehind="HomeContent.aspx.cs" Inherits="OfficialWebsite.ConsoleView.HomeContent" %>
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
                <a href="#">首页</a>
            </li>
            <li>
                <a href="#">首页配置</a>
            </li>
            <li class="active">首页内容配置</li>
        </ul>
        <!-- .breadcrumb -->
    </div>
    <div class="page-content">
        <div class="page-header">
            <h1>管理团队</h1>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="table-responsive">
                    <table id="sample-table-2" class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>标记</th>
                                <th>第一行</th>
                                <th>第二行</th>
                                <th class="hidden-480">
                                    <i class="icon-time bigger-110 hidden-480"></i>
                                    创建时间</th>

                                <th>
                                    <i class="icon-time bigger-110 hidden-480"></i>
                                    修改时间
                                </th>

                                <th></th>
                            </tr>
                        </thead>

                        <tbody>
                            <asp:Repeater ID="repdata" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%#Eval("tag") %>
                                        </td>
                                        <td><%#Eval("oneline") %></td>
                                        <td><%#Eval("twoline") %></td>
                                        <td class="hidden-480"><%#Eval("createdate") %></td>
                                        <td><%#Eval("Updatedate") %></td>
                                        <td>
                                            <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
                                                <a class="green" href="UpHomeContent.aspx?id=<%#Eval("id") %>">
                                                    <i class="icon-pencil bigger-130"></i>
                                                </a>
                                                <a class="red" href="#" name="<%#Eval("id") %>">
                                                    <i class="icon-trash bigger-130"></i>
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
                <div class="col-xs-12 center"><label id="addContent" class="btn btn-success">新增</label></div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="end" runat="server">
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
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/typeahead-bs2.min.js"></script>

    <!-- page specific plugin scripts -->

    <script src="../Scripts/jquery.dataTables.min.js"></script>
    <script src="../Scripts/jquery.dataTables.bootstrap.js"></script>

    <!-- ace scripts -->

    <script src="../Scripts/ace-elements.min.js"></script>
    <script src="../Scripts/ace.min.js"></script>

    <!-- inline scripts related to this page -->

    <script type="text/javascript">
        jQuery(function ($) {
            var oTable1 = $('#sample-table-2').dataTable();
            //全选复选框
            //$('table th input:checkbox').on('click', function () {
            //    var that = this;
            //    $(this).closest('table').find('tr > td:first-child input:checkbox')
            //    .each(function () {
            //        this.checked = that.checked;
            //        $(this).closest('tr').toggleClass('selected');
            //    });

            //});


            $('[data-rel="tooltip"]').tooltip({ placement: tooltip_placement });//特效
            function tooltip_placement(context, source) {
                var $source = $(source);
                var $parent = $source.closest('table')
                var off1 = $parent.offset();
                var w1 = $parent.width();

                var off2 = $source.offset();
                var w2 = $source.width();

                if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
                return 'left';
            }
        })
        $(document).ready(function () {
            $("#addContent").click(function () {
                location.href = "UpHomeContent.aspx";
            });
            $(".red").click(function () {
                $.ajax({
                    type: "post",
                    url: "ashx/UpdateHomeContentHandler.ashx",
                    data: { Delid: $(".red").attr("name") },
                    dataType: "json",
                    success: function (data) {
                        if (data.Result == "yes") {
                            location.href = "HomeContent.aspx";
                        }
                        //处理结果
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
            });
        });
    </script>
</asp:Content>
