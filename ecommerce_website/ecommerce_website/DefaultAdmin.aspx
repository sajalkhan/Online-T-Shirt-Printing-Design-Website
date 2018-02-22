<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="DefaultAdmin.aspx.cs" Inherits="ecommerce_website._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <link href="css/Default.css" rel="stylesheet" />

    <div class="productContainer">

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCreated="Repeater1_ItemCreated"  >
            <ItemTemplate>
                <div class="product">
                    <h2><%# Eval("name") %></h2>
                    <%--<asp:ImageButton ID="phImage" runat="server" style="height:350px; width:inherit" ImageUrl='<%# "uploads/productImages/" + Eval("image") %>'  OnCommand="Image_Click" CommandName="ImageClick" CommandArgument='<%# Eval("image") %>' />--%>
                    <img style="height:350px; width:inherit" src='<%# "uploads/productImages/" + Eval("image") %>' />
                    <h2>Price: <%# Eval("price") %> Tk/=</h2>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerce_website.Properties.Settings.MyCon %>" SelectCommand="SELECT [id], [price], [name], [image] FROM [vw_product]"></asp:SqlDataSource>

    </div>
    </asp:Content>
