﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="withdrawList.aspx.cs" Inherits="Account_withdrawList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>今点后台商城管理系统-提现列表</title>
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

            $("#cashCheck").click(function () {
                $.ajax({
                    url: "ajax/withdraw.ashx",
                    type: "POST",
                    async: true,
                    data: { cashId: $(".checked").eq(0).parent().parent().parent().text() },
                    cache: true,
                    dataType: "html",
                    beforeSend: function () { },
                    success: function (dt) {
                        if (dt == "1000") { alert("审核成功"); } else { alert("审核失败"); }
                    },
                    error: function () { }
                });
            })

            $("#cashRefuse").click(function () {
                $.ajax({
                    url: "ajax/cash.ashx",
                    type: "POST",
                    async: true,
                    data: { cashId: $(".checked").eq(0).parent().parent().parent().text() },
                    cache: true,
                    dataType: "html",
                    beforeSend: function () { },
                    success: function (dt) {
                        if (dt == "1000") { alert("拒绝成功"); } else { alert("拒绝失败"); }
                    },
                    error: function () { }
                });
            })
            
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
                                    <button id="cashCheck" type="button" class="btn btn-outline btn-default" title="审核">
                                        <i class="glyphicon glyphicon-check" aria-hidden="true"></i>
                                    </button>
                                    <button id="cashRefuse" type="button" class="btn btn-outline btn-default" title="拒绝">
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
                                        <li><label><input data-field="name" value="2" checked="checked" type="checkbox"> 用户</label></li>
                                        <li><label><input data-field="price" value="3" checked="checked" type="checkbox"> 单号</label></li>
                                        <li><label><input data-field="price" value="4" checked="checked" type="checkbox"> 金额</label></li>
                                        <li><label><input data-field="price" value="5" checked="checked" type="checkbox"> 时间</label></li>
                                        
                                        <li><label><input data-field="price" value="7" checked="checked" type="checkbox"> 状态</label></li>
                                        
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
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="商品名称：激活排序列升序" style="width: 200px;">商品名称</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="商品图片：激活排序列升序" style="width: 294px;">商品图片</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="所属用户：激活排序列升序" style="width: 118px;">所属用户</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="收藏人数：激活排序列升序" style="width: 118px;">收藏人数</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="是否显示：激活排序列升序" style="width: 118px;">是否显示</th>
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
                                    <td class="auto-style1">A</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                </tr>
                                <tr class="gradeA even">
                                    <td class="auto-style1">
                                    <div class="checkbox i-checks">
                                        <label class="">
                                            <div style="position: relative;" class="icheckbox_square-green">
                                                <input style="position: absolute; opacity: 0;" value="" type="checkbox">
                                                <ins style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" class="iCheck-helper">

                                                </ins>

                                            </div> <i></i> 选项2</label>
                                    </div>
                                    </td>
                                    <td class="center ">A</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                </tr>
                                <tr class="gradeA odd">
                                    <td class="auto-style1">
                                    <div class="checkbox i-checks">
                                        <label class="">
                                            <div style="position: relative;" class="icheckbox_square-green">
                                                <input style="position: absolute; opacity: 0;" value="" type="checkbox">
                                                <ins style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" class="iCheck-helper">

                                                </ins>

                                            </div> <i></i> 选项3</label>
                                    </div>
                                    </td>
                                    <td class="center ">A</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                </tr>
                                <tr class="gradeA even">
                                   <td class="auto-style1">
                                    <div class="checkbox i-checks">
                                        <label class="">
                                            <div style="position: relative;" class="icheckbox_square-green">
                                                <input style="position: absolute; opacity: 0;" value="" type="checkbox">
                                                <ins style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" class="iCheck-helper">

                                                </ins>

                                            </div> <i></i> 选项4</label>
                                    </div>
                                    </td>
                                    <td class="center ">A</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                </tr>
                                <tr class="gradeA odd">
                                   <td class="auto-style1">
                                    <div class="checkbox i-checks">
                                        <label class="">
                                            <div style="position: relative;" class="icheckbox_square-green">
                                                <input style="position: absolute; opacity: 0;" value="" type="checkbox">
                                                <ins style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" class="iCheck-helper">

                                                </ins>

                                            </div> <i></i> 选项5</label>
                                    </div>
                                    </td>
                                    <td class="center ">A</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                </tr>
                                <tr class="gradeA even">
                                    <td class="auto-style1">
                                    <div class="checkbox i-checks">
                                        <label class="">
                                            <div style="position: relative;" class="icheckbox_square-green">
                                                <input style="position: absolute; opacity: 0;" value="" type="checkbox">
                                                <ins style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" class="iCheck-helper">

                                                </ins>

                                            </div> <i></i> 选项6</label>
                                    </div>
                                    </td>
                                    <td class="center ">A</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                </tr>
                                <tr class="gradeA odd">
                                    <td class="auto-style1">
                                    <div class="checkbox i-checks">
                                        <label class="">
                                            <div style="position: relative;" class="icheckbox_square-green">
                                                <input style="position: absolute; opacity: 0;" value="" type="checkbox">
                                                <ins style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" class="iCheck-helper">

                                                </ins>

                                            </div> <i></i> 选项7</label>
                                    </div>
                                    </td>
                                    <td class="center ">A</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                </tr>
                                <tr class="gradeA even">
                                    <td class="auto-style1">
                                    <div class="checkbox i-checks">
                                        <label class="">
                                            <div style="position: relative;" class="icheckbox_square-green">
                                                <input style="position: absolute; opacity: 0;" value="" type="checkbox">
                                                <ins style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; border: 0px none; opacity: 0;" class="iCheck-helper">

                                                </ins>

                                            </div> <i></i> 选项8</label>
                                    </div>
                                    </td>
                                    <td class="center ">A</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                </tr>
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
                                    <td class="center ">A</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                </tr>
                                <tr class="gradeA even">
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
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                    <td class="center ">1</td>
                                </tr>
                            </tbody>
                            
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
