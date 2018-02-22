<%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="PublicLogout.aspx.cs" Inherits="ecommerce_website.PublicLogout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        font-size: x-large;
        color: #009933;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/userLogin.css" rel="stylesheet" />
    <div align="center" style="margin-top:150px">
        <asp:Label ID="Label1" runat="server" Text="Logout Successfully!" CssClass="auto-style1"></asp:Label>
    </div>
</asp:Content>
