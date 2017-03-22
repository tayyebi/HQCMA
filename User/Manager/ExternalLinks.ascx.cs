using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Manager_ExternalLinks : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_New_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        btn_Delete.Enabled = btn_Edit.Enabled = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btn_Delete.Enabled = btn_Edit.Enabled = true;
        txtAdress1.Text = GridView1.SelectedRow.Cells[3].Text;
        txtAdress0.Text = GridView1.SelectedRow.Cells[3].Text;
        txtName0.Text = GridView1.SelectedRow.Cells[2].Text;
        txtName1.Text = GridView1.SelectedRow.Cells[2].Text;
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        btn_Edit.Enabled = btn_Delete.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Insert();
            MultiView1.ActiveViewIndex = 0;
            btn_Delete.Enabled = btn_Delete.Enabled = false;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Update();
            MultiView1.ActiveViewIndex = 0;
            btn_Delete.Enabled = btn_Edit.Enabled = false;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Delete();
            MultiView1.ActiveViewIndex = 0;
            btn_Edit.Enabled = btn_Delete.Enabled = false;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void btn_Edit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        btn_Edit.Enabled = btn_Delete.Enabled = false;
    }
    protected void btn_Delete_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        btn_Delete.Enabled = btn_Edit.Enabled = false;
    }
}