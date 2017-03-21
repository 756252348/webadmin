<%@ WebHandler Language="C#" Class="ExcelList" %>

using System;
using System.Web;
using System.Data;
using System.Collections;

public class ExcelList : IHttpHandler
{

    DBHelper db = new DBHelper();
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";

        //登录检测
        if (Authority.GetRoleID(context) == "0")
        {
            context.Response.ContentType = "text/html";
            context.Response.Write("<script>alert('非法操作')</script>");
            return;
        }

        string dataType = string.Empty, json = string.Empty, result = "1001";
        ///返回的参数数组,用在分页函数里
        string[] dataList = new string[3];
        ///接受数据是get还是post 
        if (context.Request.HttpMethod == "GET") { dataType = context.Request.QueryString["dataType"]; }//从页面到后端获取数据的方法  get post
        else if (context.Request.HttpMethod == "POST") { dataType = context.Request.Form["dataType"]; }// parms=context.Request.Form.GetValues("parms[]");}
        DataTable dt;                                                                                  ///接受过来的参数是以数组的形式
        string[] parms = context.Request.Params.GetValues("parms[]");

        switch (dataType)
        {
            case "order":
                dt = db.QueryDataRltRcrd("a_out_orderExport", new ArrayList()).Tables[0];
                CreateExcel(context, dt,"快递订单");
                break;
        }

        context.Response.Write(json);
    }
    public void CreateExcel(HttpContext context, DataTable dt,string name )
    { HttpResponse resp;
        resp = context.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.ContentType   =   "application/vnd.ms-excel";
        resp.AppendHeader("Content-Disposition", "attachment;filename="+name+"-"+DateTime.Now.ToString("yyyyMMdd")+".xls");
        //context.Response.ContentEncoding =System.Text.Encoding.GetEncoding("GB2312");//设置编码格式
        //context.Response.ContentType="application/vnd.ms-excel";//设置输入类型为Excel文件，指定返回的是一个不能被客户端读取的流，必须被下载
        //context.Response.AddHeader("Content-Disposition", "attachment;filename=Test.xls");//添加Http表头，将文件保存为Test.xls
        string colHeaders = "", ls_item = "";

        //定义表对象与行对象，同时用DataSet对其值进行初始化
        //DataTable dt = ds.Tables[0];
        DataRow[] myRow = dt.Select();//可以类似dt.Select("id>10")之形式达到数据筛选目的
        int i = 0;
        int cl = dt.Columns.Count;

        //取得数据表各列标题，各标题之间以t分割，最后一个列标题后加回车符
        for (i = 0; i < cl; i++)
        {
            if (i == (cl - 1))//最后一列，加n
            {
                colHeaders += dt.Columns[i].Caption.ToString() + "\n";
            }
            else
            {
                colHeaders += dt.Columns[i].Caption.ToString() + "\t";
            }

        }
        resp.Write(colHeaders);
        //向HTTP输出流中写入取得的数据信息

        //逐行处理数据  
        foreach (DataRow row in myRow)
        {
            //当前行数据写入HTTP输出流，并且置空ls_item以便下行数据    
            for (i = 0; i < cl; i++)
            {
                if (i == (cl - 1))//最后一列，加n
                {
                    ls_item += row[i].ToString() + "\n";
                }
                else
                {
                    ls_item += row[i].ToString() + "\t";
                }

            }
            resp.Write(ls_item);
            ls_item = "";

        }
        resp.End();
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}