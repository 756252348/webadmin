using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Banner_list1 : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string qryStr = Request.Form["qry_txt"];
            string qryPage = Request.Form["qry_pg"];
            if (string.IsNullOrEmpty(qryPage)) { qryPage = "1"; }
            ArrayList listParams = new ArrayList();
            listParams.Add(qryPage);
            listParams.Add("10");
            listParams.Add("id,name,addtime");
            listParams.Add("Banner1");
            //listParams.Add("1=1");
            if (String.IsNullOrEmpty(qryStr)) { listParams.Add("1=1 and tag=0"); } else { listParams.Add("codeno like '%" + qryStr + "%'"); }
            listParams.Add("id desc");
            listParams.Add("");
            listParams.Add("");
            listParams.Add("");
            tbl_list.InnerHtml = db.createHtmlTables(0, new string[] { "编号", "名称", "修改时间" }, new string[] { }, listParams, "a_out_PageList", false, new int[] { }, true, 0, 0);



        }
    }
}