<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ExternalLinks.ascx.cs" Inherits="User_Manager_ExternalLinks" %>
<%@ Register src="Security.ascx" tagname="Security" tagprefix="uc1" %>

<uc1:Security ID="Security1" runat="server" />
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText="لینک های خارجی">
            <asp:Button ID="btn_New" runat="server" onclick="btn_New_Click" Text="جدید" />
            <asp:Button ID="btn_Edit" runat="server" Enabled="False" Text="ویرایش" 
                onclick="btn_Edit_Click" />
            <asp:Button ID="btn_Delete" runat="server" Enabled="False" Text="حذف" 
                onclick="btn_Delete_Click" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="LinkID" 
                DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="100">
                <Columns>
                    <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" />
                    <asp:BoundField DataField="LinkID" HeaderText="شناسه لینک" 
                        InsertVisible="False" ReadOnly="True" SortExpression="LinkID" />
                    <asp:BoundField DataField="Link" HeaderText="نام لینک" SortExpression="Link" />
                    <asp:BoundField DataField="LinkURL" HeaderText="آدرس لینک" 
                        SortExpression="LinkURL" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                DeleteCommand="DELETE FROM ExternalLinks WHERE (LinkID = @LinkID)" 
                InsertCommand="INSERT INTO ExternalLinks(Link, LinkURL) VALUES (@Link, @LinkURL)" 
                SelectCommand="SELECT LinkID, Link, LinkURL FROM ExternalLinks ORDER BY LinkID DESC" 
                UpdateCommand="UPDATE ExternalLinks SET Link = @Link, LinkURL = @LinkAdress WHERE (LinkID = @LinkID)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="LinkID" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtName" Name="Link" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtAdress" Name="LinkURL" 
                        PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="txtName0" Name="Link" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtAdress0" Name="LinkAdress" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="GridView1" Name="LinkID" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <asp:Panel ID="Panel2" runat="server" GroupingText="جدید">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        نام لینک:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        آدرس لینک:</td>
                    <td>
                        <asp:TextBox ID="txtAdress" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="جدید" />
                        <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" 
                            Text="انصراف" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
    <asp:View ID="View3" runat="server">
        <asp:Panel ID="Panel3" runat="server" GroupingText="ویرایش">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        نام لینک:</td>
                    <td>
                        <asp:TextBox ID="txtName0" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        آدرس لینک:</td>
                    <td>
                        <asp:TextBox ID="txtAdress0" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="ویرایش" />
                        <asp:Button ID="btnCancel0" runat="server" onclick="btnCancel_Click" 
                            Text="انصراف" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
    <asp:View ID="View4" runat="server">
        <asp:Panel ID="Panel4" runat="server" GroupingText="حذف">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        نام لینک:</td>
                    <td>
                        <asp:TextBox ID="txtName1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        آدرس لینک:</td>
                    <td>
                        <asp:TextBox ID="txtAdress1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="حذف" />
                        <asp:Button ID="btnCancel1" runat="server" onclick="btnCancel_Click" 
                            Text="انصراف" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
</asp:MultiView>

