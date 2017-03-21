<%@ Page Language="C#" AutoEventWireup="true" CodeFile="system_num.aspx.cs" Inherits="Account_system_num" %>

<!DOCTYPE html>
<html>

<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>今点后台商城管理</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/plugins/webuploader/webuploader.css">
    <link rel="stylesheet" type="text/css" href="css/demo/webuploader-demo.min.css">

</head>
<body class="gray-bg">
   
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                
                <div class="ibox-content">
                    <form runat="server" class="form-horizontal" id="sys_num">
                        <div id ="form_lists" runat="server">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">分销级别</label>

                            <div class="col-sm-10">
                                <input name="sys1" type="text" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                              是否开启积分？
                                <br>
                            </label>

                            <div class="col-sm-10">
                                
                                <div class="radio-inline">
                                    <label>
                                        <input type="radio" checked="" value="1" id="jf1" name="jf">是
                                    </label>
                                </div>
                                <div class="radio-inline">
                                    <label>
                                        <input type="radio" value="0" id="jf2" name="jf">否
                                    </label>
                                </div>
                            </div>
                        </div> 
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                开启购物车
                                <br>
                            </label>

                            <div class="col-sm-10">

                                <div class="radio-inline">
                                    <label>
                                        <input type="radio" checked="" value="1" id="sp1" name="sp">是
                                    </label>
                                </div>
                                <div class="radio-inline">
                                    <label>
                                        <input type="radio" value="0" id="sp2" name="sp">否
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                首页模版类型
                                <br>
                            </label>

                            <div class="col-sm-10">

                                <div class="radio-inline">
                                    <label>
                                        <input type="radio" checked="" value="1" id="mb1" name="mb">类型1
                                    </label>
                                </div>
                                <div class="radio-inline">
                                    <label>
                                        <input type="radio" value="0" id="mb2" name="mb">类型2
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                是否开启商品分类？
                                <br>
                            </label>
                            <div class="col-sm-10">
                                <div class="radio-inline">
                                    <label>
                                        <input type="radio" checked="" value="1" id="fl1" name="fl">是
                                    </label>
                                </div>
                                <div class="radio-inline">
                                    <label>
                                        <input type="radio" value="0" id="fl2" name="fl">否
                                    </label>
                                </div>
                            </div>
                        </div>
                        
                      
             
                                
                   
                            </div>
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
