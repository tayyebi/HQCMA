using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Menu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
            if (Session["UserType"].ToString() != "مدیر")
            {
            UsersManage.Visible = false;
            GroupsManage.Visible = false;
            UsersManage.Enabled = false;
            GroupsManage.Enabled = false;
            FacilityManage.Visible = FacilityManage.Enabled = false;
            AboutManage.Visible = AboutManage.Enabled = false;
            AdvertiesManage.Visible = AdvertiesManage.Enabled = false;
            CommentManage.Visible = CommentManage.Enabled = false;
            SendMessage.Visible = false;
            PrivateNewsManage.Visible = ExternalLinksManage.Visible = PrivateNewsManage.Enabled = ExternalLinksManage.Enabled = false;
            SendMessage.Enabled = false;
            TaxManage.Enabled = false;
            TaxManage.Visible = false;
            }
            try
            {
                if (Session["UserType"].ToString() != "مدیر")
                {
                    if (Session["UserTax"].ToString() == "")
                    {
                        PrivateNews.ForeColor = NewsManage.ForeColor = System.Drawing.Color.Yellow;
                        PrivateNews.BackColor = NewsManage.BackColor = System.Drawing.Color.Black;
                    }

                    else if (Session["UserTax"].ToString() == "پرداخت نشده")
                    {
                        PrivateNews.Enabled = NewsManage.Enabled = false;
                        PrivateNews.ForeColor = NewsManage.ForeColor = System.Drawing.Color.Gray;
                    }
                }
            }
        catch
        {
        }

    }
}