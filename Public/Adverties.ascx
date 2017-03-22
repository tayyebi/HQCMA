<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Adverties.ascx.cs" Inherits="Public_Adverties" %>
<link href="../Graphics/Style2.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    .style1
    {
        width: 193px;
    }
    .style2
    {
        width: 193px;
        height: 27px;
    }
</style>
<center><table cellpadding="4" cellspacing="0" class="table">

    <tr>
        <td class="header">
            تبلیغات</td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    &nbsp;<asp:Label ID="AdvertiesValueLabel" runat="server" 
                        Text='<%# Eval("AdvertiesValue") %>' />
                    <hr />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MyCS %>" 
                SelectCommand="SELECT [AdvertiesValue] FROM [Adverties]">
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</center>

