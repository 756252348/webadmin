using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_news_add1 : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["id"];
            if (id == null)
                id = "0";
            gid.Value = id;
            db.C_BindDataToDDL("select id,name from dbo.type1 where tag=0", DropDownList1);
            if (id != "0")
                dateBing(id);
            //ArrayList listParams = new ArrayList();
            //listParams.Add("1");
            //listParams.Add("");
            //form_lists.InnerHtml = db.createFormBill(new int[] { 0, 0, 0, 0 }, new string[] { "分类", "标题", "摘要", "内容"}, listParams, "a_out_sglList", null);
        }

    }
    private void dateBing(string id)
    {
        object[] obj = new object[9];
        obj = db.C_Proc_Select1(new string[] { "0", "22", id }, 5);
        //if (Request.Form["nsadd1"] == obj[0].ToString());
        //if (nsadd2.Value == obj[0].ToString()) ;
        //if (nsadd3.Value == obj[0].ToString()) ;
        DropDownList1.SelectedValue = obj[0].ToString();
        bt.Value = obj[1].ToString();
        zy.Value = obj[2].ToString();
        content1.Value = obj[3].ToString();
        pro_img.Value = obj[4].ToString();
        string _html = "";
        for (int i = 0, len = obj[4].ToString().Split('|').Length; i < len; i++)
        {
            _html += " <div class='img-item'><div class='img-del'><i class='fa fa-times-circle new-upload' style='float: right;margin-right: 5px;margin-top: 3px;'  data-img=\"" + obj[4].ToString().Split('|')[i] + "\"></i></div><img src=\"../uploadfile/images/" + obj[4].ToString().Split('|')[i] + "\" alt=\"\" id=\"img\" style=\"width:200px; height:100px;\" /></div>";
        }
        upImages.InnerHtml = _html;
    }

    protected void btLogin_Click(object sender, EventArgs e)
    {
        ArrayList listParams = new ArrayList();
        if (db.getPostFormValues(Request, ref listParams))
        {
            String srlt = db.ExecProcRltJson("a_in_UpdtNewsInfo1", listParams);

            if (srlt.IndexOf("1000") > 0)
            {
                MessageBox.Show("保存成功");
            }
            else
            {
                MessageBox.Show("保存失败");
            }
        }
        else
        {
            MessageBox.Show("请检查您的输入项是否有空值");
        }
    }
}