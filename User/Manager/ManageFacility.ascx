<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ManageFacility.ascx.cs" Inherits="User_Manager_ManageFacility" %>
<%@ Register src="Security.ascx" tagname="Security" tagprefix="uc1" %>
<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>
<link href="../../Graphics/User/Style7.css" rel="stylesheet" type="text/css" />
<uc1:Security ID="Security1" runat="server" />
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText="امکانات" 
            CssClass="panelTable">
            <asp:Button ID="btnNew" runat="server" Text="جدید" onclick="btnNew_Click" 
                CssClass="css3button" />
            <asp:Button ID="btnEdit" runat="server" Text="ویرایش" onclick="btnEdit_Click" 
                Enabled="False" CssClass="css3button" />
            <asp:Button ID="btnDelete" runat="server" Text="حذف" 
                onclick="btnDelete_Click" Enabled="False" CssClass="css3button" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="FacilityID" 
                DataSourceID="SqlDataSource1" EnableModelValidation="True" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" />
                    <asp:BoundField DataField="FacilityID" HeaderText="شناسه امکان" 
                        InsertVisible="False" ReadOnly="True" SortExpression="FacilityID" />
                    <asp:BoundField DataField="FacilityName" HeaderText="نام امکان" 
                        SortExpression="FacilityName" />
                    <asp:BoundField DataField="FacilityValue" HeaderText="مقدار امکان" 
                        SortExpression="FacilityValue" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                DeleteCommand="DELETE FROM Facility WHERE (FacilityID = @FacilityID)" 
                InsertCommand="INSERT INTO Facility(FacilityValue, FacilityName) VALUES (@FaciityValue, @FacilityName)" 
                SelectCommand="SELECT * FROM [Facility]" 
                UpdateCommand="UPDATE Facility SET FacilityValue = @FacilityValue, FacilityName = @FacilityName WHERE (FacilityID = @FacilityID)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="FacilityID" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtValue" Name="FaciityValue" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtName" Name="FacilityName" 
                        PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="txtValue0" Name="FacilityValue" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtName0" Name="FacilityName" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="GridView1" Name="FacilityID" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View2" runat="server">
        <asp:Panel ID="Panel2" runat="server" GroupingText="اضافه کردن امکان جدید" 
            CssClass="panelTable">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        نام امکان:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        مقدارامکان:</td>
                    <td>
                        <FTB:FreeTextBox ID="txtValue" runat="server">
                        </FTB:FreeTextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="جدید" 
                            Width="100px" CssClass="css3button" />
                        <asp:Button ID="Cancel" runat="server" onclick="Cancel_Click" Text="انصراف" 
                            Width="100px" CssClass="css3button" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View3" runat="server">
        <asp:Panel ID="Panel3" runat="server" GroupingText="ویرایش کردن امکان" 
            CssClass="panelTable">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        نام امکان:</td>
                    <td>
                        <asp:TextBox ID="txtName0" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        مقدارامکان:</td>
                    <td>
                        <FTB:FreeTextBox ID="txtValue0" runat="server">
                        </FTB:FreeTextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="ویرایش" 
                            Width="100px" CssClass="css3button" />
                        <asp:Button ID="Cancel0" runat="server" onclick="Cancel_Click" Text="انصراف" 
                            Width="100px" CssClass="css3button" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View4" runat="server">
        <asp:Panel ID="Panel4" runat="server" GroupingText="حذف امکان" 
            CssClass="panelTable">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        نام امکان:</td>
                    <td>
                        <asp:TextBox ID="txtName1" runat="server" ReadOnly="True" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        مقدارامکان:</td>
                    <td>
                        <FTB:FreeTextBox ID="txtValue1" runat="server">
                        </FTB:FreeTextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="حذف" 
                            Width="100px" CssClass="css3button" />
                        <asp:Button ID="Cancel1" runat="server" onclick="Cancel_Click" Text="انصراف" 
                            Width="100px" CssClass="css3button" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
</asp:MultiView>


