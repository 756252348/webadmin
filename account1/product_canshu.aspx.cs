using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_product_canshu : System.Web.UI.Page
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
            if (id!="0")
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
        obj = db.C_Proc_Select(new string[] { "0", "21", id }, 2);
        pro_input1.Value = obj[0].ToString();
        pro_input2.Value = obj[1].ToString();  
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

            String srlt = db.ExecProcRltJson("a_in_UpdtPrdctcanshu", listParams);

            if (srlt.IndexOf("1000") > 0)
            {
                MessageBox.ReLocation("保存成功");
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