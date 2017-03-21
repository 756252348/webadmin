<%@ WebHandler Language="C#" Class="proxy" %>

using System;
using System.Web;
 using System.Collections;
public class proxy : IHttpHandler {
    DBHelper db = new DBHelper();
    public void ProcessRequest (HttpContext context) {
         context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");
        string cashId = context.Request.Form["cashId"];
            string states=context.Request.Form["st"];
        ArrayList listParamss = new ArrayList();
        listParamss.Add(cashId);
        listParamss.Add(states);
        if (db.ExecProcRltJson("a_in_updateproxy", listParamss).IndexOf("1000") > 0)
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