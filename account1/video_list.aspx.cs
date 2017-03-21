using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_video_list : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ArrayList listParams = new ArrayList();
            listParams.Add("1");
            listParams.Add("10");
            listParams.Add("id,title,url");
            listParams.Add("video");
            listParams.Add("1=1 and tag=0");
            listParams.Add("id");
            listParams.Add("");
            listParams.Add("");
            listParams.Add("");
            tbl_list.InnerHtml = db.createHtmlTables(1, new string[] { "编号", "标题" }, new string[] { "视频链接" }, listParams, "a_out_PageList", false, new int[] { }, true, 0, 0);
        }
    }
}