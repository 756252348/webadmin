<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product_comment.aspx.cs" Inherits="Account_product_comment" %>

<!DOCTYPE html>
<html>

<!-- Mirrored from www.zi-han.net/theme/hplus/index_v2.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:30 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>雪村商城后台管理系统</title>
    <meta name="keywords" content="今点后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="今点是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <!-- Morris -->
    <link href="css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <!-- Gritter -->
    <link href="js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>
    <script src="js/plugins/peity/jquery.peity.min.js"></script>
    <script src="js/demo/peity-demo.min.js"></script>
    <script src="js/content.min.js?v=1.0.0"></script>
    <script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="js/plugins/gritter/jquery.gritter.min.js"></script>
    <script src="js/plugins/easypiechart/jquery.easypiechart.js"></script>
    <script src="js/plugins/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/demo/sparkline-demo.min.js"></script>
        <script type="text/javascript">
        $(function () {
    $("#refresh").click(function () {
                $("#form1").submit();
    })
        });
                </script>
</head>
<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row">
    <form name="form1" id="form1" action="" method="post">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>最新消息</h5>
                        <div class="ibox-tools">
                            <span id="refresh" class="label label-warning-light" style="cursor:pointer">刷新</span>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div>
                            <div id="tbl_list" runat="server" class="feed-activity-list">
                                <div class="feed-element">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="img/profile.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <small class="pull-right">5分钟前</small>
                                        <strong>谨斯里</strong> 上传了一个文件
                                        <br>
                                        <small class="text-muted">2014.11.8 12:22</small>
                                    </div>
                                </div>
                                <div class="feed-element">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="img/a2.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <small class="pull-right">2个月前</small>
                                        <strong>田亮</strong> 参加了<strong>《粑粑去哪儿》</strong>
                                        <br>
                                        <small class="text-muted">2014.11.8 12:22</small>
                                    </div>
                                </div>
                                <div class="feed-element">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="img/a3.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <small class="pull-right">2小时前</small>
                                        <strong>林依晨Ariel</strong> 刚刚起床
                                        <br>
                                        <small class="text-muted">2014.11.8 12:22</small>
                                    </div>
                                </div>
                                <div class="feed-element">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="img/a5.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <small class="pull-right">32分钟前</small>
                                        <strong>颜文字君</strong> 评论了
                                        <br>
                                        <small class="text-muted">2014.11.8 12:22</small>
                                        <div class="well">
                                            【九部令人拍案叫绝的惊悚悬疑剧情佳作】如果你喜欢《迷雾》《致命ID》《电锯惊魂》《孤儿》《恐怖游轮》这些好片，那么接下来推荐的9部同类题材并同样出色的的电影，绝对不可错过哦~
                                        </div>
                                        <div class="pull-right">
                                            <a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> 喜欢 </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button class="btn btn-primary btn-block m-t"><i class="fa fa-arrow-down"></i> 加载更多</button>
                            <div style="display:none"><input id="qry_pg" name="qry_pg" type="text" value="1"></div>
                        </div>
                    </div>
                </div>
           
            </form>

        </div>
    </div>
    

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

<!-- Mirrored from www.zi-han.net/theme/hplus/index_v2.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:46 GMT -->
</html>

