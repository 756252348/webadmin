﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_news_list1 : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ArrayList listParams = new ArrayList();
            listParams.Add("1");
            listParams.Add("99999999");
            listParams.Add("ID,Title,Type,AddDate,Intro");
            listParams.Add("news_info1");
            listParams.Add("1=1 and Tag=0");
            listParams.Add("id");
            listParams.Add("");
            listParams.Add("");
            listParams.Add("");
            tbl_list.InnerHtml = db.createHtmlTables(1, new string[] { "编号", "标题", "分类", "日期", "摘要" }, new string[] { }, listParams, "a_out_PageList", false, new int[] { }, true, 0, 0);
            //  tbl_list.InnerHtml = db.createHtmlTables(1, new string[] { "编号", "产品"  }, new string[] {"商品详情" }, listParams, "a_out_PageList", false, new int[] { }, true, 0, 0);
        }
    }
}