<%@ Page Title="مدیریت درباره ما" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="User_Manager_About" %>

<%@ Register src="About.ascx" tagname="About" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:About ID="About1" runat="server" />
</asp:Content>

