using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_TaxSecurity : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserTax"].ToString() == "پرداخت نشده")
        {
            Response.Redirect("~/User/User.aspx");
        }
    }
}