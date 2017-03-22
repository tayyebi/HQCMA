<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Comment.ascx.cs" Inherits="Public_Comment" %>
<link href="../Graphics/Style2.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    .style1
    {
        font-family: Tahoma;
    }
</style>
<table cellpadding="4" cellspacing="0" class="table">
<center>
    <tr>
        <td class="style1">
            نام:</td>
        <td>
            <asp:TextBox ID="txtName" runat="server" Width="100px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style1">
            ایمیل:</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Width="100%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="font-size: small" class="style1">
            آدرس اینترنتی:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="txtURL" runat="server" Width="100%"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="style1">
            متن نظر</td>
    </tr>
    <tr>
        <td colspan="2" style="margin-left: 40px"><center>
            <asp:TextBox ID="txtComment" runat="server" EnableViewState="False" 
                Height="220px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </center>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="margin-left: 40px">
        <center>
            <asp:Button ID="Send" runat="server" onclick="Send_Click" Text="ارسال نظر" 
                CssClass="css3button" Height="48px" Width="96px" />
                </center>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="margin-left: 40px">
            <asp:Label ID="lblMessage" runat="server" CssClass="style1"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="margin-left: 40px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Visitors.mdf;Integrated Security=True;User Instance=True" 
                InsertCommand="INSERT INTO Comment(VisitorName, VisitorEmail, VisitorURL, Coment) VALUES (@VisitorName, @VisitorEmail, @VisitorURL, @VisitorComment)" 
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT CommentID, VisitorName, VisitorEmail, VisitorURL, Coment FROM Comment">
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtName" Name="VisitorName" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtEmail" Name="VisitorEmail" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtURL" Name="VisitorURL" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtComment" Name="VisitorComment" 
                        PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</center>
