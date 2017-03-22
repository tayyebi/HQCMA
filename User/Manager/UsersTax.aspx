<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="UsersTax.aspx.cs" Inherits="User_Manager_UsersTax" %>

<%@ Register src="UsersTax.ascx" tagname="UsersTax" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:UsersTax ID="UsersTax1" runat="server" />
</asp:Content>

