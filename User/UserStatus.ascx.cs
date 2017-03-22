using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_UserStatus : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Tax.Text = "";
        Tax.ForeColor = System.Drawing.Color.Black;
        FullName.Text = Session["Fullname"].ToString();
        UserType.Text = Session["UserType"].ToString();
        if (Session["UserType"].ToString() != "مدیر")
        {
            Tax.Text = "حق عضویت:" + Session["UserTax"].ToString();
            if (Session["UserTax"].ToString() == "پرداخت شده")
            {
                Tax.ForeColor = System.Drawing.Color.Green;
            }
            else if (Session["UserTax"].ToString() == "پرداخت نشده")
            {
                Tax.ForeColor = System.Drawing.Color.Red;
            }
            else if (Session["UserTax"].ToString() == "")
            {
                Tax.Text = "دوره آزمایشی استفاده از بخش مدیریت " +Environment.NewLine+ "لطفا حق عضویت خود را پرداخت کنید ";
                Tax.ForeColor = System.Drawing.Color.Yellow;
                Tax.BackColor = System.Drawing.Color.Black;
            }
        }
        else if (Session["UserType"].ToString() == "مدیر")
        {
            Tax.Text = "برای مدیر هیچ حق عضویتی در نظر گفته نشده است";
            Tax.ForeColor = System.Drawing.Color.Blue;
        }
    }
    protected void btnExit_Click(object sender, EventArgs e)
    {
        Session["UserID"] =null;
        Session["UserType"] = null;
        Session.Abandon();
        Response.Redirect("~/Login/Login.aspx");
    }
}