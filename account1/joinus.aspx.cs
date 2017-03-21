using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class joinus : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ArrayList listParams = new ArrayList();
            listParams.Add("1");
            listParams.Add("99999999");
            listParams.Add("ID,name,tel,addtime,shen,shi,xian,address,mail,job,input1,remark");
            listParams.Add("joinus");
            listParams.Add("1=1 and tag=0");
            listParams.Add("id");
            listParams.Add("");
            listParams.Add("");
            listParams.Add("");
            tbl_list.InnerHtml = db.createHtmlTables(1, new string[] { "编号", "姓名","电话","申请时间" }, new string[] { "省份","城市" ,"地区","详细地址","邮箱","从事行业","加盟城市","备注" }, listParams, "a_out_PageList", false, new int[] { }, true, 0, 0);
        }
    }
}