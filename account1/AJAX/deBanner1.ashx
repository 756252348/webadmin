﻿<%@ WebHandler Language="C#" Class="deBanner1" %>

using System;
using System.Web;
using System.Collections; 
public class deBanner1 : IHttpHandler {

    DBHelper db = new DBHelper();
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        string cashId = context.Request.Form["cashId"];

        ArrayList listParamss = new ArrayList();
        listParamss.Add(cashId);

        if (db.ExecProcRltJson("a_in_delBanner1", listParamss).IndexOf("1000") > 0)
        {
            context.Response.Write("1000");
        }
        else
        {
            context.Response.Write("1001");
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}