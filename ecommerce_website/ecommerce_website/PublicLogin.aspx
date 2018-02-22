<%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="PublicLogin.aspx.cs" Inherits="ecommerce_website.PublicLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        font-size: small;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="css/userLogin.css" rel="stylesheet" />

    <div class="loginBox">
        <img src="images/user.png" class="user" />
        <h2>Log In Here</h2>

        <p>Email</p>
        <asp:TextBox ID="txtEmail" type="text" placeholder="Enter Email" runat="server"></asp:TextBox>
        <p>Password</p>
        <asp:TextBox ID="txtPassword" type="password" placeholder="••••••" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <a href="PublicRegister.aspx">Creat Account</a><br />
        
        <asp:Label ID="lblMessage" runat="server" Text="" CssClass="auto-style1"></asp:Label>

    </div>

</asp:Content>
