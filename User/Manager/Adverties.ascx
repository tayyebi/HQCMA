<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Adverties.ascx.cs" Inherits="User_Manager_Adverties" %>
<%@ Register src="Security.ascx" tagname="Security" tagprefix="uc1" %>
<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>
<link href="../../Graphics/User/Style7.css" rel="stylesheet" type="text/css" />
<uc1:Security ID="Security2" runat="server" />

<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText="تبلیغات" 
            CssClass="panelTable">
            <asp:Button ID="btnNew" runat="server" Text="جدید" onclick="btnNew_Click" 
                CssClass="css3button" />
            <asp:Button ID="btnEdit" runat="server" Text="ویرایش" onclick="btnEdit_Click" 
                Enabled="False" CssClass="css3button" />
            <asp:Button ID="btnDelete" runat="server" Text="حذف" 
                onclick="btnDelete_Click" Enabled="False" CssClass="css3button" 
                Width="95px" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="AdvertiseID" 
                DataSourceID="SqlDataSource1" EnableModelValidation="True" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" />
                    <asp:BoundField DataField="AdvertiseID" HeaderText="شناسه تبلیغ" 
                        InsertVisible="False" ReadOnly="True" SortExpression="AdvertiseID" />
                    <asp:BoundField DataField="AdvertiesName" HeaderText="عنوان تبلیغ" 
                        SortExpression="AdvertiesName" />
                    <asp:BoundField DataField="AdvertiesValue" HeaderText="مقدار تبلیغ" 
                        SortExpression="AdvertiesValue" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                DeleteCommand="DELETE FROM Adverties WHERE (AdvertiseID = @AdvertiesID)" 
                InsertCommand="INSERT INTO Adverties(AdvertiesName, AdvertiesValue) VALUES (@AdvertiesName, @AdvertiesValue)" 
                SelectCommand="SELECT * FROM [Adverties]" 
                UpdateCommand="UPDATE Adverties SET AdvertiesName = @AdvertiesName, AdvertiesValue = @AdvertiesValue WHERE (AdvertiseID = @AdvertiesID)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="AdvertiesID" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtName" Name="AdvertiesName" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtValue" Name="AdvertiesValue" 
                        PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="txtName0" Name="AdvertiesName" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtValue0" Name="AdvertiesValue" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="GridView1" Name="AdvertiesID" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View2" runat="server">
        <asp:Panel ID="Panel2" runat="server" GroupingText="اضافه کردن تبلیغ جدید" 
            CssClass="panelTable">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        عنوان تبلیغ:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        مقدار تبلیغ:</td>
                    <td>
                        <FTB:FreeTextBox ID="txtValue" runat="server"></FTB:FreeTextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="جدید" 
                            Width="100px" CssClass="css3button" style="height: 26px" />
                        <asp:Button ID="Cancel" runat="server" onclick="Cancel_Click" Text="انصراف" 
                            Width="100px" CssClass="css3button" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
    <asp:View ID="View3" runat="server">
        <asp:Panel ID="Panel3" runat="server" GroupingText="ویرایش تبلیغ" 
            CssClass="panelTable">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        عنوان تبلیغ:</td>
                    <td>
                        <asp:TextBox ID="txtName0" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        مقدار تبلیغ:</td>
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
    <asp:View ID="View4" runat="server">
        <asp:Panel ID="Panel4" runat="server" GroupingText="حذف تبلیغ" 
            CssClass="panelTable">
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td>
                        عنوان تبلیغ:</td>
                    <td>
                        <asp:TextBox ID="txtName1" runat="server" ReadOnly="True" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        مقدار تبلیغ:</td>
                    <td>
                        <FTB:FreeTextBox ID="txtValue1" runat="server" ReadOnly="True">
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
    <br />
    <br />
</asp:MultiView>




