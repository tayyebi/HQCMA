using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Manager_PrivateNews : System.Web.UI.UserControl
{

    protected void Page_Load(object sender, EventArgs e)
    {
        btn_Edit.Enabled = btn_delete.Enabled = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btn_Edit.Enabled = btn_delete.Enabled = true;
        txtValue0.Text = GridView1.SelectedRow.Cells[3].Text;
        txtValue1.Text = GridView1.SelectedRow.Cells[3].Text;
        txtTitle0.Text = GridView1.SelectedRow.Cells[2].Text;
        txtTitle1.Text = GridView1.SelectedRow.Cells[2].Text;
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
        btn_delete.Enabled = btn_Edit.Enabled = false;
    }
    protected void btn_Edit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        btn_delete.Enabled = btn_Edit.Enabled = false;
    }
    protected void btn_New_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        btn_delete.Enabled = btn_Edit.Enabled = false;
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        btn_Edit.Enabled = btn_delete.Enabled = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Delete();
            btn_delete.Enabled = btn_Edit.Enabled = false;
            MultiView1.ActiveViewIndex = 0;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
            btn_delete.Enabled = btn_Edit.Enabled = false;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Update();
            btn_delete.Enabled = btn_Edit.Enabled = false;
            MultiView1.ActiveViewIndex = 0;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
            btn_delete.Enabled = btn_Edit.Enabled = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Insert();
            btn_delete.Enabled = btn_Edit.Enabled = false;
            MultiView1.ActiveViewIndex = 0;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
            btn_delete.Enabled = btn_Edit.Enabled = false;
        }
    }
}