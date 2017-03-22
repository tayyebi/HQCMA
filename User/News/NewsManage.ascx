<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NewsManage.ascx.cs" Inherits="User_News_News" %>





<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>





<%@ Register src="../TaxSecurity.ascx" tagname="TaxSecurity" tagprefix="uc1" %>





<link href="../../Graphics/User/Style7.css" rel="stylesheet" type="text/css" />

<style type="text/css">
    .usersbutton{
    font-family:Tahoma;
	font-size: 14px;
	color: #050505;
	padding: 10px 20px;
	background: -moz-linear-gradient(
		top,
		#ffffff 0%,
		#c7d95f 50%,
		#add136 50%,
		#6d8000);
	background: -webkit-gradient(
		linear, left top, left bottom, 
		from(#ffffff),
		color-stop(0.50, #c7d95f),
		color-stop(0.50, #add136),
		to(#6d8000));
	-moz-border-radius: 14px;
	-webkit-border-radius: 14px;
	border-radius: 14px;
	border: 1px solid #6d8000;
	-moz-box-shadow:
		0px 1px 3px rgba(000,000,000,0.5),
		inset 0px 0px 2px rgba(255,255,255,1);
	-webkit-box-shadow:
		0px 1px 3px rgba(000,000,000,0.5),
		inset 0px 0px 2px rgba(255,255,255,1);
	box-shadow:
		0px 1px 3px rgba(000,000,000,0.5),
		inset 0px 0px 2px rgba(255,255,255,1);
	text-shadow:
		0px -1px 0px rgba(000,000,000,0.2),
		0px 1px 0px rgba(255,255,255,0.4);
}.usersbutton:hover
 {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #5cb811), color-stop(1, #77d42a) );
	background:-moz-linear-gradient( center top, #5cb811 5%, #77d42a 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#5cb811', endColorstr='#77d42a');
	background-color:#5cb811;
}
.usersbutton:active
 {
	position:relative;
	top:1px;
    }

</style>


<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText="اخبار" 
            CssClass="panelTable">
            <asp:Button ID="btnNew" runat="server" Text="جدید" onclick="btnNew_Click" 
                CssClass="usersbutton" />
            <asp:Button ID="btnEdit" runat="server" Text="ویرایش" onclick="btnEdit_Click" 
                Enabled="False" CssClass="usersbutton" />
            <asp:Button ID="btnDelete" runat="server" Text="حذف" 
                onclick="btnDelete_Click" Enabled="False" CssClass="usersbutton" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NewsID" 
                DataSourceID="SqlDataSource2" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="500px" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" GridLines="Horizontal" ForeColor="Black">
                <Columns>
                    <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" />
                    <asp:BoundField DataField="NewsID" HeaderText="شناسه خبر" ReadOnly="True" 
                        SortExpression="NewsID" InsertVisible="False" />
                    <asp:BoundField DataField="UserID" HeaderText="شناسه ثبت کننده" 
                        SortExpression="UserID" />
                    <asp:BoundField DataField="NewsTitle" HeaderText="عنوان خبر" 
                        SortExpression="NewsTitle" />
                    <asp:BoundField DataField="Abstract" HeaderText="چکیده خبر" 
                        SortExpression="Abstract" />
                    <asp:BoundField DataField="NewsText" HeaderText="متن خبر" 
                        SortExpression="NewsText" />
                    <asp:BoundField DataField="NewsDate" HeaderText="تاریخ ثبت" 
                        SortExpression="NewsDate" />
                    <asp:BoundField DataField="NewsGroup" HeaderText="گروه خبری" 
                        SortExpression="NewsGroup" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                SelectCommand="SELECT NewsID, UserID, NewsTitle, Abstract, NewsText, NewsDate, NewsGroup FROM News WHERE (UserID = @UserID) OR (@UserType = N'مدیر') ORDER BY NewsID DESC" 
                ProviderName="<%$ ConnectionStrings:MyCS.ProviderName %>" 
                
                InsertCommand="INSERT INTO News(UserID, NewsTitle, Abstract, NewsText, NewsDate, NewsGroup) VALUES (@UserID, @NewsTitle, @Abstract, @NewsText, @NewsDate, @NewsGroup)" 
                DeleteCommand="DELETE FROM News WHERE (NewsID = @NewsID)" 
                
                
                UpdateCommand="UPDATE News SET NewsTitle = @NewsTitle, Abstract = @Abstract, NewsText = @NewsText, NewsDate = @NewsDate, NewsGroup = @NewsGroup WHERE (NewsID = @NewsID)">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="NewsID" 
                        PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:SessionParameter DefaultValue="" Name="UserID" SessionField="UserID" />
                    <asp:ControlParameter ControlID="txtTitle" Name="NewsTitle" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtAbstract" Name="Abstract" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtText" DefaultValue="" Name="NewsText" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtDate" DefaultValue="" Name="NewsDate" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="HiddenField1" Name="NewsGroup" 
                        PropertyName="Value" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="@UserID" Name="UserID" 
                        SessionField="UserID" Type="String" />
                    <asp:SessionParameter DefaultValue="@UserType" Name="UserType" 
                        SessionField="UserType" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="txtTitle0" Name="NewsTitle" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtAbstract0" Name="Abstract" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtText0" Name="NewsText" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtDate0" Name="NewsDate" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="GridView1" Name="NewsID" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="HiddenField2" Name="NewsGroup" 
                        PropertyName="Value" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View2" runat="server">
        <asp:Panel ID="Panel2" runat="server" GroupingText="ثبت خبر جدید" 
            CssClass="panelTable">
            <table cellpadding="0" cellspacing="4">
                <tr>
                    <td>
                        عنوان خبر:</td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server" Width="100%" EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        چکیده خبر:</td>
                    <td>

                        <asp:TextBox ID="txtAbstract" runat="server" Height="249px" 
                            TextMode="MultiLine" Width="100%"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        متن خبر:</td>
                    <td>

                        <FTB:FreeTextBox ID="txtText" runat="server" Text="" EnableViewState="False" 
                            StartMode="DesignMode">
                            
                        </FTB:FreeTextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        تاریخ ثبت:</td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server" Width="100%" Enabled="False" 
                            EnableViewState="False">//</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        گروه خبری:</td>
                    <td>
                        <asp:DropDownList ID="Group" runat="server" DataSourceID="SqlDataSource1" 
                            DataTextField="GroupName" DataValueField="GroupID" EnableViewState="False" 
                            Width="100%">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                            SelectCommand="SELECT [GroupID], [GroupName] FROM [Group]">
                        </asp:SqlDataSource>
                        <asp:HiddenField ID="HiddenField1" runat="server" Visible="False" />
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="جدید" 
                Width="100px" CssClass="usersbutton" />
            <asp:Button ID="cancel" runat="server" onclick="cancel_Click" Text="انصراف" 
                Width="100px" CssClass="usersbutton" />
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View3" runat="server">
        <asp:Panel ID="Panel3" runat="server" GroupingText="ویرایش خبر" 
            CssClass="panelTable">
            <table cellpadding="0" cellspacing="4">
                <tr>
                    <td>
                        عنوان خبر:</td>
                    <td>
                        <asp:TextBox ID="txtTitle0" runat="server" Width="100%" EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        چکیده خبر:</td>
                    <td>

                        <asp:TextBox ID="txtAbstract0" runat="server" Height="249px" 
                            TextMode="MultiLine" Width="100%"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        متن خبر:</td>
                    <td>

                        <FTB:FreeTextBox ID="txtText0" runat="server" EnableViewState="False" 
                            StartMode="DesignMode">
                            
                        </FTB:FreeTextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        تاریخ ثبت:</td>
                    <td>
                        <asp:TextBox ID="txtDate0" runat="server" Width="100%" EnableViewState="False">//</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        گروه خبری:</td>
                    <td>
                        <asp:HiddenField ID="HiddenField2" runat="server" Visible="False" />
                        <asp:DropDownList ID="Group0" runat="server" DataSourceID="SqlDataSource1" 
                            DataTextField="GroupName" DataValueField="GroupID" EnableViewState="False" 
                            Width="100%">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="ویرایش" 
                Width="100px" CssClass="usersbutton" />
            <asp:Button ID="cancel0" runat="server" onclick="cancel_Click" Text="انصراف" 
                Width="100px" CssClass="usersbutton" />
        </asp:Panel>
    </asp:View>
    <br />
    <asp:View ID="View4" runat="server">
        <asp:Panel ID="Panel4" runat="server" GroupingText="حذف خبر" 
            CssClass="panelTable">
            <table cellpadding="0" cellspacing="4">
                <tr>
                    <td>
                        عنوان خبر:</td>
                    <td>
                        <asp:TextBox ID="txtTitle1" runat="server" ReadOnly="True" Width="100%" 
                            EnableViewState="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        چکیده خبر:</td>
                    <td>

                        <asp:TextBox ID="txtAbstract1" runat="server" Height="249px" 
                            TextMode="MultiLine" Width="100%"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        متن خبر:</td>
                    <td>

                        <FTB:FreeTextBox ID="txtText1" runat="server" ReadOnly="True" 
                            EnableViewState="False" StartMode="DesignMode">
                            
                        </FTB:FreeTextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        تاریخ ثبت:</td>
                    <td>
                        <asp:TextBox ID="txtDate1" runat="server" ReadOnly="True" Width="100%" 
                            EnableViewState="False">//</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        گروه خبری:</td>
                    <td>
                        <asp:TextBox ID="Group1" runat="server" EnableViewState="False" ReadOnly="True" 
                            Width="100%"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="حذف" 
                Width="100px" CssClass="usersbutton" />
            <asp:Button ID="cancel1" runat="server" onclick="cancel_Click" Text="انصراف" 
                Width="100px" CssClass="usersbutton" />
        </asp:Panel>
    </asp:View>
</asp:MultiView>



<uc1:TaxSecurity ID="TaxSecurity1" runat="server" />




