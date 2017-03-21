﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_public_set : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        ArrayList listParams = new ArrayList();
        listParams.Add("1");
        listParams.Add("");
        form_lists.InnerHtml = db.createFormBill(new int[] { 0,0,0,0,0 }, new string[] { "商户ID","商户密钥","APPID","APPKEY","接收地址" }, listParams, "a_out_sglList", null);
    }

    protected void btLogin_Click(object sender, EventArgs e)
    {
        ArrayList listParams = new ArrayList();
        if (db.getPostFormValues(Request,ref listParams))
        {
            String srlt = db.ExecProcRltJson("a_in_UpdtWXPubEx", listParams);

            if (srlt.IndexOf("1000") > 0)
            {
                MessageBox.Show("保存成功");
            }
            else
            {
                MessageBox.Show("保存失败");
            }
        }
        else {
            MessageBox.Show("请检查您的输入项是否有空值");
        }
    }
}