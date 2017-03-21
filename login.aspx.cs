using System;
using System.Web;
using System.Web.Security;
//using Newtonsoft.Json;
//using Newtonsoft.Json.Linq;
using System.Text;
using System.Collections.Generic;
using System.Collections;

public partial class Login : System.Web.UI.Page
{
    DataProvider dp = new DataProvider();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write(db.doProcWithName());
        if (Authority.IsLogin)
            Response.Redirect("~/account/Index.aspx");
    }

    protected void btLogin_Click(object sender, EventArgs e)
    {

        string username = Request.Form["txtUserName"], password = Common.md5(Request.Form["txtUserPwd"]);      
        ArrayList Arr = new ArrayList();
        Arr.Add(username);
        Arr.Add(password);
        //Arr.Add("");
        object[] str = new object[3];
        str = dp.a_admin_login(Arr);
        if (str[0].ToString() == "1000")
        {
            //dp.GetPromissionList(Authority.GetRoleID(Context));
            Authority.Login(username, str[1].ToString() + "|" + username + "|", "Account", "account/index.aspx");
        }
        else
        {
            MessageBox.Show(str[1].ToString());
        }


    }
}