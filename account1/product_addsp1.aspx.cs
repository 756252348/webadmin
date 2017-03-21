using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_product_addsp1 : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["gid"];
            if (id == null)
                id = "0";
            gid.Value = id;
            db.C_BindDataToDDL("select ID,name from dbo.proct_fenlei1 where Tag=0", DropDownList1);
            if (id != "0")
                dateBing(id);
        }
        //ArrayList listParams = new ArrayList();
        //listParams.Add("1");
        //listParams.Add("");
        //form_lists.InnerHtml = db.createFormBill(new int[] { 0, 0, 0, 0, 0, 0, 1,1,1 }, new string[] { "商品名", "图片", "摘要", "品牌", "详情", "已售数量", "是否上架", "是否添加到首页","是否添加banner"   }, listParams, "a_out_sglList", null);

    }

    private void dateBing(string id)
    {
        object[] obj = new object[9];
        obj = db.C_Proc_Select1(new string[] { "0", "15", id }, 5);
        DropDownList1.SelectedValue = obj[0].ToString();
        pro_name.Value = obj[1].ToString();
        pro_img.Value = obj[2].ToString();
        content1.Value = obj[3].ToString();
        RadioButtonList1.SelectedValue = obj[4].ToString();
        string _html = "";
        for (int i = 0, len = obj[2].ToString().Split('|').Length; i < len; i++)
        {
            _html += " <div class='img-item'><div class='img-del'><i class='fa fa-times-circle new-upload' style='float: right;margin-right: 5px;margin-top: 3px;'  data-img=\"" + obj[2].ToString().Split('|')[i] + "\"></i></div><img src=\"../uploadfile/images/" + obj[2].ToString().Split('|')[i] + "\" alt=\"\" id=\"img\" style=\"width:200px; height:100px;\" /></div>";
        }
        upImages.InnerHtml = _html;
    }
    protected void btLogin_Click(object sender, EventArgs e)
    {
        ArrayList listParams1 = new ArrayList();
        if (db.getPostFormValues(Request, ref listParams1))
        {
            ArrayList listParams = new ArrayList();
            for (int i = 0; i < listParams1.Count - 1; i++)
            {
                listParams.Add(listParams1[i]);
            }

            DataTable srlt = db.QueryDataRltRcrd("a_in_UpdtPrdctInfo1", listParams).Tables[0];

            if (srlt.Rows[0][0].ToString() == "1000")
            {
                MessageBox.ReLocation("保存成功");
            }
            else
            {
                MessageBox.Show(srlt.Rows[0][1].ToString());
            }
        }
        else
        {
            MessageBox.Show("请检查您的输入项是否有空值");
        }
    }
}