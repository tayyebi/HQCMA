<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PrivateNews.ascx.cs" Inherits="User_Manager_PrivateNews" %>
<%@ Register src="Security.ascx" tagname="Security" tagprefix="uc1" %>
<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>

<uc1:Security ID="Security1" runat="server" />
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText="اخبار داخلی">
            <asp:Button ID="btn_New" runat="server" onclick="btn_New_Click" Text="جدید" />
            <asp:Button ID="btn_Edit" runat="server" onclick="btn_Edit_Click" 
                style="width: 48px" Text="ویرایش" />
            <asp:Button ID="btn_delete" runat="server" onclick="btn_delete_Click" 
                Text="حذف" />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NewsID" 
                DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5">
                <Columns>
                    <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" />
                    <asp:BoundField DataField="NewsID" HeaderText="شناسه خبر" InsertVisible="False" 
                        ReadOnly="True" SortExpression="NewsID" />
                    <asp:BoundField DataField="NewsTitle" HeaderText="عنوان خبر" 
                        SortExpression="NewsTitle" />
                    <asp:BoundField DataField="NewsValue" HeaderText="مقدار خبر" 
                        SortExpression="NewsValue" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                DeleteCommand="DELETE FROM PrivateNews WHERE (NewsID = @NewsID)" 
                InsertCommand="INSERT INTO PrivateNews(NewsTitle, NewsValue) VALUES (@NewsTitle, @NewsValue)" 
                SelectCommand="SELECT NewsID, NewsTitle, NewsValue FROM PrivateNews ORDER BY NewsID DESC" 
                UpdateCommand="UPDATE PrivateNews SET NewsTitle = @NewsTitle, NewsValue = @NewsValue WHERE (NewsID = @NewsID)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="NewsID" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtTitle" Name="NewsTitle" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtValue" Name="NewsValue" 
                        PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="txtTitle0" Name="NewsTitle" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtValue0" Name="NewsValue" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="GridView1" Name="NewsID" 
                        PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <asp:Panel ID="Panel2" runat="server" GroupingText="جدید">
            <table cellpadding="0" cellspacing="4">
                <tr>
                    <td>
                        عنوان خبر:</td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server" EnableViewState="False" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        متن خبر:</td>
                    <td>
                        <FTB:FreeTextBox ID="txtValue" runat="server" EnableViewState="False" 
                            StartMode="DesignMode" Text="">
                        </FTB:FreeTextBox>
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
            <table cellpadding="0" cellspacing="4">
                <tr>
                    <td>
                        عنوان خبر:</td>
                    <td>
                        <asp:TextBox ID="txtTitle0" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        متن خبر:</td>
                    <td>
                        <FTB:FreeTextBox ID="txtValue0" runat="server" StartMode="DesignMode" Text="">
                        </FTB:FreeTextBox>
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
            <table cellpadding="0" cellspacing="4">
                <tr>
                    <td>
                        عنوان خبر:</td>
                    <td>
                        <asp:TextBox ID="txtTitle1" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        متن خبر:</td>
                    <td>
                        <FTB:FreeTextBox ID="txtValue1" runat="server" StartMode="DesignMode" Text="">
                        </FTB:FreeTextBox>
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

