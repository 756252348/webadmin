<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order_print.aspx.cs" Inherits="Account_order_print" %>

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
    <style media="print" type="text/css">
        .noprint {
            display: none;
        }

    </style>
    <script> 
        function CopyTable(editable) {
            //整个表格拷贝到EXCEL中        
            var curTbl = document.getElementById(editable);
            var oXL = new ActiveXObject("Excel.Application");       
            //创建AX对象excel        
            var oWB = oXL.Workbooks.Add();       
            //获取workbook对象        
            var oSheet = oWB.ActiveSheet;           
            //激活当前sheet        
            var sel = document.body.createTextRange();       
            sel.moveToElementText(curTbl);       
            //把表格中的内容移到TextRange中       
            sel.select();       
            //全选TextRange中内容       
            sel.execCommand("Copy");       
            //复制TextRange中内容       
            oSheet.Paste();        
            //粘贴到活动的EXCEL中             
            oXL.Visible = true;       
            //设置excel可见属性  
        }
    </script>
</head>
<body class="gray-bg">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                
                <div class="ibox-content">
     
                    
                    <div id="editable_wrapper" class="dataTables_wrapper form-inline" role="grid">
                        
                        <div id ="tbl_list" runat="server">
                        <table class="table table-striped table-bordered table-hover  dataTable" id="editable" aria-describedby="editable_info">
                            <thead>
                                <tr role="row">
                                <th class="sorting_asc" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="编号：激活排序列升序" style="width: 164px;">订单编号</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="物流公司：激活排序列升序" style="width: 294px;">物流公司</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="物流运单号：激活排序列升序" style="width: 275px;">物流运单号</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="发件姓名：激活排序列升序" style="width: 118px;">发件姓名</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="发件手机：激活排序列升序" style="width: 118px;">发件手机</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="发件省：激活排序列升序" style="width: 118px;">发件省</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="发件详细地址：激活排序列升序" style="width: 118px;">发件详细地址</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="收件人姓名：激活排序列升序" style="width: 118px;">收件人姓名</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="收件人手机：激活排序列升序" style="width: 118px;">收件人手机</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="收件人省：激活排序列升序" style="width: 118px;">收件人省</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="收件人市：激活排序列升序" style="width: 118px;">收件人市</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="收件人所在区县：激活排序列升序" style="width: 118px;">收件人所在区县</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="收件人详细地址：激活排序列升序" style="width: 118px;">收件人详细地址</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="订单物品：激活排序列升序" style="width: 118px;">订单物品</th>
                                <th class="sorting" tabindex="0" aria-controls="editable" rowspan="1" colspan="1" aria-label="下单时间：激活排序列升序" style="width: 118px;">下单时间</th>
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
                                    <td class="auto-style1">1233</td>
                                    <td class="auto-style1">132123</td>
                                    <td class="auto-style1">1.7</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>

                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>

                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
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
                                    <td class=" ">Firefox 1.5</td>
                                    <td class=" ">Win 98+ / OSX.2+</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>

                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
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
                                    <td class=" ">Firefox 2.0</td>
                                    <td class=" ">Win 98+ / OSX.2+</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>

                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
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
                                    <td class=" ">Firefox 3.0</td>
                                    <td class=" ">Win 2k+ / OSX.3+</td>
                                    <td class="center ">1.9</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>

                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
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
                                    <td class=" ">Camino 1.0</td>
                                    <td class=" ">OSX.2+</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>

                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
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
                                    <td class=" ">Camino 1.5</td>
                                    <td class=" ">OSX.3+</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>

                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
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
                                    <td class=" ">Netscape 7.2</td>
                                    <td class=" ">Win 95+ / Mac OS 8.6-9.2</td>
                                    <td class="center ">1.7</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>

                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
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
                                    <td class=" ">Netscape Browser 8</td>
                                    <td class=" ">Win 98SE+</td>
                                    <td class="center ">1.7</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>

                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
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
                                    <td class=" ">Netscape Navigator 9</td>
                                    <td class=" ">Win 98+ / OSX.2+</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    <td class="center ">1.8</td>
                                    <td class="center ">A</td>
                                    
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>

                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                    <td class="auto-style1">A</td>
                                </tr>
                                
                            </tbody>
                            
                        </table>
                        <div class="row"><div class="col-sm-6"><div aria-relevant="all" aria-live="polite" role="alert" id="editable_info" class="dataTables_info">显示 1 到 10 项，共 57 项</div></div><div class="col-sm-6"><div id="editable_paginate" class="dataTables_paginate paging_simple_numbers"><ul class="pagination"><li id="editable_previous" tabindex="0" aria-controls="editable" class="paginate_button previous disabled"><a href="#">上一页</a></li><li tabindex="0" aria-controls="editable" class="paginate_button active"><a href="#">1</a></li><li tabindex="0" aria-controls="editable" class="paginate_button "><a href="#">2</a></li><li tabindex="0" aria-controls="editable" class="paginate_button "><a href="#">3</a></li><li tabindex="0" aria-controls="editable" class="paginate_button "><a href="#">4</a></li><li tabindex="0" aria-controls="editable" class="paginate_button "><a href="#">5</a></li><li tabindex="0" aria-controls="editable" class="paginate_button "><a href="#">6</a></li><li id="editable_next" tabindex="0" aria-controls="editable" class="paginate_button next"><a href="#">下一页</a></li></ul></div></div></div>
                        </div>
                        <input class="noprint" type="button" value="打印订单" onclick="javascript:window.print()">
                        <input class="outexc" type="button" value="导出订单" onclick="CopyTable()"/>
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
