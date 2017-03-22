<%@ Control Language="C#" AutoEventWireup="true" CodeFile="About.ascx.cs" Inherits="User_Manager_About" %>
<%@ Register src="Security.ascx" tagname="Security" tagprefix="uc1" %>
<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>

<link href="../../Graphics/User/Style7.css" rel="stylesheet" type="text/css" />

<uc1:Security ID="Security1" runat="server" />





<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText="درباره" 
            CssClass="panelTable">
            <asp:Button ID="btnNew" runat="server" Text="جدید" onclick="btnNew_Click" 
                CssClass="css3button" />
            <asp:Button ID="btnEdit" runat="server" Text="ویرایش" onclick="btnEdit_Click" 
                Enabled="False" CssClass="css3button" />
            <asp:Button ID="btnDelete" runat="server" Text="حذف" 
                onclick="btnDelete_Click" Enabled="False" CssClass="css3button" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="AboutID" 
                DataSourceID="SqlDataSource1" EnableModelValidation="True" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" />
                    <asp:BoundField DataField="AboutID" HeaderText="شناسه" ReadOnly="True" 
                        SortExpression="AboutID" InsertVisible="False" />
                    <asp:BoundField DataField="AbouText" HeaderText="محتویات" 
                        SortExpression="AbouText" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                DeleteCommand="DELETE FROM About WHERE (AboutID = @AboutID)" 
                InsertCommand="INSERT INTO About(AbouText) VALUES (@AboutText)" 
                SelectCommand="SELECT * FROM [About]" 
                UpdateCommand="UPDATE About SET AbouText = @AboutText WHERE (AboutID = @AboutID)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="AboutID" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtNew" Name="AboutText" PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="txtEdit" Name="AboutText" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="GridView1" Name="AboutID" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View2" runat="server">
        <asp:Panel ID="Panel2" runat="server" GroupingText="درباره جدید" 
            CssClass="panelTable">
            <table cellpadding="0" cellspacing="4">
                <tr>
                    <td>

                        <FTB:FreeTextBox ID="txtNew" runat="server" Text="">
                        </FTB:FreeTextBox>

                    </td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="جدید" 
                Width="100px" CssClass="css3button" />
            <asp:Button ID="cancel" runat="server" onclick="cancel_Click" Text="انصراف" 
                Width="100px" CssClass="css3button" />
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View3" runat="server">
        <asp:Panel ID="Panel3" runat="server" GroupingText="ویرایش درباره" 
            CssClass="panelTable">
            <table cellpadding="0" cellspacing="4">
                <tr>
                    <td>
                        <FTB:FreeTextBox ID="txtEdit" runat="server" Text="متن خودرا بنویسید">
                        </FTB:FreeTextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="ویرایش" 
                Width="100px" CssClass="css3button" />
            <asp:Button ID="cancel0" runat="server" onclick="cancel_Click" Text="انصراف" 
                Width="100px" CssClass="css3button" />
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View4" runat="server">
        <asp:Panel ID="Panel4" runat="server" GroupingText="درباره جدید" 
            CssClass="panelTable">
            <table cellpadding="0" cellspacing="4">
                <tr>
                    <td>
                        <FTB:FreeTextBox ID="txtDelete" runat="server" ReadOnly="True" 
                            RemoveScriptNameFromBookmarks="True" Text="متن خودرا بنویسید">
                        </FTB:FreeTextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="حذف" 
                Width="100px" CssClass="css3button" />
            <asp:Button ID="cancel1" runat="server" onclick="cancel_Click" Text="انصراف" 
                Width="100px" CssClass="css3button" />
        </asp:Panel>
    </asp:View>
</asp:MultiView>




