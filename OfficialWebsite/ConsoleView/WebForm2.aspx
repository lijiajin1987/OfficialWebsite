<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="OfficialWebsite.ConsoleView.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title></title>
    <link rel="stylesheet" href="../Content/css/dropzone.css" />
</head>
<body>
    <form id="form1" runat="server" action="WebForm2.aspx">
        <div>
            <!-- PAGE CONTENT BEGINS -->
            <%--<div class="jumbotron">
                <div class="dropzone" id="dropzoneForm">
                    <div class="fallback">
                        <input name="file" type="file" />
                        <input type="submit" value="Upload" />
                    </div>
                </div>
            </div>--%>
            <div>
                <label id="lblurl"></label>
                <br />
                <label id="lblurllangeth"></label><br />
                <label id="lblurlindexOf"></label><br />
                <label id="lblurlsubstrlangeth"></label><br />
                <label id="lblurlsubstr"></label><br />
            </div>
        </div>
        <!-- PAGE CONTENT ENDS -->

        <!-- page specific plugin scripts -->
        <script src="../Scripts/dropzone.min.js"></script>
        <script src="../Scripts/jquery-2.0.3.min.js"></script>
        <script src="../Scripts/jquery.validate.min.js"></script>
        <script type="text/javascript">
            //$("#dropzoneForm").dropzone({url:"test.ashx"});
        </script>
        <script type="text/javascript">
            //File Upload response from the server
            Dropzone.options.dropzoneForm = {
                maxFiles: 2,
                url: "WebForm2.aspx",
                init: function () {
                    this.on("maxfilesexceeded", function (data) {
                        var res = eval('(' + data.xhr.responseText + ')');
                    });
                    this.on("addedfile", function (file) {
                        // Create the remove button
                        var removeButton = Dropzone.createElement("<button>Remove file</button>");
                        // Capture the Dropzone instance as closure.
                        var _this = this;
                        // Listen to the click event
                        removeButton.addEventListener("click", function (e) {
                            // Make sure the button click doesn't submit the form:
                            e.preventDefault();
                            e.stopPropagation();
                            // Remove the file preview.
                            _this.removeFile(file);
                            // If you want to the delete the file on the server as well,
                            // you can do the AJAX request here.
                        });
                        // Add the button to the file preview element.
                        file.previewElement.appendChild(removeButton);
                    });
                }
            };

            var url = "../Content/avatars/ljj.jpg?id=" + Math.random();
            $(document).ready(function () {
                $("#lblurl").html(url);
                $("#lblurllangeth").html(url.length);
                $("#lblurlindexOf").html(url.indexOf("?"));
                $("#lblurlsubstrlangeth").html(url.length - url.indexOf("?"));
                $("#lblurlsubstr").html(url.substr(0,url.indexOf("?")));
            });
        </script>
        <script type="text/javascript">

        </script>
    </form>

</body>
</html>
