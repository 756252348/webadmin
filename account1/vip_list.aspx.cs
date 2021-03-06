﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_vip_list : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {        
        if (!Page.IsPostBack)
        {
            string qryStr = Request.Form["qry_txt"];
            string qryPage = Request.Form["qry_pg"]; //MessageBox.Show(qryPage);
            if (string.IsNullOrEmpty(qryPage)) { qryPage = "1"; }
            ArrayList listParams = new ArrayList();
            listParams.Add(qryPage);
            listParams.Add("10");
            listParams.Add("id,Account,type,AddTime");
            listParams.Add("user_info");
            if (String.IsNullOrEmpty(qryStr)) { listParams.Add("1=1"); } else { listParams.Add("NickName like '%"+qryStr+"%'"); }
            listParams.Add("id desc");
            listParams.Add("");
            listParams.Add("");
            listParams.Add("");
            tbl_list.InnerHtml = db.createHtmlTables(0, new string[] { "编号","帐号","用户类型","注册时间"}, new string[] { }, listParams, "a_out_PageList", false, new int[] { }, true, 0,0);
        }
    }
}