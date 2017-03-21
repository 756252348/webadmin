using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_product_canshu_list : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ArrayList listParams = new ArrayList();
            listParams.Add("1");
            listParams.Add("99999999");
            listParams.Add("id,Name,cnt");
            listParams.Add("dbo.prdct_canshu");
            listParams.Add("1=1 and tag=0 and ParentId="+Request.QueryString["gid"]);
            listParams.Add("id");
            listParams.Add("");
            listParams.Add("");
            listParams.Add("");
            tbl_list.InnerHtml = db.createHtmlTables(0, new string[] { "编号", "参数名称" }, new string[] { "参数值" }, listParams, "a_out_PageList", false, new int[] { }, true, 0, 0);
        }
    }
}