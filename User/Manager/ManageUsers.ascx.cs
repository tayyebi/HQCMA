using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Manager_ManageUsers : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtUserType.Text != "مدیر")
            {
                SqlDataSource2.Insert();
                MultiView1.ActiveViewIndex = 0;
            }
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }

    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        txtFullName0.Text = GridView1.SelectedRow.Cells[3].Text;
        txtUserID0.Text = GridView1.SelectedRow.Cells[1].Text;
        txtPassword0.Text = GridView1.SelectedRow.Cells[2].Text;
        txtUserType0.Text = GridView1.SelectedRow.Cells[4].Text;
        MultiView1.ActiveViewIndex = 2;
        txtUserType0.ReadOnly = false;
        if (txtUserType0.Text == "مدیر")
        {
            HiddenField1.Value = "مدیر";
            txtUserType0.ReadOnly = true;
        }
        btnEdit.Enabled = btnDelete.Enabled = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (HiddenField1.Value == "مدیر")
            {
                txtUserType0.Text = "مدیر";
            }
                txtUserType0.ReadOnly = false;
                SqlDataSource2.Update();
                MultiView1.ActiveViewIndex = 0;
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        txtFullName1.Text = GridView1.SelectedRow.Cells[3].Text;
        txtUserID1.Text = GridView1.SelectedRow.Cells[1].Text;
        txtPassword1.Text = GridView1.SelectedRow.Cells[2].Text;
        txtUserType1.Text = GridView1.SelectedRow.Cells[4].Text;
        MultiView1.ActiveViewIndex = 3;
        btnEdit.Enabled = btnDelete.Enabled = false;
        Button3.Enabled = Button3.Visible = true;
        error.Text = "";
        if (txtUserType1.Text == "مدیر")
        {
            Button3.Enabled = Button3.Visible = false;
            error.Text = "شما قادر به حذف مدیر نیستید";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtUserType1.Text != "مدیر")
            {
                SqlDataSource2.Delete();
                MultiView1.ActiveViewIndex = 0;
            }
        }
        catch
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnDelete.Enabled = btnEdit.Enabled = true;
    }

    protected void txtUserType_TextChanged(object sender, EventArgs e)
    {
        if (txtUserType.Text == "مدیر")
        {
            txtUserType.Text = "";
        }

    }
    protected void txtUserType0_TextChanged(object sender, EventArgs e)
    {
        if (txtUserType0.Text == "مدیر")
        {
            txtUserType0.Text = "";
        }
    }
    protected void txtUserType1_TextChanged(object sender, EventArgs e)
    {
        if (txtUserType1.Text == "مدیر")
        {
            Button3.Enabled = Button3.Visible = false;
            error.Text = "شما قادر به حذف مدیر نیستید";
        }
    }
}