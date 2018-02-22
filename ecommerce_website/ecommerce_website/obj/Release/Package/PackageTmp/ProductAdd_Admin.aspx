<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductAdd_Admin.aspx.cs" Inherits="ecommerce_website.myAccount" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="margin-top: 100px">
        <strong><span style="color: #000000; font-size: xx-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size: xx-large; color: #006666">&nbsp;&nbsp;&nbsp;&nbsp; </span><span style="font-size: xx-large; color: #000000">ADD NEW PRODUCT</span></strong><br />
        <table align="center" style="width: 650px; margin: 0 auto; border-radius: 15px 15px 15px 15px; height: 180px; table-layout: auto; border-collapse: inherit; empty-cells: show; background-image: url('images/bg-7-full.jpg');" id="productTable">
            <tr>
                <td style="text-align: right; width: 247px; height: 22px;"></td>
                <td style="height: 22px"></td>
            </tr>
            <tr>
                <td style="text-align: right; width: 247px"><strong>Product Name</strong></td>
                <td>
                    <asp:TextBox ID="txtProductName" runat="server" Width="180px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProductName" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 247px">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>

                <td style="text-align: right; width: 247px"><strong>Product Category</strong></td>
                <td>
                    <asp:DropDownList ID="ddlProduct" runat="server" Width="180px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id" AppendDataBoundItems="True" OnSelectedIndexChanged="ddlProduct_SelectedIndexChanged">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlProduct" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerce_website.Properties.Settings.MyCon %>" SelectCommand="SELECT [id], [name] FROM [category]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>

                <td style="text-align: right; width: 247px">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; width: 247px"><strong>Product Description</strong></td>
                <td>
                    <asp:TextBox ID="txtProductDescription" runat="server" TextMode="MultiLine" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 247px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; width: 247px"><strong>Product Image</strong></td>
                <td>
                    <asp:FileUpload ID="fileImg" runat="server" Width="180px" />
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 247px; height: 19px">
                    <strong>
                        <br />
                        Product Price</strong></td>
                <td style="height: 19px">
                    <br />
                    <asp:TextBox ID="txtProductPrice" runat="server" Height="20px" Width="180px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtProductPrice" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 247px; height: 20px"></td>
                <td style="height: 20px; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="Lime" Font-Bold="True" Height="30px" OnClick="Button1_Click" Text="Submit" Width="120px" />
                    <ajaxToolkit:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" BehaviorID="Button1_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="Button1" TrackPosition="True" Width="10">
                    </ajaxToolkit:DropShadowExtender>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 247px; height: 20px">&nbsp;</td>
                <td style="height: 20px; text-align: center;">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
