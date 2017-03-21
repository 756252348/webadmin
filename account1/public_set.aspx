<%@ Page Language="C#" AutoEventWireup="true" CodeFile="public_set.aspx.cs" Inherits="Account_public_set" %>

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
</head>
<body class="gray-bg">
    
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                
                <div class="ibox-content">
                     <form runat="server" class="form-horizontal" id="pub_set">
                        <div id ="form_lists" runat="server">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">商户ID</label>

                            <div class="col-sm-10">
                                <input name="pub_id" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">商户密钥</label>

                            <div class="col-sm-10">
                                <input name="pub_spkey" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">APPID</label>

                            <div class="col-sm-10">
                                <input name="pub_appid" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">APP密钥</label>

                            <div class="col-sm-10">
                                <input name="pub_appkey" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">接收地址</label>

                            <div class="col-sm-10">
                                <input name="pub_adr" type="text" class="form-control">
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

</html>
