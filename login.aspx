<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Login" %>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <title>后台管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />
    <!-- Bootstrap -->
    <link href="css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="css/vendor/bootstrap-checkbox.css">

    <link href="css/minimal.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>
        if (window.top !== window.self) { window.top.location = window.location };
    </script>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #f6f7f9;
            font-family: 'Microsoft YaHei';
        }

        .lg-main {
            width: 1000px;
            margin: 180px auto 0;
        }

        .lg-left {
            width: 538px;
            float: left;
        }

        .lg-right {
            width: 462px;
            float: left;
        }

        .lg-box {
            width: 354px;
            height: 317px;
            border: 1px solid #d9dadc;
            border-radius: 5px;
            float: right;
            background-color: #fff;
            margin-top: 35px;
            color: #7d7d7d;
            font-size: 14px;
            overflow: hidden;
        }

        .lg-line {
            width: 274px;
            margin: 30px auto 0;
        }

        .lg-line-input {
            width: 96%;
            height: 36px;
            line-height: 36px;
            padding: 0 2%;
            border: 1px solid #b3c8a6;
            border-radius: 5px;
            color: #7d7d7d;
            font-size: 14px;
            margin-top: 12px;
            outline: medium;
        }

        .lg-btnbox {
            width: 100%;
            height: 80px;
            border-top: 1px solid #d9dadc;
            margin-top: 40px;
            background-color: #f9f9f9;
        }

        .lg-btn {
            width: 82px;
            height: 36px;
            border-radius: 3px;
            background-color: #429f29;
            border: none;
            color: #fff;
            margin: 22px 0 0 40px;
            cursor: pointer;
        }
    </style>
</head>

<body class="bg-1">



    <!-- Wrap all page content here -->
    <div id="wrap">
        <!-- Make page fluid -->
        <div class="row">
            <!-- Page content -->
            <div id="content" class="col-md-12 full-page login">

                <div class="lg-main">
                    <div class="lg-left">
                        <img src="images/login-bg.png" />
                    </div>
                    <div class="lg-right">
                        <div class="lg-box">
                            <form runat="server">
                                <div class="lg-line">
                                    <div class="lg-line-title">用户名：</div>
                                    <input class="lg-line-input" type="text" id="txtUserName" name="txtUserName"/>
                                </div>
                                <div class="lg-line">
                                    <div class="lg-line-title">密码：</div>
                                    <input class="lg-line-input" type="password" id="txtUserPwd" name="txtUserPwd"/>
                                </div>
                                <div class="lg-btnbox">
                                    <%--<button class="lg-btn">登录</button>--%>
                                    <asp:Button ID="btLogin" runat="server" class="lg-btn" Text="登录" OnClick="btLogin_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                
            </div>
            <!-- /Page content -->
        </div>
    </div>
    <!-- Wrap all page content end -->
</body>

</html>
