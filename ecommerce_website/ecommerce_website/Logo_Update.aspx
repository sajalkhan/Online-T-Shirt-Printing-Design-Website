<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Logo_Update.aspx.cs" Inherits="ecommerce_website.Logo_Update" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="css/LogoSize.css" rel="stylesheet" />
    <div align="center" style="margin-top: 47px">

        <tr>
            <asp:Label ID="lblText" runat="server" Text=""></asp:Label>
        </tr>

        <table style="width: 100%; margin-top: 3px">
            <tr>
                <td style="text-align: right; width: 520px; font-size: large; color: #000000;"><span style="font-size: x-large">Upload Logo:</span>&nbsp; </td>
                <td style="text-align: left; width: 260px;">
                    <asp:FileUpload ID="FileUpload1" runat="server" Style="margin-left: 0" Width="250px" BorderStyle="Solid" />
                </td>
                <td style="text-align: left">
                    <asp:Button ID="btnUpload" runat="server" Text="Submit" BackColor="#FFFF99" Height="28px" OnClick="btnUpload_Click" Width="80px" />
                    <ajaxToolkit:DropShadowExtender ID="btnUpload_DropShadowExtender" runat="server" BehaviorID="btnUpload_DropShadowExtender" Opacity="60" Radius="7" Rounded="True" TargetControlID="btnUpload" TrackPosition="True"></ajaxToolkit:DropShadowExtender>
                </td>
            </tr>
        </table>

        <div style="margin-top:290px">
            <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Height="200px" Width="600px" BorderColor="Black">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="80px" RepeatColumns="5" RepeatDirection="Horizontal" Width="100%" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="White" ForeColor="#333333" />
                    <ItemTemplate>
                        <table style="width: 100%; height: 20px; margin: 5px">
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "uploads/productlogo/"+ Eval("logo") %>' Height="80px" ImageAlign="Left" Width="80px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>

                    <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />

                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerce_website.Properties.Settings.MyCon %>" SelectCommand="SELECT [id], [logo] FROM [Logo]"></asp:SqlDataSource>

            </asp:Panel>
        </div>
    </div>

</asp:Content>
