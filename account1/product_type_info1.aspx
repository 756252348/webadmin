<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product_type_info1.aspx.cs" Inherits="Account_product_type_info1" %>

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

 <%--   <script src="js/kindeditor-min.js"></script>
    <script src="js/zh-CN.js"></script>
    <link href="css/default.css" rel="stylesheet" />
    <link href="css/prettify.css" rel="stylesheet" />
    <script src="js/prettify.js"></script>--%>
    <script runat="server">
//protected void Page_Load(object sender, EventArgs e)
//{
//    this.Label1.Text = Request.Form["content1"];
//}

    </script>
    <script>
        $(function () {

            var _gid = 0;
            if (getQueryString("gid"))
            {
                _gid = getQueryString("gid");
            }
            
            $("#gid").val(_gid);
            if (getQueryString("ParentId")) {
                var _ParentId = getQueryString("ParentId");
            }
            $("#ParentId").val(_ParentId);     

            function getQueryString(name) {
                var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
                var r = window.location.search.substr(1).match(reg);
                if (r != null) return decodeURI(r[2]); return null;
            }
     
        })
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
                        <input runat="server" id="ParentId" name="ParentId" value="0" type="hidden" />
                        <div id="form_lists" runat="server">
                            
                            <div class="form-group">
                                <label class="col-sm-2 control-label">规格名</label>

                                <div class="col-sm-10">
                                    <input name="pdt1" type="text" class="form-control" id="pro_name" runat="server">
                                </div>
                            </div>      
                            <div class="form-group">
                                <label class="col-sm-2 control-label">市场价格(元)</label>

                                <div class="col-sm-10">
                                    <input name="moneyold" type="text" class="form-control" id="pro_omoney" runat="server">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">现价(元)</label>

                                <div class="col-sm-10">
                                    <input name="money" type="text" class="form-control" id="pro_nmoney" runat="server" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">已售数量</label>

                                <div class="col-sm-10">
                                    <input name="selnum" type="text" class="form-control" id="pro_num" runat="server" >
                                </div>
                            </div>
                             <div class="form-group">
                                <label class="col-sm-2 control-label">库存</label>

                                <div class="col-sm-10">
                                    <input name="selnum" type="text" class="form-control" id="pro_Stock" runat="server">
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <asp:Button ID="btLogin" runat="server" class="btn btn-primary" Text="保存内容" OnClick="btLogin_Click" />
                                <button type="button" onclick="javascript:location.href='product_list1.aspx'" class="btn btn-outline btn-default" title="返回">返回商品列表</button>
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
<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
</html>