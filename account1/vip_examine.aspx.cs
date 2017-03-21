using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_vip_examine : System.Web.UI.Page
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
            listParams.Add("id,u_name,sex,tel,wechat,pro,city,county,case when states=0 then '申请中' when states=1 then '通过'  when states=2 then '拒绝' end as stateEs ,addTime");
            listParams.Add("proxy_info");
            if (String.IsNullOrEmpty(qryStr)) { listParams.Add("states=0 and tag=0"); } else { listParams.Add("id like '%" + qryStr + "%' and states=0 and tag=0"); }
            listParams.Add("id");
            listParams.Add("");
            listParams.Add("");
            listParams.Add("");
            tbl_list.InnerHtml = db.createHtmlTables(0, new string[] { "编号", "姓名", "性别", "电话","微信号", "省","市","区/县", "状态","申请时间" }, new string[] { }, listParams, "a_out_PageList", false, new int[] { }, true, 0, 0);
        }
    }
}