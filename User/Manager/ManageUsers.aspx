<%@ Page Title="مدیریت کاربران" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="User_Manager_ManageUsers" %>

<%@ Register src="ManageUsers.ascx" tagname="ManageUsers" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ManageUsers ID="ManageUsers1" runat="server" />
</asp:Content>

