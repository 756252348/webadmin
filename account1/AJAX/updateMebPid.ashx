<%@ WebHandler Language="C#" Class="updateMebPid" %>

using System;
using System.Web;
using System.Collections;
public class updateMebPid : IHttpHandler {
    DBHelper db = new DBHelper();
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string pId = context.Request.Form["pId"];
        string uId = context.Request.Form["uId"];
        ArrayList listParamss = new ArrayList();
        listParamss.Add(uId);
        listParamss.Add(pId);
        if (db.ExecProcRltJson("a_in_updateMebParentId", listParamss).IndexOf("1000") > 0)
        {
            context.Response.Write("1000");
        }
        else {
            context.Response.Write("1001");
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}