<%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="BuyT-Shirt.aspx.cs" Inherits="ecommerce_website.Buy_ProductbyClient" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style2 {
            font-size: large;
            color: #FFFFFF;
        }

        .auto-style5 {
            text-align: left;
        }

        .auto-style6 {
            text-align: right;
            font-size: large;
            color: #FFFFFF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>
            <div align="center" style="margin-top: 20px; padding-bottom: 30px">

                <div>
                    <asp:Image ID="imglode" runat="server" Style="height: 400px; width: inherit" />
                </div>

                <div style="margin-top:20px; width:200px">
                    <table>
                        <tr>
                            <td class="auto-style6"><strong>Price: </strong> </td>
                            <td class="auto-style5">
                                <asp:Label ID="lblprice" runat="server" Text="" CssClass="auto-style2"></asp:Label></td>
                        </tr>

                        <tr>
                            <td class="auto-style6"><strong>Size: </strong> </td>
                            <td class="auto-style5">
                                <asp:DropDownList ID="ddlSize" runat="server" Width="100px" AutoPostBack="True">
                                    <asp:ListItem>Small</asp:ListItem>
                                    <asp:ListItem>Medium</asp:ListItem>
                                    <asp:ListItem>Large</asp:ListItem>
                                    <asp:ListItem>X-Large</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style6"><strong>Quantity:</strong></td>
                            <td class="auto-style5">
                                <asp:DropDownList ID="ddlQuantity" runat="server" Width="100px" AutoPostBack="True" OnSelectedIndexChanged="ddlQuantity_SelectedIndexChanged">
                                    <asp:ListItem>--Select--</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style6"><strong>Total: </strong> </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="txtTotal" runat="server" Width="100px"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td class="auto-style6"><span>Address:</td>
                            <td>
                                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                    </table>

                </div>

                <div style="margin-top:10px">
                    <tr>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Buy" BackColor="Lime" Height="30px" Width="80px" OnClick="btnSubmit_Click" />
                            <ajaxToolkit:DropShadowExtender ID="btnSubmit_DropShadowExtender" runat="server" BehaviorID="btnSubmit_DropShadowExtender" Opacity="75" Radius="15" Rounded="True" TargetControlID="btnSubmit" TrackPosition="True" ViewStateMode="Enabled" />
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="btnCancle" runat="server" Text="Cancle" BackColor="Red" Height="30px" Width="80px" OnClick="btnCancle_Click" />
                            <ajaxToolkit:DropShadowExtender ID="btnCancle_DropShadowExtender" runat="server" BehaviorID="btnCancle_DropShadowExtender" Opacity="75" Radius="15" Rounded="True" TargetControlID="btnCancle" TrackPosition="True" />
                        </td>
                    </tr>
                </div>

                <div style="margin-top:5px">
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </div>
            </div>
            </div>
        </ContentTemplate>

    </asp:UpdatePanel>
</asp:Content>
