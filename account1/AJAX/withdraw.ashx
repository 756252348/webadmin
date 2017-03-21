<%@ WebHandler Language="C#" Class="withdraw" %>

using System;
using System.Web;
using wxapi;
using System.Net;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.IO;
using System.Xml;
using System.Data;
using System.Collections;

public class withdraw : IHttpHandler {
    DBHelper db = new DBHelper();
    public String appId = TenpayUtil.appid;
    public String timeStamp = "";
    public String nonceStr = "";
    public String packageValue = "";
    public String paySign = "";
    public String Mchid = TenpayUtil.Mchid;

    public static String OID = "";//提现订单
    public static string openid = "0";//会员表的Openid
    public static String momey = "0";//提现金额

    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        nonceStr = TenpayUtil.getNoncestr();
        timeStamp = TenpayUtil.getTimestamp();
        RequestHandler rh = new RequestHandler(context);

        string cashId = context.Request.Form["cashId"];
        ArrayList listParams = new ArrayList();
        listParams.Add(cashId);
        DataTable dt = db.QueryDataRltRcrd("s_sys_getCashInfo",listParams).Tables[0];
        OID = dt.Rows[0][0].ToString();
        openid = dt.Rows[0][1].ToString();
        momey = dt.Rows[0][2].ToString();

        string sp_billno = OID == "0" ? DateTime.Now.ToString("yyyyMMddhhmmssfffff") : OID;
        rh.init();
        //rh.setKey(TenpayUtil.key);
        rh.setParameter("mch_appid", appId);
        //rh.setParameter("body", "衢州秘玛贸易有限责任公司");
        rh.setParameter("mchid", Mchid);
        rh.setParameter("nonce_str", nonceStr);
        rh.setParameter("partner_trade_no", sp_billno);
        rh.setParameter("check_name", "NO_CHECK");
        rh.setParameter("spbill_create_ip", Common.GetRemoteIp());
        rh.setParameter("amount", momey.ToString());
        rh.setParameter("desc", "提现");
        rh.setParameter("openid", openid);
        string Sign = rh.createMd5Signs(TenpayUtil.appkey);
        string Param = "<xml>" +
           "<mch_appid>" + appId + "</mch_appid>" +
           "<check_name>" + "NO_CHECK" + "</check_name>" +
           "<mchid>" + Mchid + "</mchid>" +
           "<nonce_str>" + nonceStr + "</nonce_str>" +
           "<sign>" + Sign + "</sign>" +
           "<partner_trade_no>" + sp_billno + "</partner_trade_no>" +
           "<amount>" + momey.ToString() + "</amount>" +
           "<spbill_create_ip>" + Common.GetRemoteIp() + "</spbill_create_ip>" +
           "<desc>提现</desc>" +
           "<openid>" + openid + "</openid>" +
            "</xml>";
        WXToolsHelper.Write("Param: " + Param);
        string res = webRequestPost("https://api.mch.weixin.qq.com/mmpaymkttransfers/promotion/transfers", Param, "Post", @"F:\cert\ql\apiclient_cert.p12", Mchid);
        WXToolsHelper.Write(res);
        XmlDocument doc = new XmlDocument();
        doc.LoadXml(res);
        XmlElement rootElement = doc.DocumentElement;
        string Status = rootElement.SelectSingleNode("return_code").InnerText;
        string Status2 = rootElement.SelectSingleNode("result_code").InnerText;
        if (Status == "SUCCESS" && Status2 == "SUCCESS")
        {
            //执行成功的提现方法 
            ArrayList listParamss = new ArrayList();
            listParamss.Add(cashId);
            listParamss.Add("1");
            if (db.ExecProcRltJson("a_in_cewithdraw", listParamss).IndexOf("1000") > 0)
            {
                context.Response.Write("1000");
            }
            else {
                context.Response.Write("1001");
            }
        }
        else
        {
            context.Response.Write(rootElement.SelectSingleNode("err_code_des").InnerText);
        }
    }
    public string webRequestPost(string url, string param, string Method, string cert, string password)
    {
        byte[] bs = System.Text.Encoding.UTF8.GetBytes(param);
        ServicePointManager.ServerCertificateValidationCallback = new RemoteCertificateValidationCallback(CheckValidationResult);

        X509Certificate2 cer = new X509Certificate2(cert, password, X509KeyStorageFlags.PersistKeySet | X509KeyStorageFlags.MachineKeySet);
        HttpWebRequest req = (HttpWebRequest)HttpWebRequest.Create(url);
        req.ClientCertificates.Add(cer);
        req.Method = Method;
        req.Timeout = 120 * 1000;

        req.ContentLength = bs.Length;
        using (Stream reqStream = req.GetRequestStream())
        {
            reqStream.Write(bs, 0, bs.Length);
            reqStream.Flush();
        }
        using (WebResponse wr = req.GetResponse())
        {
            //在这里对接收到的页面内容进行处理 

            Stream strm = wr.GetResponseStream();

            StreamReader sr = new StreamReader(strm, System.Text.Encoding.UTF8);

            string line;

            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            while ((line = sr.ReadLine()) != null)
            {
                sb.Append(line + System.Environment.NewLine);
            }
            sr.Close();
            strm.Close();
            return sb.ToString();
        }
    }
    private static bool CheckValidationResult(object sender, X509Certificate certificate, X509Chain chain, SslPolicyErrors errors)
    {
        if (errors == SslPolicyErrors.None)
            return true;
        return false;
    }
    public bool IsReusable {
        get {
            return false;
        }
    }

}