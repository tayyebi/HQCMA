<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="InsertComment.aspx.cs" Inherits="User_Manager_InsertComment" %>

<%@ Register src="InsertComment.ascx" tagname="InsertComment" tagprefix="uc1" %>
<%@ Register src="Security.ascx" tagname="Security" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc2:Security ID="Security1" runat="server" />
    <uc1:InsertComment ID="InsertComment1" runat="server" />
</asp:Content>

