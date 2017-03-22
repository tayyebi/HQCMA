using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_News_CommentManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "مدیریت پیام های مدیر";
        ViewComment.Enabled = false;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ViewComment.Enabled = true;
    }
    protected void ViewComment_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        txt_Value.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
        lbl_Title.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
        lbl_CommentID.Text =GridView1.SelectedRow.Cells[1].Text.ToString();
        ViewComment.Enabled = false;
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Delete();
        MultiView1.ActiveViewIndex = 0;
        ViewComment.Enabled = false;
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        ViewComment.Enabled = false;
    }
}