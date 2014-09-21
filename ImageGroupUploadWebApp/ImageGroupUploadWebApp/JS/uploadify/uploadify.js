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
                $("#uploadfileQueue").find("[src='Images/tmp.png']").eq(0).attr("src", data);
            }
        },
        //选择文件后向队列中添加每个上传任务时都会触发
        onSelect: function (file) {
            //if ($(".fm_main_queue").is(":hidden")) {
            //    $(".fm_main_queue,#uploadfileQueue").show();
            //}
        },
        onUploadStart: function (file) {
            //alert($("#uploader002").is(":hidden"));

            if ($("#uploader002").is(":hidden")) {
                $("#uploader001").css({ height: "0px", border: "0px", "margin-top": "0px" });
                $("#uploader001 .uploader_main,.uploader_main").removeAttr("class");
                $("#uploader001 .uploader_main,.uploader_main").css({ height: "0px", "line-height": "0px" });
                $("#uploader001 p").remove();
                $("#uploader002").show();

                var $tmp = $("#file_upload_main");
                $("#file_upload_main").remove();
                $("#uploader002 .uploadfileQueue_btn_area").append($tmp);
                $tmp.css({ height: "30px", width: "100px" });
                $tmp.find("div").css({ height: "30px", width: "100px", "line-height": "30px" });
                $tmp.find("object").css({ height: "30px", width: "100px" });
                $tmp.find("span").html("追加图片").css({ height: "30px", "line-height": "30px" });
            }
        }
    });


    //file_upload居中
    $("#file_upload_main").css("margin-left", ($(".uploader_main_btn_area").width() - $("#file_upload_main").width()) / 2);
});