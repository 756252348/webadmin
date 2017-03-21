<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product_addfenlei.aspx.cs" Inherits="Account_product_addfenlei" %>

<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>雪村商城后台管理系统</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="css/Edit.css" rel="stylesheet" />
    <link href="css/uploadify.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/localResizeIMG2.js"></script>
    <script src="js/mobileBUGFix.mini.js"></script>

    <script src="js/kindeditor-min.js"></script>
    <script src="js/zh-CN.js"></script>
    <link href="css/default.css" rel="stylesheet" />
    <link href="css/prettify.css" rel="stylesheet" />
    <script src="js/prettify.js"></script>
    <script runat="server">
//protected void Page_Load(object sender, EventArgs e)
//{
//    this.Label1.Text = Request.Form["content1"];
//}

    </script>
    <script>
        $(function () {

            var _gid = 0;
            if (getQueryString("id")) {
                _gid = getQueryString("id");
            }

            $("#gid").val(_gid);
            //初始化操作        
            $('#upload_image').localResizeIMG({
                //width: 480,//缩略图宽度
                quality: 1,//图片质量，0—1，越大越好
                success: function (result, _this) {
                    //result.base64:带图片类型的base64编码，可直接用于img标签的src
                    //result.clearBase64:不带图片类型的编码
                    //_this:当前绑定对象
                    //console.log(result);
                    var sHtml = '';//$("#upImages").html();
                    sHtml += " <div class='img-item'><div class='img-del'><i class='fa fa-times-circle new-upload' style='float: right;margin-right: 5px;margin-top: 3px;'></i></div><img src=\"" + result.base64 + "\" alt=\"\" id=\"img\" style=\"width:200px; height:100px;\" /></div>";
                    $("#upImages").append(sHtml);
                    base64uploadimg(result.clearBase64, _this);

                }
            });

            $("#upImages").on('click', '.img-del i', function () {
                var img_name = $(this).attr("data-img");
                // alert(img_name);
                $(this).parents('.img-item').remove();
                var aa = $('#pro_img').val();
                var kk = [];
                for (var i = 0, len = aa.split("|").length; i < len; i++) {
                    if (aa.split("|")[i] != img_name) {
                        kk.push(aa.split("|")[i]);
                    }
                }

                $('#pro_img').val(kk.join('|'));
            });
        })
        //上传图片 imgs:[数组/以'|'分割字符串] _this:[可选对象]
        function base64uploadimg(imgs, _this) {
            var _imgs = '';
            if (typeof (imgs) == 'object') {
                _imgs = imgs.join('|');
            } else if (typeof (imgs) == 'string') {
                _imgs = imgs;
            }
            $.ajax({
                type: 'post',
                url: 'Base64ImgUpload.ashx',
                data: { base64imgs: _imgs },
                cache: true,
                dataType: "json",
                async: true,
                beforesend: function () { },
                success: function (data) {
                    if (data) {
                        //{data0:"1000",data1:"[以'|'分割的文件名]"}
                        //{data0:"1001",data1:"未执行操作"}
                        //{data0:"1002",data1:"数据传输错误"}
                        //{data0:"1003",data1:"上传图片时错误"}
                        if (data.data0 == '1000') {
                            var aa = []
                            if ($('#pro_img').val().length == 0) {
                                aa.push(data.data1)
                            } else {
                                aa = $('#pro_img').val().split('|');
                                aa.push(data.data1)

                            }
                            $('#pro_img').val(aa.join('|'));
                            $('.new-upload').attr("data-img", data.data1).removeClass('new-upload');
                        }
                        console.log(data);

                    }
                },
                error: function () { }
            });
        }
        function getQueryString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return decodeURI(r[2]); return null;
        }


    </script>
    
    <style>
        .img-item {
            width: 200px;
            height: 100px;
            display: inline-block;
        }

        .img-del {
            position: absolute;
            width: 200px;
        }

            .img-del:hover {
                background: rgba(0,0,0,0.50);
            }

        i.fa.fa-times-circle {
            float: right;
            margin: 5px;
        }

            i.fa.fa-times-circle:hover {
                color: #fff;
            }
    </style>
</head>
<body class="gray-bg">

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">

                <div class="ibox-content">
                    <form runat="server" class="form-horizontal" id="pro_addsp">
                        <input runat="server" id="gid" name="gid" value="0" type="hidden" />
                        <div id="form_lists" runat="server">


                            <div class="form-group">
                                <label class="col-sm-2 control-label">类别名</label>

                                <div class="col-sm-10">
                                    <input name="pdt1" type="text" class="form-control" id="pro_name" runat="server">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">是否推荐首页</label>

                                <div class="col-sm-10">
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                        <asp:ListItem Value="0" Selected="True">否</asp:ListItem>
                                        <asp:ListItem Value="1">是</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">图片</label>

                                <div class="col-sm-10">
                                    <div id="upImages" runat="server">
                                    </div>
                                    <input type="file" id="upload_image" class="form-control">
                                </div>
                                <input name="uploadFile" type="hidden" id="pro_img" value="" runat="server">
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">详情</label>
                                <div class="col-sm-10">
                                   <input name="pdt2" type="text" class="form-control" id="content" runat="server">
                                 
                                </div>

                            </div>
                

                         

                            
                            
                            

                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <asp:Button ID="btLogin" runat="server" class="btn btn-primary" Text="保存内容" OnClick="btLogin_Click" />
                                <button type="button" onclick="javascript:location.href='product_fenlei_list.aspx'" class="btn btn-outline btn-default" title="返回">返回列表</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
       <script type="text/javascript">
           function jsloader(source, callback, identifier) {
               var element = document.createElement('script');

               if (typeof (source) == 'undefined' || source == '') {
                   return false;
               }
               element.setAttribute('src', source);
               element.language = "javascript";
               element.charset = "utf-8";
               element.type = "text/javascript";

               if (typeof (identifier) != 'undefined') {
                   element.setAttribute('id', identifier);
               }

               element.onload = element.onreadystatechange = function () {
                   if (!this.readyState || this.readyState === 'loaded' || this.readyState === 'complete') {
                       if (typeof (callback) == 'function') {
                           callback();
                       }
                       if (typeof (callback) == 'string') {
                           eval(callback)();
                       }
                       element.onload = element.onreadystatechange = null;
                   }
               };
               document.getElementsByTagName('head')[0].appendChild(element);
               return true;
           }
           jsloader("JS/kindeditor/kindeditor-min.js", function () {
               jsloader("JS/kindeditor/lang/zh_CN.js");
               jsloader("JS/KEditUpload.js");
               jsloader("JS/ImgUpLoad.js");
           });
        </script>

</html>
