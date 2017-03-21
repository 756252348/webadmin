using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_product_type1 : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ArrayList listParams = new ArrayList();
            listParams.Add("1");
            listParams.Add("99999999");
            listParams.Add("id,Name,salesnum,Stock,omoney,nmoney");
            listParams.Add("prdct_type_info1");
            listParams.Add("tag=0 and ParentId=" + Request.QueryString["gid"]);
            listParams.Add("id");
            listParams.Add("");
            listParams.Add("");
            listParams.Add("");
            tbl_list.InnerHtml = db.createHtmlTables(1, new string[] { "编号", "规格名" }, new string[] { "销量", "库存", "市场价(元)", "现价(元)" }, listParams, "a_out_PageList", false, new int[] { }, true, 0, 0);
        }
    }
}