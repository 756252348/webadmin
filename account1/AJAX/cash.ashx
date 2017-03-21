<%@ WebHandler Language="C#" Class="cash" %>

using System;
using System.Web;
using System.Collections;
public class cash : IHttpHandler {
    DBHelper db = new DBHelper();
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");
        string cashId = context.Request.Form["cashId"];
        ArrayList listParamss = new ArrayList();
        listParamss.Add(cashId);
        listParamss.Add("2");
        if (db.ExecProcRltJson("a_in_cewithdraw", listParamss).IndexOf("1000") > 0)
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