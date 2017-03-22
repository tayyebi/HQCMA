using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Manager_Security : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"].ToString() != "مدیر")
        {
            Response.Redirect("~/User/User.aspx");
        }
        if (Session["UserType"].ToString() == null)
        {
            Response.Redirect("~/Public/Top10News.aspx");
        }
    }
}