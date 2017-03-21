<%@ Page Language="C#" AutoEventWireup="true" CodeFile="template_index.aspx.cs" Inherits="Account_template_index" %>

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
</head>
<body class="gray-bg">
    
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                
                <div class="ibox-content">
                    <form runat="server" method="get" class="form-horizontal" id="tem_idx">
                       <div id ="form_lists" runat="server">
                        <input type="text" value="0" runat="server" class="form-control" style="display:none" />
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                选择模式：
                                <br>

                            </label>

                            <div class="col-sm-10">
                                <div class="radio-inline">
                                    <label>
                                        <input type="radio" checked="" value="1" id="optionsRadios1" name="optionsRadios">单列
                                    </label>
                                </div>
                                <div class="radio-inline">
                                    <label>
                                        <input type="radio" value="0" id="optionsRadios2" name="optionsRadios">双列
                                    </label>
                                </div>
                            </div>
                        </div>
                           </div>

                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <asp:Button ID="btLogin" runat="server" class="btn btn-primary" Text="保存内容" OnClick="btLogin_Click" />
                                <button class="btn btn-white" type="submit">取消</button>
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
