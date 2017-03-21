<%@ Page Language="C#" AutoEventWireup="true" CodeFile="log_jifen.aspx.cs" Inherits="Account_log_jifen" %>

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

    <style type="text/css">
        .auto-style1 {
            height: 35px;
        }
    </style>
    
</head>
<body class="gray-bg">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                
                <div class="ibox-content">
     
                    
                    <div id="editable_wrapper" class="dataTables_wrapper form-inline" role="grid">
                        <div class="row">
                        <div class="fixed-table-toolbar">
                            <div class="col-sm-6">
                            <div class="bars pull-left">
                                <div class="btn-group hidden-xs" id="exampleTableEventsToolbar" role="group">
                                    <button type="button" class="btn btn-outline btn-default">
                                        <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btn btn-outline btn-default">
                                        <i class="glyphicon glyphicon-edit" aria-hidden="true"></i>
                                    </button>
                                    <button type="button" class="btn btn-outline btn-default">
                                        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                                    </button>
                                </div>

                            </div>
                            </div>
                            <div class="col-sm-6">
                            <div class="columns columns-right btn-group pull-right">
                                <button class="btn btn-default btn-outline" type="button" name="refresh" title="刷新"><i class="glyphicon glyphicon-repeat"></i></button>
                                <button class="btn btn-default btn-outline" type="button" name="toggle" title="切换"><i class="glyphicon glyphicon-list-alt"></i></button>
                                <div class="keep-open btn-group" title="列">
                                    <button type="button" class="btn btn-default btn-outline dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-list"></i> <span class="caret"></span></button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><label><input data-field="id" value="1" checked="checked" type="checkbox"> ID</label></li>
                                        <li><label><input data-field="name" value="2" checked="checked" type="checkbox"> 名称</label></li>
                                        <li><label><input data-field="price" value="3" checked="checked" type="checkbox"> 价格</label></li>

                                    </ul>

                                </div>

                            </div>
                            <div class="pull-right search"><input class="form-control input-outline" placeholder="搜索" type="text"></div>

                            </div>
                            </div>
                        </div>
                        <div id ="tbl_list" runat="server">
                        <table class="table table-striped table-bordered table-hover  dataTable" id="editable" aria-describedby="editable_info">
                            <thead>
                                <tr role="row">
                                <th class="sorting_asc" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="编号：激活排序列升序" style="width: 164px;">编号</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="用户名：激活排序列升序" style="width: 164px;">用户名</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="类型：激活排序列升序" style="width: 164px;">类型</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="原积分：激活排序列升序" style="width: 164px;">原积分</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="变动积分：激活排序列升序" style="width: 164px;">变动积分</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="新积分：激活排序列升序" style="width: 164px;">新积分</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="备注：激活排序列升序" style="width: 164px;">备注</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="时间：激活排序列升序" style="width: 164px;">时间</th>

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
    </div>
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/content.min.js?v=1.0.0"></script>
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function () { $(".i-checks").iCheck({ checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green", }) });
        
        
    </script>
    
</body>

</html>
