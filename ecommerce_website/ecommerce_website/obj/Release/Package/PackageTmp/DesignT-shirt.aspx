<%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="DesignT-shirt.aspx.cs" Inherits="ecommerce_website.DesignT_shirt" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            color: #000000;
        }

        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
            font-size: large;
            color: #000000;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            width: 200px;
        }
        .auto-style7 {
            text-align: right;
            font-size: large;
        }
        .auto-style8 {
            width: 200px;
            text-align: right;
            font-size: large;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="css/DesignT-shirt.css" rel="stylesheet" />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div align="center" style="margin-top: 50px">
                <tr>
                    <td><span class="auto-style1">Text:</span>
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="180px"></asp:TextBox>
                        &nbsp;<span class="auto-style1">Size:</span>&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                </asp:DropDownList>
                    </td>

                    <td>&nbsp;<span class="auto-style1">Color:</span>&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Black</asp:ListItem>
                <asp:ListItem>Red</asp:ListItem>
                <asp:ListItem>Green</asp:ListItem>
                <asp:ListItem>Yellow</asp:ListItem>
                <asp:ListItem>Blue</asp:ListItem>
                <asp:ListItem>White</asp:ListItem>
                <asp:ListItem>Orange</asp:ListItem>
            </asp:DropDownList>
                    </td>

                    <td>&nbsp;<span class="auto-style1">Font:&nbsp;</span>
                        <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem>Arial</asp:ListItem>
                            <asp:ListItem>Verdana</asp:ListItem>
                            <asp:ListItem>Times</asp:ListItem>
                            <asp:ListItem>Arial Black</asp:ListItem>
                            <asp:ListItem>Cambia Research</asp:ListItem>
                            <asp:ListItem>Tahoma</asp:ListItem>
                            <asp:ListItem> @Arial Unicode MS </asp:ListItem>
                        </asp:DropDownList>

                    </td>

                </tr>

                <div class="loadImage">
                    <%=LoadsecondImage() %>
                </div>

                <div class="image">
                    <h2>
                        <asp:Label ID="lbltext1" runat="server"></asp:Label></h2>
                    <%=LodeImage() %>
                </div>


                <div style="margin-top: 20px">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Choose Color:" CssClass="auto-style1"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btn1" runat="server" BackColor="#F4F4F4" BorderStyle="None" Height="15px" Width="20px" OnClientClick="btn1_Click" OnClick="btn1_Click1" />
                                &nbsp;<asp:Button ID="btn2" runat="server" BackColor="#565656" BorderStyle="None" Height="15px" Width="20px" OnClick="btn2_Click" />
                                &nbsp;<asp:Button ID="btn3" runat="server" BackColor="#DFF901" BorderStyle="None" Height="15px" Width="20px" OnClick="btn3_Click" />
                                &nbsp;<asp:Button ID="btn4" runat="server" BackColor="#85C8EA" BorderStyle="None" Height="15px" Width="20px" OnClick="btn4_Click" />
                                &nbsp;<asp:Button ID="btn5" runat="server" BackColor="#72E86F" BorderStyle="None" Height="15px" Width="20px" OnClick="btn5_Click" />
                                &nbsp;<asp:Button ID="btn6" runat="server" BackColor="#FE4B00" BorderStyle="None" Height="15px" Width="20px" OnClick="btn6_Click" />
                                &nbsp;<asp:Button ID="btn7" runat="server" BackColor="#654A2E" BorderStyle="None" Height="15px" Width="20px" OnClick="btn7_Click" />
                                &nbsp;<asp:Button ID="btn8" runat="server" BackColor="#531C70" BorderStyle="None" Height="15px" Width="20px" OnClick="btn8_Click" />
                                &nbsp;<asp:Button ID="btn9" runat="server" BackColor="#25A94C" BorderStyle="None" Height="15px" Width="20px" OnClick="btn9_Click" />
                                &nbsp;<asp:Button ID="btn10" runat="server" BackColor="#D94153" BorderStyle="None" Height="15px" Width="20px" OnClick="btn10_Click" />
                                &nbsp;<asp:Button ID="btn11" runat="server" BackColor="#1B421F" BorderStyle="None" Height="15px" Width="20px" OnClick="btn11_Click" />
                                &nbsp;<asp:Button ID="btn12" runat="server" BackColor="#1D1F37" BorderStyle="None" Height="16px" Width="20px" OnClick="btn12_Click" />
                                &nbsp;<asp:Button ID="btn13" runat="server" BackColor="#F0E642" BorderStyle="None" Height="15px" Width="20px" OnClick="btn13_Click" />
                                &nbsp;<asp:Button ID="btn14" runat="server" BackColor="#B2A075" BorderStyle="None" Height="16px" Width="20px" OnClick="btn14_Click" />
                                &nbsp;<asp:Button ID="btn15" runat="server" BackColor="#BBDFEB" BorderStyle="None" Height="15px" Width="20px" OnClick="btn15_Click" />
                            </td>
                        </tr>
                    </table>
                </div>

                <div style="margin-top: 15px" class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Clip Art:" CssClass="auto-style1"></asp:Label>
                </div>

                <div style="margin-top: 5px">
                    <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Height="200px" Width="600px" BorderColor="Black">
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="80px" RepeatColumns="5" RepeatDirection="Horizontal" Width="100%" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="White" ForeColor="#333333" />
                            <ItemTemplate>
                                <table style="width: 100%; height: 20px; margin: 5px">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="phImage" runat="server" ImageUrl='<%# "uploads/productLogo/" + Eval("logo") %>' OnCommand="Image_Click" CommandName="ImageClick" CommandArgument='<%# Eval("logo") %>' align="left" Width="80px" />
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



                <div style="margin-top:20px; " class="auto-style6">
                    <table>
                        <tr>
                            <td class="auto-style8"><strong><span class="auto-style4">Price: </span> </strong> </td>
                            <td class="auto-style5">
                                <asp:Label ID="lblprice" runat="server" Text="350 Tk/=" CssClass="auto-style3"></asp:Label></td>
                        </tr>

                        <tr>
                            <td class="auto-style8"><strong><span class="auto-style4">Size: </span> </strong> </td>
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
                            <td class="auto-style8"><strong><span class="auto-style4">Quantity:</span></strong></td>
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
                            <td class="auto-style8"><strong><span class="auto-style4">Total: </span> </strong> </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="txtTotal" runat="server" Width="100px"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td class="auto-style7"><strong><span class="auto-style4">Address:</span></strong></td>
                            <td>
                                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                    </table>

                </div>

                  <div style="margin-top:10px">
                    <tr>
                        <td>
                            <asp:Button ID="btnOrder" runat="server" Text="Order" BackColor="Lime" CssClass="auto-style4" Width="80px" OnClick="btnOrder_Click" />
                            <ajaxToolkit:DropShadowExtender ID="btnOrder_DropShadowExtender" runat="server" BehaviorID="btnOrder_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="btnOrder" TrackPosition="True" />
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="btnCancle" runat="server" Text="Cancle" BackColor="Red" CssClass="auto-style4" Width="80px" OnClick="btnCancle_Click" />
                            <ajaxToolkit:DropShadowExtender ID="btnCancle_DropShadowExtender" runat="server" BehaviorID="btnCancle_DropShadowExtender" Opacity="75" Radius="10" Rounded="True" TargetControlID="btnCancle" TrackPosition="True" />
                        </td>
                    </tr>
                </div>

                <div style="margin-top:10px; margin-bottom:10px">
                    <tr>
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                    </tr>
                </div>

            </div>

        </ContentTemplate>

    </asp:UpdatePanel>

</asp:Content>
