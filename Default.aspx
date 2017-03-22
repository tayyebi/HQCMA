<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Graphics/User/Style4.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table cellpadding="4" cellspacing="0" class="buttonstable">
        <tr>
            <td>
    <asp:Button ID="enterbutton" runat="server" Text="ورود به سایت" CssClass="Enter" 
                    Height="300px" onclick="enterbutton_Click" Width="500px" />
                <br />
                <center>
    <asp:Button ID="usersbutton" runat="server" Text="ورود به بخش مدیریت سایت" 
                    CssClass="usersbutton" Height="100px" onclick="usersbutton_Click" />
                    </center>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
