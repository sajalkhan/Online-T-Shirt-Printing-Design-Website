<%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="product_List.aspx.cs" Inherits="ecommerce_website.publicSite.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="css/DefaultClient.css" rel="stylesheet" />

    <div class="productContainer">

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCreated="Repeater1_ItemCreated1">

            <ItemTemplate>
                <div class="product">
                    <h2><%# Eval("name") %></h2>
                    <asp:ImageButton ID="phImage" runat="server" style="height:350px; width:inherit" ImageUrl='<%# "uploads/productImages/" + Eval("image") %>'  OnCommand="Image_Click" CommandName="ImageClick" CommandArgument='<%# Eval("image") +" "+ Eval("price")%>'  />
                    <%--<img style="height:350px; width:inherit" src='<%# "uploads/productImages/" + Eval("image") %>' />--%>
                    <h2>Price: <%# Eval("price") %> Tk/=</h2>
                </div>
            </ItemTemplate>

        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecommerce_website.Properties.Settings.MyCon %>" SelectCommand="SELECT [name], [id], [image], [price] FROM [vw_product]"></asp:SqlDataSource>

    </div>
</asp:Content>
