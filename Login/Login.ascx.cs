using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Login_Login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEnter_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["MyCS"].ConnectionString;
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "SELECT * FROM [User] WHERE UserID=@UserID AND UserPass=@Userpass";
        com.Parameters.AddWithValue("UserID", txtUserID.Text);
        com.Parameters.AddWithValue("Userpass", txtPassword.Text);
        SqlDataReader data = com.ExecuteReader();
        if (data.Read())
        {
            Session["UserTax"] = data["UserTax"].ToString();
            Session["UserID"] = txtUserID.Text;
            Session["Fullname"] = data["Fullname"].ToString();
            Session["UserType"] = data["UserType"].ToString();
            Response.Redirect("~/User/User.aspx");
        }
        else
        {
            lblMessage.Text = "نام کاربری یا کلمه عبور صحیح نمی باشد";
        }
    }
}