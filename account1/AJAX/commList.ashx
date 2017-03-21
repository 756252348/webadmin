<%@ WebHandler Language="C#" Class="commList" %>

using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Collections.Generic;

public class commList : IHttpHandler {

    DBHelper db = new DBHelper();

    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        context.Response.Write(getUserListData());
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

    private string getUserListData() {
        ArrayList listParams = new ArrayList();
        listParams.Add("1");
        listParams.Add("10");
        listParams.Add("id,codeno,uid,states,sends,paytype,recid,deliverid,deliverno,odrmny,adddate");
        listParams.Add("order_info");
        listParams.Add("1=1");
        listParams.Add("id");
        listParams.Add("");
        listParams.Add("");
        listParams.Add("");
            return "";
        //return db.createHtmlTables(0, new string[] { "编号", "单号", "用户", "状态", "送货", "支付", "物流", "物流号", "金额", "日期" }, listParams, "a_out_PageList", false, new int[] { }, true);

    }

}