<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="ImageGroupUploadWebApp.WebForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
    <meta content="IE=6;IE=7;IE=8" http-equiv="X-UA-Compatible" />
    <title></title>
    <link href="JS/uploadify/uploadify.css" rel="stylesheet" />
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        .uploader {
            height: 200px;
            margin: 10px 20px 10px;
            border: 3px dashed #e6e6e6;
            color: #ccc;
            font-size: 18px;
            padding-top: 5px;
            padding-left: 5px;
            padding-right: 5px;
        }

        .uploader_logo {
            background: url("/images/image_08af510.png") no-repeat scroll center 10px;
            padding-top: 70px;
            position: relative;
            text-align: center;
            height: 10px;
        }

        .uploader_main_btn_area {
            height: 65px;
            margin-top: 12px;
            font-size: 20px;
            text-align: center;
        }

        .uploader p {
            text-align: center;
        }

        #file_upload_main {
            background: none repeat scroll 0 0 #00b7ee;
            border-radius: 3px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
            color: #fff;
            cursor: pointer;
            margin: auto 0;
        }

        .uploadfileQueue_btn_area {
            float: right;
            margin-right: 20px;
            font-size: 16px;
            text-align: center;
        }

        #uploadfileQueue {
            height: 160px;
            overflow: auto;
            overflow-x: hidden;
            width: 100%;
            display: none;
            margin-bottom: 5px;
        }

            #uploadfileQueue li {
                margin: 5px 10px 5px 0px;
                width: 124px;
                height: 124px;
                border: 1px solid #00b7ee;
                float: left;
                list-style: none;
            }

        .uploadfileQueue_item {
            width: 124px;
            height: 124px;
            text-align: center;
            padding: 2px;
            display: table-cell;
            vertical-align: middle;
        }

        .file-panel {
            background-color: #474849;
            height: 27px;
            position: absolute;
            width: 124px;
            z-index: 300;
            filter: alpha(opacity=50);
            -moz-opacity: 0.5;
            -khtml-opacity: 0.5;
            opacity: 0.5;
        }

            .file-panel span {
                color: #fff;
                cursor: pointer;
                display: inline;
                float: right;
                font-size: 11px;
                height: 18px;
                margin: 8px 1px 1px;
                width: 24px;
            }
    </style>
    <script src="JS/uploadify/jquery-1.7.2.min.js"></script>
    <script src="JS/uploadify/jquery.uploadify.js"></script>
    <script src="JS/uploadify/swfobject.js"></script>
    <script src="JS/uploadify/uploadify.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <asp:HiddenField ID="hidParentID" runat="server" />

        <div class="uploader" id="uploader001">
            <div class="uploader_logo">
            </div>
            <ul id="uploadfileQueue">
            </ul>
            <div class="uploader_main_btn_area">
                <div id="file_upload_main">点击选择图片</div>
            </div>
            <p>单次最多可选 300 张，单张最大不可超过2M</p>
        </div>
    </form>
</body>
</html>
