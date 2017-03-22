<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register src="Login.ascx" tagname="Login" tagprefix="uc1" %>

<%@ Register src="../Public/Links.ascx" tagname="Links" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<style type="text/css">
    .LoginTable
{
    padding: 10;
    vertical-align:top;
    background-color:White;
    box-shadow: 2px 2px 2px #888888;
    border-radius:5px;
    opacity:0.9;
    -moz-border-radius:5px;   
}
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ورود به سایت</title>
    <link href="../Graphics/Style1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

        <table cellpadding="10" cellspacing="0" dir="ltr" frame="below">
            <tr>
                <td class="LoginTable" dir="rtl">

        <uc1:Login ID="Login1" runat="server" />
    
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Public/Top10News.aspx">صفحه اصلی</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form></body>
</html>
