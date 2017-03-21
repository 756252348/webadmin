using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_adminPass : System.Web.UI.Page
{
    DBHelper db = new DBHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
           
        }
      

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

            DataTable srlt = db.QueryDataRltRcrd("a_in_updtAdminPass", listParams).Tables[0];

            if (srlt.Rows[0][0].ToString() == "1000")
            {
                MessageBox.ReLocation("修改成功");
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