using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_log_login : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {        
        if (!Page.IsPostBack)
        {
            ArrayList listParams = new ArrayList();
            listParams.Add("1");
            listParams.Add("10");
            listParams.Add("id,UId,LogDate,OutDate");
            listParams.Add("log_info");
            listParams.Add("1=1");
            listParams.Add("id");
            listParams.Add("");
            listParams.Add("");
            listParams.Add("");
            tbl_list.InnerHtml = db.createHtmlTables(0, new string[] { "编号", "用户名", "登录时间", "退出时间"}, new string[] { }, listParams, "a_out_PageList", false, new int[] { }, true, 0, 0);
        }
    }
}