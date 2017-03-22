using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Public_Comment : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Send_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Insert();
            lblMessage.Text = "نظر شما با موفقیت ارسال شد." + "نظر به رویت مدیر خواهد رسید";
            txtComment.Text = String.Empty;
        }
        catch
        {
            lblMessage.Text = "پشتیبان سایت به شما اجازه نفوذ به سایت را نمیدهد";
            lblMessage.ForeColor =System.Drawing.Color.Red;
        }
    }
}