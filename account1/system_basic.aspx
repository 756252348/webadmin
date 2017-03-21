<%@ Page Language="C#" AutoEventWireup="true" CodeFile="system_basic.aspx.cs" Inherits="Account_system_basic" %>

<!DOCTYPE html>
<html>

<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>基本设置</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
    
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                
                <div class="ibox-content">
                    <form runat="server" class="form-horizontal" id="sys_bas">
                         <div id ="form_lists" runat="server">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">网站名称</label>

                            <div class="col-sm-10">
                                <input name="sys1" type="text" class="form-control" id="a1" runat="server">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">平台网址</label>

                            <div class="col-sm-10">
                                <input name="sys2" type="text" class="form-control" id="a2" runat="server">
                            </div>
                        </div>
                             <div class="form-group">
                            <label class="col-sm-2 control-label">电话</label>

                            <div class="col-sm-10">
                                <input name="sys3" type="text" class="form-control" id="a3" runat="server">
                            </div>
                        </div>
                             <div class="form-group">
                            <label class="col-sm-2 control-label">手机</label>

                            <div class="col-sm-10">
                                <input name="sys4" type="text" class="form-control" id="a4" runat="server">
                            </div>
                        </div>
                             <div class="form-group">
                            <label class="col-sm-2 control-label">传真</label>

                            <div class="col-sm-10">
                                <input name="sys5" type="text" class="form-control" id="a5" runat="server">
                            </div>
                        </div>
                             <div class="form-group">
                            <label class="col-sm-2 control-label">邮编</label>

                            <div class="col-sm-10">
                                <input name="sys6" type="text" class="form-control" id="a6" runat="server">
                            </div>
                        </div>
                             <div class="form-group">
                            <label class="col-sm-2 control-label">售后</label>

                            <div class="col-sm-10">
                                <input name="sys7" type="text" class="form-control" id="a7" runat="server">
                            </div>
                        </div>
                             <div class="form-group">
                            <label class="col-sm-2 control-label">微信</label>

                            <div class="col-sm-10">
                                <input name="sys8" type="text" class="form-control" id="a8" runat="server">
                            </div>
                        </div>
                             <div class="form-group">
                            <label class="col-sm-2 control-label">邮箱</label>

                            <div class="col-sm-10">
                                <input name="sys9" type="text" class="form-control" id="a9" runat="server">
                            </div>
                        </div>
                             <div class="form-group">
                            <label class="col-sm-2 control-label">QQ</label>

                            <div class="col-sm-10">
                                <input name="sys10" type="text" class="form-control" id="a10" runat="server">
                            </div>
                        </div>
                             </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <asp:Button ID="btLogin" runat="server" class="btn btn-primary" Text="保存内容" OnClick="btLogin_Click" />
                               
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
</html>

