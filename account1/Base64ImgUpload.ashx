<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.IO;
using System.Drawing;
using System.Configuration;
using System.Drawing.Imaging;

public class Handler : IHttpHandler
{
    #region 调用Js代码
    /*
    <script src="../JS/localResizeIMG2.js"></script>
    
    //初始化操作
    $('#upload_image').localResizeIMG({
        //width: 480,//缩略图宽度
        quality: 1,//图片质量，0—1，越大越好
        success: function (result,_this) {
            //result.base64:带图片类型的base64编码，可直接用于img标签的src
            //result.clearBase64:不带图片类型的编码
            //_this:当前绑定对象
            //console.log(result);
            base64uploadimg(result.clearBase64);
        }
    }); 
     
    //上传图片 imgs:[数组/以'|'分割字符串] _this:[可选对象]
    function base64uploadimg(imgs,_this) {
        var _imgs = '';
        if (typeof (imgs) == 'object') {
            _imgs = imgs.join('|');
        } else if (typeof (imgs) == 'string') {
            _imgs = imgs;
        }
        $.ajax({
            type: 'post',
            url: '/ajax/Base64ImgUpload.ashx',
            data: { base64imgs: _imgs },
            cache: true,
            dataType: "json",
            async: true,
            beforesend: function () { },
            success: function (data) {
                if (data) {
                    //{data0:"1000",data1:"[以'|'分割的文件名]"}
                    //{data0:"1001",data1:"未执行操作"}
                    //{data0:"1002",data1:"数据传输错误"}
                    //{data0:"1003",data1:"上传图片时错误"}
                    console.log(data);
                }
            },
            error: function () { }
        });
    }
    */

    //Web.config配置appSettings
    //<add key="imgUpload" value="~/UploadFile/images/"/><!--图片上传地址-->
    
    //返回MD5.png
    #endregion

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";

        #region star

        string json = "{\"data0\":\"1001\",\"data1\":\"未执行操作\"}";

        //存储Base64图片信息
        string base64content = context.Request.Form["base64imgs"];

        if (!String.IsNullOrEmpty(base64content))
        {
            bool flag = false;//错误标识
            string resultName = "";
            string saveDataPic = "";
            string[] pics = base64content.Split('|');//图片Base64数组
            foreach (string pic in pics)
            {
                if (!Base64StringToImage(context, pic, out resultName))
                {
                    flag = true;
                    json = "{\"data0\":\"1003\",\"data1\":\"上传图片时错误\"}";
                    break;
                }
                else
                {
                    saveDataPic += resultName + ",";
                }
            }
            if (!String.IsNullOrEmpty(saveDataPic))
            {
                saveDataPic = saveDataPic.Substring(0, saveDataPic.Length - 1);
            }

            if (!flag)
            {
                json = "{\"data0\":\"1000\",\"data1\":\"" + saveDataPic + "\"}";
            }
        }
        else
        {
            json = "{\"data0\":\"1002\",\"data1\":\"数据传输错误\"}";
        }


        #endregion
        context.Response.Write(json);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

    /// <summary>
    /// base64编码的文本 转为    图片
    /// </summary>
    /// <param name="context">HttpContent</param>
    /// <param name="inputStr">输入的Base64</param>
    /// <param name="resultName">输出的文件名</param>
    /// <returns></returns>
    public static bool Base64StringToImage(HttpContext context, string inputStr, out string resultName)
    {
        try
        {
            byte[] arr = Convert.FromBase64String(inputStr);
            MemoryStream ms = new MemoryStream(arr);
            Bitmap bmp = new Bitmap(ms);

            //图片保存路径[主目录形式]
            string savePath = context.Server.MapPath(ConfigurationManager.AppSettings["imgUpload"]);
            //路径判断 不存在则创建
            if (!Directory.Exists(savePath))
            {
                Directory.CreateDirectory(savePath);
            }

            string saveName = md5(DateTime.Now.ToString("yyMMddhhmmssffff")) + ".png";

            if (File.Exists(savePath + saveName))
            {
                saveName = md5(saveName + DateTime.Now.Ticks) + ".png";
            }

            resultName = saveName;
            bmp.MakeTransparent(Color.White);
            bmp.Save(savePath + saveName, ImageFormat.Png);
            ms.Close();
            bmp.Dispose();
            return true;
        }
        catch (Exception ex)
        {
            resultName = "";
            return false;
        }
    }

    #region 不可逆MD5加密
    /// <summary>
    /// MD5加密
    /// </summary>
    /// <param name="str">加密字符</param>
    /// <param name="code">加密位数16/32</param>
    /// <returns></returns>
    public static string md5(string str)
    {
        return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5").ToUpper();
    }
    #endregion

}