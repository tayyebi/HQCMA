<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ManageUsers.ascx.cs" Inherits="User_Manager_ManageUsers" %>
<%@ Register src="Security.ascx" tagname="Security" tagprefix="uc1" %>
<link href="../../Graphics/User/Style7.css" rel="stylesheet" type="text/css" />
<uc1:Security ID="Security1" runat="server" />
<asp:HiddenField ID="HiddenField1" runat="server" Visible="False" />
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText="کاربر ها" 
            CssClass="panelTable">
            <asp:Button ID="btnNew" runat="server" Text="جدید" onclick="btnNew_Click" 
                CssClass="css3button" />
            <asp:Button ID="btnEdit" runat="server" Text="ویرایش" onclick="btnEdit_Click" 
                Enabled="False" CssClass="css3button" />
            <asp:Button ID="btnDelete" runat="server" Text="حذف" 
                onclick="btnDelete_Click" Enabled="False" CssClass="css3button" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserID" 
                DataSourceID="SqlDataSource2" EnableModelValidation="True" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField SelectText="اننتخاب" ShowSelectButton="True" />
                    <asp:BoundField DataField="UserID" HeaderText="نام کاربری" ReadOnly="True" 
                        SortExpression="UserID" />
                    <asp:BoundField DataField="UserPass" HeaderText="کلمه عبور" 
                        SortExpression="UserPass" />
                    <asp:BoundField DataField="Fullname" HeaderText="نام و نام خانوادگی" 
                        SortExpression="Fullname" />
                    <asp:BoundField DataField="UserType" HeaderText="نوع کاربری" 
                        SortExpression="UserType" />
                    <asp:BoundField DataField="UserNumber" HeaderText="شماره رده بندی" 
                        InsertVisible="False" ReadOnly="True" SortExpression="UserNumber" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                SelectCommand="SELECT UserID, UserPass, Fullname, UserType, UserNumber FROM [User] WHERE (Fullname &lt;&gt; N'پشتیبان')" 
                
                
                
                InsertCommand="INSERT INTO [User] (UserID, UserPass, Fullname, UserType) VALUES (@UserID, @UserPass, @Fullname, @UserType)" 
                DeleteCommand="DELETE FROM [User] WHERE (UserID = @UserID)" 
                ProviderName="<%$ ConnectionStrings:MyCS.ProviderName %>" 
                
                
                
                UpdateCommand="UPDATE [User] SET UserPass = @UserPass, Fullname = @Fullname, UserType = @UserType, UserID = @newUserID WHERE (UserID = @currentUserID)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="UserID" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtUserID" Name="UserID" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtPassword" Name="UserPass" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtFullName" Name="Fullname" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtUserType" Name="UserType" 
                        PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="txtPassword0" Name="UserPass" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtFullName0" Name="Fullname" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtUserType0" Name="UserType" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtUserID0" Name="newUserID" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="GridView1" Name="currentUserID" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View2" runat="server">
        <asp:Panel ID="Panel2" runat="server" GroupingText="افزودن کاربر جدید" 
            CssClass="panelTable">
            <table cellpadding="0" cellspacing="4">
                <tr>
                    <td>
                        نام و نام خانوادگی:</td>
                    <td style="margin-left: 80px">
                        <asp:TextBox ID="txtFullName" runat="server" EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        نوع کاربری:</td>
                    <td style="margin-left: 80px">
                        <asp:TextBox ID="txtUserType" runat="server" EnableViewState="False" 
                            AutoPostBack="True" ontextchanged="txtUserType_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        نام کاربری:</td>
                    <td style="margin-left: 120px">
                        <asp:TextBox ID="txtUserID" runat="server" EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        کلمه عبور:</td>
                    <td style="margin-left: 120px">
                        <asp:TextBox ID="txtPassword" runat="server" CausesValidation="True" 
                            EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="جدید" Width="48.9%" 
                            onclick="Button1_Click" CssClass="css3button" />
                        <asp:Button ID="Cancel" runat="server" onclick="Cancel_Click" Text="انصراف" 
                            Width="48.9%" CssClass="css3button" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View3" runat="server" >
        <asp:Panel ID="Panel3" runat="server" GroupingText="ویرایش کاربر" 
            CssClass="panelTable">
            <table cellpadding="0" cellspacing="4">
                <tr>
                    <td>
                        نام و نام خانوادگی:</td>
                    <td style="margin-left: 80px">
                        <asp:TextBox ID="txtFullName0" runat="server" EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        نوع کاربری:</td>
                    <td style="margin-left: 80px">
                        <asp:TextBox ID="txtUserType0" runat="server" EnableViewState="False" 
                            AutoPostBack="True" ontextchanged="txtUserType0_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        نام کاربری:</td>
                    <td style="margin-left: 120px">
                        <asp:TextBox ID="txtUserID0" runat="server" EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        کلمه عبور:</td>
                    <td style="margin-left: 120px">
                        <asp:TextBox ID="txtPassword0" runat="server" EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button2" runat="server" Text="ویرایش" Width="48.9%" 
                            onclick="Button2_Click" CssClass="css3button" />
                        <asp:Button ID="Cancel0" runat="server" onclick="Cancel_Click" Text="انصراف" 
                            Width="48.9%" CssClass="css3button" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View4" runat="server">
        <asp:Panel ID="Panel4" runat="server" GroupingText="حذف کاربر" 
            CssClass="panelTable">
            <table cellpadding="0" cellspacing="4">
                <tr>
                    <td>
                        نام و نام خانوادگی:</td>
                    <td style="margin-left: 80px">
                        <asp:TextBox ID="txtFullName1" runat="server" ReadOnly="True" 
                            EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        نوع کاربری:</td>
                    <td style="margin-left: 80px">
                        <asp:TextBox ID="txtUserType1" runat="server" ReadOnly="True" 
                            EnableViewState="False" AutoPostBack="True" 
                            ontextchanged="txtUserType1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        نام کاربری:</td>
                    <td style="margin-left: 120px">
                        <asp:TextBox ID="txtUserID1" runat="server" ReadOnly="True" 
                            EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        کلمه عبور:</td>
                    <td style="margin-left: 120px">
                        <asp:TextBox ID="txtPassword1" runat="server" ReadOnly="True" 
                            EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="margin-left: 80px">
                        <asp:Button ID="Button3" runat="server" Text="حذف" Width="48.9%" 
                            onclick="Button3_Click" CssClass="css3button" />
                        <asp:Button ID="Cancel1" runat="server" onclick="Cancel_Click" Text="انصراف" 
                            Width="48.9%" CssClass="css3button" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="margin-left: 80px">
                        <asp:Label ID="error" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:View>
</asp:MultiView>


