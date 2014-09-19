﻿$(function () {
    $("#file_upload_main").uploadify({
        buttonText: '点击选择图片',
        //flash
        swf: "/JS/uploadify/uploadify.swf",
        //文件选择后的容器ID
        queueID: 'uploadfileQueue',
        uploader: '/UploadHandler.ashx',
        multi: true,
        fileTypeDesc: '支持图片格式：',
        fileTypeExts: '*.jpg;*.jpge;*.gif;*.png',
        formData: { 'ParentID': $("#hidParentID").val() },
        removeTimeout: 10,
        fileSizeLimit: '2MB',
        removeCompleted: false,
        width: 180,
        height: 45,
        //在config中设置下面的数值就可以上传大文件了呢！
        //<security>
        //    <requestFiltering>
        //        <requestLimits maxAllowedContentLength="1073741824" />
        //    </requestFiltering>
        //</security>
        //<httpRuntime executionTimeout="50000" maxRequestLength="1073741824" />

        //返回一个错误，选择文件的时候触发
        onSelectError: function (file, errorCode, errorMsg) {
            switch (errorCode) {
                case -100:
                    alert("上传的文件数量已经超出系统限制的" + $('#file_upload').uploadify('settings', 'queueSizeLimit') + "个文件！");
                    break;
                case -110:
                    alert("文件 [" + file.name + "] 大小超出系统限制的" + $('#file_upload').uploadify('settings', 'fileSizeLimit') + "K大小！");
                    break;
                case -120:
                    alert("文件 [" + file.name + "] 大小异常！");
                    break;
                case -130:
                    alert("文件 [" + file.name + "] 类型不正确！");
                    break;
            }
        },
        //检测FLASH失败调用
        onFallback: function () {
            alert("您未安装FLASH控件，无法上传图片！请安装FLASH控件后再试。");
        },
        //上传到服务器成功时，服务器返回相应信息到data里
        onUploadSuccess: function (file, data, response) {
            if (data != null) {
                //var arr = data.split('|');
                //var html = FileHtml(arr[0], arr[1], arr[2], 1, arr[3], arr[4]);
                //$(".fm_main_file_area").prepend(html);
            }
        },
        //选择文件后向队列中添加每个上传任务时都会触发
        onSelect: function (file) {
            //if ($(".fm_main_queue").is(":hidden")) {
            //    $(".fm_main_queue,#uploadfileQueue").show();
            //}
        }
    });


    $("#file_upload_append").uploadify({
        buttonText: '追加图片',
        //flash
        swf: "/JS/uploadify/uploadify.swf",
        //文件选择后的容器ID
        queueID: 'uploadfileQueue',
        uploader: '/UploadHandler.ashx',
        multi: true,
        fileTypeDesc: '支持图片格式：',
        fileTypeExts: '*.jpg;*.jpge;*.gif;*.png',
        formData: { 'ParentID': $("#hidParentID").val() },
        removeTimeout: 10,
        fileSizeLimit: '2MB',
        removeCompleted: false,
        width: 100,
        height: 30,
        //在config中设置下面的数值就可以上传大文件了呢！
        //<security>
        //    <requestFiltering>
        //        <requestLimits maxAllowedContentLength="1073741824" />
        //    </requestFiltering>
        //</security>
        //<httpRuntime executionTimeout="50000" maxRequestLength="1073741824" />

        //返回一个错误，选择文件的时候触发
        onSelectError: function (file, errorCode, errorMsg) {
            switch (errorCode) {
                case -100:
                    alert("上传的文件数量已经超出系统限制的" + $('#file_upload').uploadify('settings', 'queueSizeLimit') + "个文件！");
                    break;
                case -110:
                    alert("文件 [" + file.name + "] 大小超出系统限制的" + $('#file_upload').uploadify('settings', 'fileSizeLimit') + "K大小！");
                    break;
                case -120:
                    alert("文件 [" + file.name + "] 大小异常！");
                    break;
                case -130:
                    alert("文件 [" + file.name + "] 类型不正确！");
                    break;
            }
        },
        //检测FLASH失败调用
        onFallback: function () {
            alert("您未安装FLASH控件，无法上传图片！请安装FLASH控件后再试。");
        },
        //上传到服务器成功时，服务器返回相应信息到data里
        onUploadSuccess: function (file, data, response) {
            if (data != null) {
                //var arr = data.split('|');
                //var html = FileHtml(arr[0], arr[1], arr[2], 1, arr[3], arr[4]);
                //$(".fm_main_file_area").prepend(html);
            }
        },
        //选择文件后向队列中添加每个上传任务时都会触发
        onSelect: function (file) {
            //if ($(".fm_main_queue").is(":hidden")) {
            //    $(".fm_main_queue,#uploadfileQueue").show();
            //}
        }
    });

    //file_upload居中
    $("#file_upload_main").css("margin-left", ($(".uploader_main_btn_area").width() - $("#file_upload_main").width()) / 2);
});