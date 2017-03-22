<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="ExternalLinks.aspx.cs" Inherits="User_Manager_ExternalLinks" %>

<%@ Register src="ExternalLinks.ascx" tagname="ExternalLinks" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ExternalLinks ID="ExternalLinks1" runat="server" />
</asp:Content>

