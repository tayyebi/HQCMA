<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserStatus.ascx.cs" Inherits="User_UserStatus" %>
<link href="../Graphics/User/Login.css" rel="stylesheet" type="text/css" />
<p>
    <asp:Label ID="UserType" runat="server" CssClass="text"></asp:Label>
&nbsp;<asp:Label ID="FullName" runat="server" CssClass="text"></asp:Label>
&nbsp;
    <asp:Button ID="btnExit" runat="server" onclick="btnExit_Click" Text="خروج" 
        CssClass="css3button" Width="112px" />
&nbsp;<asp:Label ID="Tax" runat="server" Text="حق عضویت"></asp:Label>
</p>

