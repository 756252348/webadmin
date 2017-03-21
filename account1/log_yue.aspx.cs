using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_log_yue : System.Web.UI.Page
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
            listParams.Add("a.id,b.nickname,a.OId,a.SMoney,a.GMoney,a.NMoney,a.Remark,a.AddDate");
            listParams.Add("money_info a,user_info b");
            if (String.IsNullOrEmpty(qryStr)) { listParams.Add("a.uid=b.id"); } else { listParams.Add("a.uid=b.id and b.NickName like '%" + qryStr + "%'"); }
            //listParams.Add("1=1");
            listParams.Add("a.id");
            listParams.Add("");
            listParams.Add("");
            listParams.Add("");
            tbl_list.InnerHtml = db.createHtmlTables(0, new string[] { "编号", "用户名", "订单号", "原余额", "变动金额", "新金额", "备注", "时间" }, new string[] { }, listParams, "a_out_PageList", false, new int[] { }, false, 0, 0);
        }
    }
}