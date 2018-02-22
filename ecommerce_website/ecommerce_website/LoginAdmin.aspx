<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="ecommerce_website.LoginAdmin" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN FORM</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }

        .auto-style2 {
            width: 600px;
            border-radius: 15px 15px 15px 13px;
        }

        .auto-style5 {
            width: 188px;
        }

        .auto-style6 {
            width: 188px;
            text-align: center;
            height: 19px;
        }

        .auto-style7 {
            width: 205px;
            text-align: right;
            height: 32px;
        }

        .auto-style8 {
            width: 188px;
            height: 32px;
        }

        .auto-style9 {
            height: 32px;
            text-align: left;
            width: 189px;
        }

        .auto-style10 {
            width: 205px;
            text-align: center;
            height: 23px;
        }

        .auto-style11 {
            width: 188px;
            height: 23px;
            text-align: center;
        }

        .auto-style12 {
            height: 23px;
            width: 189px;
        }

        .auto-style13 {
            width: 205px;
            text-align: right;
        }
        .auto-style14 {
            width: 205px;
            text-align: center;
            height: 19px;
        }
        .auto-style15 {
            height: 19px;
            width: 189px;
        }
        .auto-style16 {
            width: 189px;
        }
    </style>
</head>

<body style="background-image: url('../images/bg-6-full.jpg')">
   
    <form id="form1" runat="server" style="margin-top:200px">

        <div class="auto-style1" style="width: 220px; margin: 0 auto;">ADMIN LOGIN</div>

        <table class="auto-style2" style="border: thin dotted #008000; margin: 0 auto; background-image: url('images/bg-7-full.jpg');">
            <tbody>
                <tr>
                    <td class="auto-style7">Email</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtName" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">Password</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>

                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <td class="auto-style14"></td>
                    <td class="auto-style6">

                        <asp:Button ID="btnLogin" runat="server" ForeColor="Black" OnClick="btnLogin_Click" Text="Login" Width="100px" BackColor="Lime" Height="30px" />
                        <ajaxToolkit:DropShadowExtender ID="btnLogin_DropShadowExtender" runat="server" BehaviorID="btnLogin_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="btnLogin" TrackPosition="True" Width="10" ViewStateMode="Enabled">
                        </ajaxToolkit:DropShadowExtender>
                        &nbsp;<td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11">
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style12"></td>
                </tr>
            </tbody>
        </table>

        <table style="margin-top:15px"; align="center">
            <td>
                <asp:Label ID="lblLoginMessage" runat="server" Text=""></asp:Label>
            </td>
        </table>
    </form>
</body>
</html>
