<%@ Control Language="C#" AutoEventWireup="true" CodeFile="About.ascx.cs" Inherits="Public_About" %>
<link href="../Graphics/Style2.css" rel="stylesheet" type="text/css" />
<center><table cellpadding="0" cellspacing="4" class="table">
    <tr>
        <td class="header">
            درباره</td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    &nbsp;<asp:Label ID="AbouTextLabel" runat="server" Text='<%# Eval("AbouText") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                SelectCommand="SELECT [AbouText] FROM [About]"></asp:SqlDataSource>
        </td>
    </tr>
</table></center>

