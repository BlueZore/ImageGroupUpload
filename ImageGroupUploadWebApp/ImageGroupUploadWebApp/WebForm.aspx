<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="ImageGroupUploadWebApp.WebForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
    <meta content="IE=6;IE=7;IE=8" http-equiv="X-UA-Compatible" />
    <title></title>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        #uploader {
            margin: 10px 20px 10px;
        }

            #uploader .placeholder {
                background: url("http://tb1.bdstatic.com/xiangce/webroot/static/upload/widget/ui/upload/images/image_08af510.png") no-repeat scroll center 10px rgba(0, 0, 0, 0);
                border: 3px dashed #e6e6e6;
                color: #ccc;
                font-size: 18px;
                min-height: 120px;
                padding-top: 70px;
                position: relative;
                text-align: center;
            }

        #filePicker {
            height: 65px;
            margin-top: 12px;
        }

        #file_upload {
            background: none repeat scroll 0 0 #00b7ee;
            border-radius: 3px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
            color: #fff;
            cursor: pointer;
            font-size: 20px;
            margin: auto 0;
        }

        #uploadfileQueue {
            border: 1px solid #3683db;
            padding: 3px;
            width: 371px;
            background-color: #fff;
        }
    </style>
    <script src="JS/uploadify/jquery-1.7.2.min.js"></script>
    <script src="JS/uploadify/jquery.uploadify.min.js"></script>
    <script src="JS/uploadify/swfobject.js"></script>
    <link href="JS/uploadify/uploadify.css" rel="stylesheet" />
    <script src="JS/uploadify/uploadify.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <asp:HiddenField ID="hidParentID" runat="server" />

        <div id="uploader">
            <div class="placeholder">
                <div id="filePicker">
                    <div id="file_upload">点击选择图片</div>
                </div>
                <p>单次最多可选 300 张，单张最大不可超过2M</p>
            </div>
        </div>
         

        <div id="uploadfileQueue">
        </div>
    </form>
</body>
</html>
