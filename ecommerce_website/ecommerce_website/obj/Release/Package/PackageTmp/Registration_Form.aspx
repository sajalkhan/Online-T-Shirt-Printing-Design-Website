<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration_Form.aspx.cs" Inherits="ecommerce_website.Registration_Form" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div align="center" style="margin-top: 150px">
        <table style="height: 150px; width:450px; border-radius: 15px 15px 15px 15px">

            <tr>
                <td style="text-align: right; font-size: large;"><strong>User Name:</strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtName" runat="server" Width="180px" Height="20px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td style="text-align: right; font-size: large;"><strong>Email:</strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px" Height="20px"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td style="text-align: right; font-size: large;"><strong>Password:</strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtPassword" runat="server" Width="180px" Height="20px" TextMode="Password"></asp:TextBox></td>
                <td style="text-align: left">
                    <asp:Label ID="lblPassword" runat="server" Text=""></asp:Label></td>
            </tr>

            <tr>
                <td style="text-align: right; font-size: large;"><strong>Confirm Password:</strong></td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtConfirmPass" runat="server" Width="180px" Height="20px" TextMode="Password"></asp:TextBox></td>

            </tr>
        </table>
        <table style="margin-top: 10px">
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="Lime" Height="30px" Width="80px" OnClick="btnSubmit_Click" />
                    <ajaxToolkit:DropShadowExtender ID="btnSubmit_DropShadowExtender" runat="server" BehaviorID="btnSubmit_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="btnSubmit" TrackPosition="True"></ajaxToolkit:DropShadowExtender>
                    &nbsp;
                    <asp:Button ID="btnReset" runat="server" Text="Reset" BackColor="Red" Height="30px" Width="80px" />
                    <ajaxToolkit:DropShadowExtender ID="btnReset_DropShadowExtender" runat="server" BehaviorID="btnReset_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="btnReset" TrackPosition="True"></ajaxToolkit:DropShadowExtender>

                </td>
            </tr>
        </table>

        <div align="center" style="margin-top: 20px; left:50%">
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></td>
            </tr>
        </div>
    </div>
</asp:Content>
