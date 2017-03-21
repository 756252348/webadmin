using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_product_comment : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        string qryPage = Request.Form["qry_pg"];
        ArrayList listParams = new ArrayList();
        listParams.Add(qryPage);
        listParams.Add("10");
        listParams.Add("id,HeadImg,orderno,uName,cnt,Name,addtime");
        listParams.Add("View_cmt_info");
        listParams.Add("1=1");
        listParams.Add("id");
        listParams.Add("");
        listParams.Add("");
        listParams.Add("");
        tbl_list.InnerHtml = db.createHtmlTables(3, new string[] { }, new string[] { }, listParams, "a_out_PageList", false, new int[] { }, false, 0, 0);
    }
}