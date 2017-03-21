﻿KindEditor.ready(function (K) {
    var editor1 = K.create('#content1', {
        uploadJson: 'AJAX/uploadjson.ashx',
        fileManagerJson: 'AJAX/filemanagerjson.ashx',
        allowFileManager: true,
        urlType: 'domain',
        items: [
				'source', '|', 'preview', 'fontname', 'fontsize', 'template', '|', 'code', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
				'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist', 'image', 'flash', 'media', 'insertfile',
				'insertunorderedlist', '|', 'emoticons', 'baidumap', 'link', 'fullscreen'],
        afterCreate: function () {
            var self = this;
            K.ctrl(document, 13, function () {
                self.sync();
                K('form[name=content]')[0].submit();
            });
            K.ctrl(self.edit.doc, 13, function () {
                self.sync();
                K('form[name=content]')[0].submit();
            });
        }
//        ,afterUpload: function (url) {
//            alert(url);
//        }
    });
});