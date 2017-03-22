<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="Login_Login" %>
<%@ Register src="../Public/Links.ascx" tagname="Links" tagprefix="uc1" %>
<style type="text/css">
    .loginbutton
    {
        margin-left:auto;
        margin-right:auto;
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
}.loginbutton:hover
 {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #5cb811), color-stop(1, #77d42a) );
	background:-moz-linear-gradient( center top, #5cb811 5%, #77d42a 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#5cb811', endColorstr='#77d42a');
	background-color:#5cb811;
}
.loginbutton:active
 {
	position:relative;
	top:1px;
    }
</style>
<center>
<table cellpadding="4" cellspacing="0">

    <tr>
        <td>
            نام کاربری:</td>
        <td>
            <asp:TextBox ID="txtUserID" runat="server" Height="100%" Width="100px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            کلمه عبور:</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="100%" 
                Width="100px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="btnEnter" runat="server" Text="ورود" onclick="btnEnter_Click" 
                CssClass="loginbutton" Height="41px" Width="83px" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lblMessage" runat="server" style="color: #FF0066"></asp:Label>
        </td>
    </tr>
    </table>
</center>
