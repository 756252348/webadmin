<%@ Page Language="C#" AutoEventWireup="true" CodeFile="partner_list.aspx.cs" Inherits="Account_partner_list" %>

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
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/content.min.js?v=1.0.0"></script>
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 35px;
        }
    </style>

    <script type="text/javascript">
        $(function () {
            $("#query").click(function () {
                $("#qry_txt").val($("#qry_show_txt").val());
                $("#form1").submit();
            })
            $("#refresh").click(function () {
                $("#form1").submit();
            })
            $("#editable_next").click(function () {
                $("#qry_pg").val($(".active").next().find("a").eq(0).text());
                $("#form1").submit();
            })
            $("#editable_previous").click(function () {
                $("#qry_pg").val($(".active").prev().find("a").eq(0).text());
                $("#form1").submit();
            })
            $("#deliver").click(function () {
                var strID = $(".checked").eq(0).parent().parent().parent().text();
                location.href = "partner_add.aspx?id=" + strID;
            })
            $("#del_btn").click(function () {

                if ($(".checked").size() > 0) {
                    $.ajax({
                        url: "ajax/departner.ashx",
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
                    alert("请选择记录删除");
                }

            });
        });
        function onPageIndexClick(a) {
            $("#qry_pg").val(a);
            $("#form1").submit();
        }
      
    </script>
    
</head>
<body class="gray-bg">
    <div class="row">
        <form name="form1" id="form1" action="" method="post">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                
                <div class="ibox-content">
     
                    
                    <div id="editable_wrapper" class="dataTables_wrapper form-inline" role="grid">
                        <div class="row">
                        <div class="fixed-table-toolbar">
                            <div class="col-sm-6">
                            <div class="bars pull-left">
                                <div class="btn-group hidden-xs" id="exampleTableEventsToolbar" role="group">
                                    <button type="button" class="btn btn-outline btn-default" onclick="window.location.href='partner_add.aspx'" title="新增类别">
                                        <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                                    </button>
                                    <button id="deliver" type="button" class="btn btn-outline btn-default" title="修改类别">
                                        <i class="glyphicon glyphicon-edit" aria-hidden="true"></i>
                                    </button>
                                     <button type="button" class="btn btn-outline btn-default" id="del_btn" title="删除类别">
                                        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                                    </button>
                                </div>

                            </div>
                            </div>
                            <div class="col-sm-6">
                            <div class="columns columns-right btn-group pull-right">
                                <button id="query" class="btn btn-default btn-outline" type="button" name="query" title="查询"><i class="glyphicon glyphicon-search"></i></button>
                                <button id="refresh" class="btn btn-default btn-outline" type="button" name="refresh" title="刷新"><i class="glyphicon glyphicon-repeat"></i></button>
                                <div class="keep-open btn-group" title="列">
                                    <button type="button" class="btn btn-default btn-outline dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-list"></i> <span class="caret"></span></button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><label><input data-field="id" value="1" checked="checked" type="checkbox"> ID</label></li>
                                        <li><label><input data-field="name" value="2" checked="checked" type="checkbox"> 单号</label></li>
                                        <li><label><input data-field="price" value="3" checked="checked" type="checkbox"> 用户</label></li>
                                        <li><label><input data-field="price" value="4" checked="checked" type="checkbox"> 状态</label></li>
                                        <li><label><input data-field="price" value="5" checked="checked" type="checkbox"> 快递公司</label></li>
                                        <li><label><input data-field="price" value="6" checked="checked" type="checkbox"> 快递单号</label></li>
                                        <li><label><input data-field="price" value="7" checked="checked" type="checkbox"> 金额</label></li>
                                        <li><label><input data-field="price" value="8" checked="checked" type="checkbox"> 日期</label></li>
                         
                                    </ul>

                                </div>

                            </div>
                            <div class="pull-right search"><input id="qry_show_txt" class="form-control input-outline" placeholder="搜索" type="text"></div>
                            <div style="display:none"><input id="qry_txt" name="qry_txt" type="text" value=""><input id="qry_pg" name="qry_pg" type="text" value="1"></div>
                            </div>
                            </div>
                        </div>
                        <div id ="tbl_list" runat="server">
                        <table class="table table-striped table-bordered table-hover  dataTable" id="editable" aria-describedby="editable_info">
                            <thead>
                                <tr role="row">
                                <th class="sorting_asc" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="编号：激活排序列升序" style="width: 164px;">编号</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="订单号：激活排序列升序" style="width: 294px;">订单号</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="用户名：激活排序列升序" style="width: 275px;">用户名</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="状态：激活排序列升序" style="width: 118px;">状态</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="送货方式：激活排序列升序" style="width: 118px;">送货方式</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="金额：激活排序列升序" style="width: 118px;">金额</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="时间：激活排序列升序" style="width: 118px;">时间</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr class="gradeA odd">
                                    <td class="auto-style1">
                                    <div class="checkbox i-checks">
                                        <label class="">
                                            <div style="position: relative;" class="icheckbox_square-green">
                                                <input style="position: absolute; opacity: 0;" value="" type="checkbox">
                                                <ins style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" class="iCheck-helper">

                                                </ins>

                                            </div> <i></i> 选项1</label>
                                    </div>
                                    </td>
                                    <td class="auto-style1">Firefox 1.0</td>
                                    <td class="auto-style1">Win 98+ / OSX.2+</td>
                                    <td class="auto-style1">1.7</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                </tr>
                                <tr class="gradeA even">
                                    <td class="sorting_1">Gecko</td>
                                    <td class=" ">Firefox 1.5</td>
                                    <td class=" ">Win 98+ / OSX.2+</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                </tr>
                                <tr class="gradeA odd">
                                    <td class="sorting_1">Gecko</td>
                                    <td class=" ">Firefox 2.0</td>
                                    <td class=" ">Win 98+ / OSX.2+</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                </tr>
                                <tr class="gradeA even">
                                    <td class="sorting_1">Gecko</td>
                                    <td class=" ">Firefox 3.0</td>
                                    <td class=" ">Win 2k+ / OSX.3+</td>
                                    <td class="center ">1.9</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                </tr>
                                <tr class="gradeA odd">
                                    <td class="sorting_1">Gecko</td>
                                    <td class=" ">Camino 1.0</td>
                                    <td class=" ">OSX.2+</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                </tr>
                                <tr class="gradeA even">
                                    <td class="sorting_1">Gecko</td>
                                    <td class=" ">Camino 1.5</td>
                                    <td class=" ">OSX.3+</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                </tr>
                                <tr class="gradeA odd">
                                    <td class="sorting_1">Gecko</td>
                                    <td class=" ">Netscape 7.2</td>
                                    <td class=" ">Win 95+ / Mac OS 8.6-9.2</td>
                                    <td class="center ">1.7</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                </tr>
                                <tr class="gradeA even">
                                    <td class="sorting_1">Gecko</td>
                                    <td class=" ">Netscape Browser 8</td>
                                    <td class=" ">Win 98SE+</td>
                                    <td class="center ">1.7</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                </tr>
                                <tr class="gradeA odd">
                                    <td class="sorting_1">Gecko</td>
                                    <td class=" ">Netscape Navigator 9</td>
                                    <td class=" ">Win 98+ / OSX.2+</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                </tr>
                                <tr class="gradeA even">
                                    <td class="sorting_1">Gecko</td>
                                    <td class=" ">Mozilla 1.0</td>
                                    <td class=" ">Win 95+ / OSX.1+</td>
                                    <td class="center ">1</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th rowspan="1" colspan="1">编号</th>
                                    <th rowspan="1" colspan="1">订单号</th>
                                    <th rowspan="1" colspan="1">用户名</th>
                                    <th rowspan="1" colspan="1">状态</th>
                                    <th rowspan="1" colspan="1">送货方式</th>
                                    <th rowspan="1" colspan="1">金额</th>
                                    <th rowspan="1" colspan="1">时间</th>
                                </tr>
                            </tfoot>
                        </table>
                        <div class="row"><div class="col-sm-6"><div aria-relevant="all" aria-live="polite" role="alert" id="editable_info" class="dataTables_info">显示 1 到 10 项，共 57 项</div></div><div class="col-sm-6"><div id="editable_paginate" class="dataTables_paginate paging_simple_numbers"><ul class="pagination"><li id="editable_previous" tabindex="0" aria-controls="editable" class="paginate_button previous disabled"><a href="#">上一页</a></li><li tabindex="0" aria-controls="editable" class="paginate_button active"><a href="#">1</a></li><li tabindex="0" aria-controls="editable" class="paginate_button "><a href="#">2</a></li><li tabindex="0" aria-controls="editable" class="paginate_button "><a href="#">3</a></li><li tabindex="0" aria-controls="editable" class="paginate_button "><a href="#">4</a></li><li tabindex="0" aria-controls="editable" class="paginate_button "><a href="#">5</a></li><li tabindex="0" aria-controls="editable" class="paginate_button "><a href="#">6</a></li><li id="editable_next" tabindex="0" aria-controls="editable" class="paginate_button next"><a href="#">下一页</a></li></ul></div></div></div>
                        
                        </div>

                      
                    </div>
               </div>
                
            </div>
        </div>
        </form>
    </div>
    
    <script>
        $(document).ready(function () { $(".i-checks").iCheck({ checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green", }) });
        
      
        
    </script>
    
</body>

</html>
