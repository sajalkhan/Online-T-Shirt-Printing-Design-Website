<%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="PublicRegister.aspx.cs" Inherits="ecommerce_website.PublicRegister" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            color: #CCCCCC;
        }
        .auto-style4 {
            color: #FFFFFF;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="css/userLogin.css" rel="stylesheet" />
    <div align="center" style="margin-top: 150px">
        <table style="height: 200px; width: 450px; border-radius: 15px 15px 15px 15px; background-image: url('images/Transparent Panel 3.png');">
            <tr>
                <td colspan="3" align="center" class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">Create An Account</span></td>
            </tr>
            <tr>
                <td style="text-align: right; " class="auto-style4"><strong>User Name:</strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtName" runat="server" Width="180px" Height="20px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td style="text-align: right; " class="auto-style4"><strong>Email:</strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px" Height="20px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td style="text-align: right; " class="auto-style4"><strong>Password:</strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtPassword" runat="server" Width="180px" Height="20px" TextMode="Password"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:Label ID="lblPassword" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td style="text-align: right; " class="auto-style4"><strong>Confirm Password:</strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtConfirmPass" runat="server" Width="180px" Height="20px" TextMode="Password"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:Label ID="lblConfirm" runat="server" Text=""></asp:Label></td>
            </tr>
        </table>
        <table style="margin-top: 10px">
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="Lime" Height="30px" Width="80px" OnClick="btnSubmit_Click" />
                    
                    <ajaxToolkit:DropShadowExtender ID="btnSubmit_DropShadowExtender" runat="server" BehaviorID="btnSubmit_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="btnSubmit" TrackPosition="True">
                    </ajaxToolkit:DropShadowExtender>
                    
                    &nbsp;
                    <asp:Button ID="btnReset" runat="server" Text="Reset" BackColor="Red" Height="30px" Width="80px" OnClick="btnReset_Click" />

                    <ajaxToolkit:DropShadowExtender ID="btnReset_DropShadowExtender" runat="server" BehaviorID="btnReset_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="btnReset" TrackPosition="True">
                    </ajaxToolkit:DropShadowExtender>

                </td>
            </tr>
        </table>

        <div align="center" style="margin-top: 20px; left: 50%">
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td>
            </tr>
        </div>
    </div>

</asp:Content>
