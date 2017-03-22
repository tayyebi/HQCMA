using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Manager_Comment : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnRead.Enabled = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnRead.Enabled = true;
    }
    protected void btnRead_Click(object sender, EventArgs e)
    {
        btnRead.Enabled = false;
        //txtEdit.Text = GridView1.SelectedRow.Cells[2].Text;
        txtText.Text = GridView1.SelectedRow.Cells[5].Text;
        txtAdress.Text = GridView1.SelectedRow.Cells[4].Text;
        txtEmail.Text = GridView1.SelectedRow.Cells[3].Text;
        txtName.Text = GridView1.SelectedRow.Cells[2].Text;

        MultiView1.ActiveViewIndex = 1;
    }
    protected void End_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource2.Update();
            MultiView1.ActiveViewIndex = 0;
            btnRead.Enabled = false;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }


    }
    protected void Mark_CheckedChanged(object sender, EventArgs e)
    {

        if (Mark.Checked == true)
        {
            Mark.Text = "نظر خوانده شده است";
        }
        else if (Mark.Checked==false)
        {
            Mark.Text = "نظر خوانده نشده است";
        }
    }
    protected void DeleteComment_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource2.Delete();
            MultiView1.ActiveViewIndex = 0;
            btnRead.Enabled = false;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }

    }
}