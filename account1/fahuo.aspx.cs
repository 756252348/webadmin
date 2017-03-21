using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_fahuo : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["id"];
            if (id == null)
            {
                
            }
            int nid = 0;
           nid = Convert.ToInt32(id);
         
            
            list.InnerHtml = Common.createHtmlTabless(0, new string[] { "品名", "数量", "价格" }, new string[] { },db.ExecuteDatatable("select * from View_orderdetail where Oid="+nid.ToString()), false, new int[] { },false,0,0,0,1,0);
        }
    }

    protected void btLogin_Click(object sender, EventArgs e)
    {
          
        DataTable a = db.ExecuteDatatable(new string[] { Request.QueryString["id"], Request.Form["express"], Request.Form["expresscode"] });
        if (a.Rows[0][0].ToString() == "1000") { MessageBox.Show("成功");
            object[] obj = new object[10];
            obj = db.C_Proc_Select(new string[] { "0", "19", Request.QueryString["id"] }, 10);
            new wxapi.WXToolsHelper().MessageFH(obj[3].ToString(), "订单编号：" + obj[0].ToString(), obj[1].ToString(), obj[2].ToString(), "姓名：" + obj[4].ToString() + "电话：" + obj[9].ToString() + "配送地址：" + obj[5].ToString() + obj[6].ToString() + obj[7].ToString() + obj[8].ToString());
            Response.Redirect("orderlist.aspx");
        } else { MessageBox.Show(a.Rows[0][1].ToString()); }
            
    }
}