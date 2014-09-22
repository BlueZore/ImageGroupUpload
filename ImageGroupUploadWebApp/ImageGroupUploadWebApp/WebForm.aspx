<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="ImageGroupUploadWebApp.WebForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
    <meta content="IE=6;IE=7;IE=8" http-equiv="X-UA-Compatible" />
    <title></title>
    <script src="JS/uploadify/uploadifyIGU.js"></script>
    <script src="JS/uploadify/uploadify.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <asp:HiddenField ID="hidParentID" runat="server" />

        <div class="uploader" id="uploader001">
            <div class="uploader_logo">
            </div>
            <ul id="uploadfileQueue" class="uploadfileQueue">
            </ul>
            <div class="uploader_main_btn_area">
                <div id="file_upload_main">点击选择图片</div>
            </div>
            <p>单次最多可选 300 张，单张最大不可超过2M</p>
        </div>
    </form>
</body>
</html>
