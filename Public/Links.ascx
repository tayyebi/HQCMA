<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Links.ascx.cs" Inherits="Public_Links" %>
<link href="../Graphics/Style2.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    .style1
    {
        width: 91px;
    }
</style>
<center>
<table cellpadding="4" cellspacing="0" class="table">
    <tr>
        <td class="header">لینک های داخلی</td>
    </tr>
    <tr>
        <td class="style1">
<asp:HyperLink ID="hlLoginPage0" runat="server" NavigateUrl="~/Public/Archive.aspx" 
                CssClass="links" >آرشیو</asp:HyperLink>
                <br />
<asp:HyperLink ID="hlHomePage" runat="server" 
    NavigateUrl="~/Public/Top10News.aspx" CssClass="links">صفحه اصلی</asp:HyperLink>

            <br />
<asp:HyperLink ID="hlLoginPage" runat="server" NavigateUrl="~/User/User.aspx" 
                CssClass="links" >مدیریت سایت</asp:HyperLink>
        </td>
    </tr>
</table>
</center>
