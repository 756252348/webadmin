<%@ Page Language="C#" AutoEventWireup="true" CodeFile="system_ragion.aspx.cs" Inherits="Account_system_ragion" %>

<!DOCTYPE html>
<html>

<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>今点 后台主题UI框架 - 空白页</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <script src="js/area.js"></script>
    <style type="text/css">
        body {
            background: #EEEEEE;
            margin: 0;
            padding: 0;
            font-family: "微软雅黑", Arial, Helvetica, sans-serif;
        }

        a {
            color: #006600;
            text-decoration: none;
        }

            a:hover {
                color: #990000;
            }

        .top {
            margin: 5px auto;
            color: #990000;
            text-align: center;
        }

        .info select {
            border: 1px #993300 solid;
            background: #FFFFFF;
        }

        .info {
            margin: 5px;
            text-align: center;

        }

            .info #show {
                color: #3399FF;
            }

        .bottom {
            text-align: right;
            font-size: 12px;
            color: #CCCCCC;
            width: 1000px;
        }
        .ys{width:150px;height:50px;font-size:20px;}
    </style>
    
</head>
<body class="gray-bg">
    <div class="top">
        <h1 style="color:black">地区设置</h1>
    </div>
    <div class="info">
        <div>
            <select id="s_province" name="s_province" class="ys"></select>
            <select id="s_city" name="s_city" class="ys"></select>
            <select id="s_county" name="s_county" class="ys"></select>
            <script class="resources library" src="area.js" type="text/javascript"></script>

            <script type="text/javascript">_init_area();</script>
        </div>

        <div id="show">
        <div class="form-group">
        <div class="col-sm-4 col-sm-offset-2">
        <button class="btn btn-primary" type="submit">保存内容</button>
        <button class="btn btn-white" type="submit">取消</button>
    </div>
</div></div>
    </div>
    <script type="text/javascript">
var Gid  = document.getElementById ;
var showArea = function(){
	Gid('show').innerHTML = "<h3>省" + Gid('s_province').value + " - 市" +
	Gid('s_city').value + " - 县/区" +
	Gid('s_county').value + "</h3>"
							}
Gid('s_county').setAttribute('onchange','showArea()');
    </script>

    <script src="js/area.js"></script>
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/content.min.js?v=1.0.0"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
</html>

