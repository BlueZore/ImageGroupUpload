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
        }

        .uploader_main {
            background: url("http://tb1.bdstatic.com/xiangce/webroot/static/upload/widget/ui/upload/images/image_08af510.png") no-repeat scroll center 10px rgba(0, 0, 0, 0);
            min-height: 120px;
            padding-top: 70px;
            position: relative;
            text-align: center;
        }

        .uploader_main_btn_area {
            height: 65px;
            margin-top: 12px;
        }

        #file_upload_main {
            background: none repeat scroll 0 0 #00b7ee;
            border-radius: 3px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
            color: #fff;
            cursor: pointer;
            font-size: 20px;
            margin: auto 0;
        }

        .uploadfileQueue_btn_area {
            float: right;
            margin-right: 20px;
        }

        #file_upload_append {
            background: none repeat scroll 0 0 #00b7ee;
            border-radius: 3px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
            color: #fff;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
        }

        #uploadfileQueue {
            height: 150px;
            overflow: auto;
            overflow-x: hidden;
            width: 100%;
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
    </style>
    <script src="JS/uploadify/jquery-1.7.2.min.js"></script>
    <script src="JS/uploadify/jquery.uploadify.js"></script>
    <script src="JS/uploadify/swfobject.js"></script>
    <script src="JS/uploadify/uploadify.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <asp:HiddenField ID="hidParentID" runat="server" />

        <div class="uploader">
            <div class="uploader_main">
                <div class="uploader_main_btn_area">
                    <div id="file_upload_main">点击选择图片</div>
                </div>
                <p>单次最多可选 300 张，单张最大不可超过2M</p>
            </div>
        </div>


        <div class="uploader" style="padding: 5px;">
            <ul id="uploadfileQueue">
            </ul>

            <div class="uploadfileQueue_btn_area">
                <div id="file_upload_append">追加图片</div>
            </div>
        </div>

    </form>
</body>
</html>
