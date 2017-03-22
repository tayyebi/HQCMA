<%@ Page Title="مدیریت نظرات" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Comment.aspx.cs" Inherits="User_Manager_Comment" %>

<%@ Register src="Comment.ascx" tagname="Comment" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Comment ID="Comment1" runat="server" />
</asp:Content>

