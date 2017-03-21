<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notes.aspx.cs" Inherits="Account_notes" %>

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
    <link href="css/product.css" rel="stylesheet" />
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="css/plugins/footable/footable.core.css" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            height: 35px;
        }
       span.footable-toggle{
           position:absolute;
           z-index:999;
           margin:10px 0;
       }
    </style>
        <script src="js/jquery.min.js"></script>
    <script>
        $(function () {
            $("#up_btn").click(function () {

                if ($(".checked").size() > 0) {
                    window.location.href = "product_addsp.aspx?gid=" + $(".checked").parent().parent().parent().text().trim();
                }
                else {
                    alert("请选择商品修改");
                }

            });
            $("#type_btn").click(function () {

                if ($(".checked").size() > 0) {
                    window.location.href = "product_type.aspx?gid=" + $(".checked").parent().parent().parent().text().trim();
                }
                else {
                    alert("请选择商品修改规格");
                }

            });
            $("#canshu_btn").click(function () {

                if ($(".checked").size() > 0) {
                    window.location.href = "product_canshu.aspx?gid=" + $(".checked").parent().parent().parent().text().trim();
                }
                else {
                    alert("请选择商品修改产品参数");
                }

            });
            $("#del_btn").click(function () {

                if ($(".checked").size() > 0) {
                    $.ajax({
                        url: "ajax/deNotes.ashx",
                        type: "POST",
                        async: true,
                        data: { cashId: $(".checked").eq(0).parent().parent().parent().text() },
                        cache: true,
                        dataType: "html",
                        beforeSend: function () { },
                        success: function (dt) {
                            if (dt == "1000") { alert("删除成功"); window.location.href = window.location.href; } else { alert("删除失败"); }
                        },
                        error: function () { }
                    });
                }
                else {
                    alert("请选择商品删除");
                }

            });
        });
    </script>
</head>
<body class="gray-bg">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                
                <div class="ibox-content">
                    <div class="row">
                        <div class="fixed-table-toolbar">
                            <div class="col-sm-6">
                            <div class="bars pull-left">
                                <div class="btn-group hidden-xs" id="exampleTableEventsToolbar" role="group">
                                  <button type="button" class="btn btn-outline btn-default" id="del_btn" title="删除">
                                        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                                    </button>
                                   
                                </div>

                            </div>
                            </div>
                            <div class="col-sm-6">
                            

                            </div>
                            </div>
                        </div>
                    <div id="tbl_list" runat="server">
                    <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="8">
                                <thead>
                                <tr>

                                    <th data-toggle="true">产品</th>
                                    <th>名字</th>
                                    <th>电话</th>
                                    <th data-hide="all">公司</th>
                                    <th data-hide="all">参数</th>
                                    <th data-hide="all">采购数量</th>
                                    <th data-hide="all">日期</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>2015韩国童装韩版牛仔童短裤</td>
                                    <td>袁岳</td>
                                    <td>0800 051213</td>
                                    <td>深圳市有大福实业有限公司</td>
                                    <td><span class="pie">0.52/1.561</span></td>
                                    <td>200</td>
                                    <td>2015.09.10</td>
                                    <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                </tr>
                                <tr>
                                    <td>300米速进口日本原丝耐磨</td>
                                    <td>付守永</td>
                                    <td>0500 780909</td>
                                    <td>广州重兑诺贸易有限公司</td>
                                    <td><span class="pie">6,9</span></td>
                                    <td>400</td>
                                    <td>2015.10.14</td>
                                    <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                </tr>
                                <tr>
                                    <td>单肩包品牌外贸女包批发</td>
                                    <td>张有为</td>
                                    <td>0800 1111</td>
                                    <td>广州纳依斯商贸发展有限公司</td>
                                    <td><span class="pie">3,1</span></td>
                                    <td>750</td>
                                    <td>2015.08.22</td>
                                    <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                </tr>
                                <tr>
                                    <td>2015新款辣妈孙俪周迅同款</td>
                                    <td>李全福 </td>
                                    <td>(016977) 0648</td>
                                    <td>营口港荟网络科技股份有限公司</td>
                                    <td><span class="pie">4,9</span></td>
                                    <td>180</td>
                                    <td>2015.11.19</td>
                                    <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                </tr>
                                <tr>
                                    <td>300米速进口日本原丝耐磨</td>
                                    <td>付守永</td>
                                    <td>0500 780909</td>
                                    <td>广州重兑诺贸易有限公司</td>
                                    <td><span class="pie">6,9</span></td>
                                    <td>400</td>
                                    <td>2015.10.14</td>
                                    <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                </tr>
                                <tr>
                                    <td>正品印度红油
                                    </td>
                                    <td>袁岳</td>
                                    <td>0800 051213</td>
                                    <td>深圳市有大福实业有限公司</td>
                                    <td><span class="pie">0.52/1.561</span></td>
                                    <td>200</td>
                                    <td>2015.09.10</td>
                                    <td><a href="#"><i class="fa fa-check text-navy"></i> 通过</a></td>
                                </tr>
                               
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="5">
                                        <ul class="pagination pull-right"></ul>
                                    </td>
                                </tr>
                                </tfoot>
                            </table>
                    </div>
               </div>
                
            </div>
        </div>
    </div>
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/content.min.js?v=1.0.0"></script>
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script src="js/plugins/footable/footable.all.min.js"></script>
    <script>
        $(document).ready(function () { $(".i-checks").iCheck({ checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green", }) });
        $(document).ready(function () { $(".footable").footable(); $(".footable2").footable() });

    </script>
    
</body>

</html>
