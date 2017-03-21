using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_system_basic1 : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        dateBing("0");
        //ArrayList listParams = new ArrayList();
        //listParams.Add("2");
        //listParams.Add("");
        //form_lists.InnerHtml = db.createFormBill(new int[] { 0, 0 }, new string[] { "网站名称", "平台网址", "电话","手机","传真","邮编","售后","微信","邮箱","QQ" }, listParams, "a_out_sglList", null);

    }
    private void dateBing(string id)
    {
        object[] obj = new object[9];
        obj = db.C_Proc_Select1(new string[] { "0", "27", id }, 10);
        a1.Value = obj[0].ToString();
        a2.Value = obj[1].ToString();
        a3.Value = obj[2].ToString();
        a4.Value = obj[3].ToString();
        a5.Value = obj[4].ToString();
        a6.Value = obj[5].ToString();
        a7.Value = obj[6].ToString();
        a8.Value = obj[7].ToString();
        a9.Value = obj[8].ToString();
        a10.Value = obj[9].ToString();
    }

    protected void btLogin_Click(object sender, EventArgs e)
    {
        ArrayList listParams = new ArrayList();
        if (db.getPostFormValues(Request, ref listParams))
        {
            String srlt = db.ExecProcRltJson("a_in_UpdtSYSBasic1", listParams);

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