using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_product_collection : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ArrayList listParams = new ArrayList();
            listParams.Add("1");
            listParams.Add("99999999");
            listParams.Add("id,GId,img,UId,Cnum,Isshow");
            listParams.Add("col_info");
            listParams.Add("1=1");
            listParams.Add("id");
            listParams.Add("");
            listParams.Add("");
            listParams.Add("");
            tbl_list.InnerHtml = db.createHtmlTables(0, new string[] { "编号", "商品名称", "商品图片", "所属用户", "收藏人数", "是否显示" }, new string[] { }, listParams, "a_out_PageList", false, new int[] { }, true, 0, 0);
        }
    }
}