<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewCategory_Admin.aspx.cs" Inherits="ecommerce_website.AddNewCategory_Admin" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/MyStyle.css" rel="stylesheet" />
    <div align="center" style="margin-top:150px">

        <table width="500" height="155"  style="border-radius:75px 5px; background-image: url('../images/bg-7-full.jpg');">

            <tr>
                <td colspan="2" align="center" style="font-size: x-large"><strong>Add New Category</strong></td>
            </tr>

            <tr>
                <td style="text-align: center; height: 39px;"><strong>Category Name: </strong></td>
                <td style="text-align: left; height: 39px;">&nbsp;&nbsp;
              <asp:TextBox ID="txtCategory" runat="server" Width="170px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCategory" ErrorMessage="Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td colspan="2" align="center" style="height: 45px">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="100px" BackColor="#76FF03" Height="25px" OnClick="btnSubmit_Click" />
                    <ajaxToolkit:DropShadowExtender ID="btnSubmit_DropShadowExtender" runat="server" BehaviorID="btnSubmit_DropShadowExtender" TargetControlID="btnSubmit" Opacity="50" Radius="10" Rounded="True" ViewStateMode="Enabled">
                    </ajaxToolkit:DropShadowExtender>
                </td>
            </tr>

        </table>

    </div>

         <table class="lblMessageforProduct">
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="True"></asp:Label>
                </td>
            </tr>
        </table>

</asp:Content>
