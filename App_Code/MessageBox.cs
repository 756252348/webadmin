using System.Web;

/// <summary>
///MessageBox 的摘要说明
/// </summary>
public static class MessageBox
{

    #region 原生JS弹窗
    /// <summary>
    /// 公共原生JS弹窗
    /// </summary>
    /// <param name="Page">页面对象</param>
    /// <param name="content">内容</param>
    public static void Show(string content)
    {
        Dialog("Show","alert('" + content + "');");
    }
    public static void Confirm(string content, string url)
    {
        Dialog("Confirm", "if(confirm('" + content + "')){ window.location.href='" + url + "'};");
    }

    public static void GoHistory(string content)
    {
        Dialog("GoHistory", "alert('" + content + "');window.history.go(-1);");
    }

    public static void ReLocation(string content)
    {
        Dialog("ReLocation", "alert('" + content + "');window.location.href=window.location.href;");
    }

    public static void Location(string content, string url)
    {
        Dialog("Location", "alert('" + content + "');window.location.href='" + url + "';");
    }

    public static void LocationAdd(string content)
    {
        Dialog("LocationAd", "alert('" + content + "');window.location.href='" + HttpContext.Current.Request.Url.ToString() + "?ID=0" + "';");
    }

    public static void MessageBoxUp(string url)
    {
        Dialog("MessageBoxUp", "parent.parent.frames.Content.location='" + url + "';");
    }

    public static void MessageBoxUp(string content, string url)
    {
        Dialog("MessageBoxUp", "alert('" + content + "'); parent.parent.frames.Content.location='" + url + "';");
    }

    public static void MessageBoxiframe(string content,string eventId,string parentID)
    {
        Dialog("MessageBoxIframe", "alert('" + content + "'); window.parent.frames['ColumnLeft'].location='ColumnTree.aspx?ParentID=0&EventId=" + eventId + "&curId=" + parentID + "';");
    }

    public static void Exit(string url)
    {
        Dialog("Exit", "top.location.href='" + url + "';");
    }

    public static void MessageBoxiframe(string content, string url)
    {
        Dialog("MessageBoxIframe", "alert('" + content + "'); window.parent.frames['ColumnLeft'].location='" + url + "';");
    }

    #endregion

    public static void Dialog(string cType, string Code)
    {
        System.Web.UI.Page Page = HttpContext.Current.Handler as System.Web.UI.Page;

        Page.ClientScript.RegisterStartupScript(Page.GetType(), cType, Code, true);
    }
}