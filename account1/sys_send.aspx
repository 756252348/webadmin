<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sys_send.aspx.cs" Inherits="Account_sys_send" %>
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
                                <input name="sys1" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">平台网址</label>

                            <div class="col-sm-10">
                                <input name="sys2" type="text" class="form-control">
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
