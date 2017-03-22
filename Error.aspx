<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Error" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>درخواست نا معتبر</title>
    <link href="Graphics/Style5.css" rel="stylesheet" type="text/css" />

    </head>
<body>
    <form id="form1" runat="server">
<center>
    <h1>
        سایت اجازه پاسخ گویی به درخواست شما را ندارد</h1>
    <p>
        <asp:HyperLink ID="Redirect" runat="server" CssClass="link" 
            NavigateUrl="~/Public/Top10News.aspx" Font-Names="Tahoma">بازگشت به صفحه اصلی</asp:HyperLink>
    </p>
    </center>
    </form>
</body>
</html>
