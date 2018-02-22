<%@ Page Title="" Language="C#" MasterPageFile="~/publicSite/public.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="ecommerce_website.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
            font-size: large;
        }
        .auto-style3 {
            text-align: left;
            font-size: large;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style7 {
            font-size: medium;
        }
        .auto-style9 {
            font-size: xx-large;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/userLogin.css" rel="stylesheet" />
    <div align="center" style="margin-top:50px">

        <img style="height: 400px; width: 350px; margin-top:20px" src="images/sajal.png" />
        <br />
        <table>
            <tr>
                <td class="auto-style2">&nbsp; Developer: </td>
                &nbsp;<td class="auto-style3">&nbsp; Md.Soharub Hossen</td>
            </tr>
            <tr>
                <td class="auto-style2">Contact Number:</td>
                <td class="auto-style3">&nbsp; +880-1740980351</td>
            </tr>
            <tr>
                <td class="auto-style2">Email:</td>
                <td class="auto-style3">&nbsp; md.soharubhossen@gmail.com</td>
            </tr>

        </table>
        <hr />
        <table>
            <tr>
                <td class="auto-style2">Trainner:</td>
                <td class="auto-style3">Asaduzzaman Arif</td>
            </tr>
            <tr>
                <td class="auto-style2">Contact Number:</td>
                <td class="auto-style3">+880-1841111102</td>
            </tr>
            <tr>
                <td class="auto-style2">Email:</td>
                <td class="auto-style3">asad.ist@gmail.com</td>
            </tr>
        </table>
        &nbsp;<hr />

        &nbsp;<div class="auto-style5">
            <p class="auto-style9">Project Description:</p>
            <p class="auto-style7">Online Printed T-Shirt Designing will have registration for new Users and login for Members. <strong>This software will have Admin Login which will check for new request and orders,</strong> Member Login in which they can create customize design using wide range of Colors & Design, and can even place bulk order for the same. <strong>The system first allows users to select tshirt design. After that user may choose desired color.</strong> <strong>The next step allows users to choose designs and text to be printed on the tshirt. </strong>After user finalizes the cost of design is calculated and user may pay online for it. This Ordered T-Shirt will be delivered to their door steps. <strong>The Admin Login will accept request to check design, approve Order, and create bill.</strong></p>
        </div>
    </div>

    <div style="margin-bottom:20px">
        <p align="left" class="auto-style9">
          Advantages:
          <ul class="auto-style7">
              <li>Saves time of user.</li>
              <li>Gets Huge Choice of Colors.</li>
              <li>Gets Virtual View of T-Shirts.</li>
              <li>Make it Personalized.</li>
              <li>T-Shirt comes to users doorsteps.</li>
          </ul>
        </p>

    </div>

    </span>

    <div class="container">
        <iframe width="750" height="500" src="https://www.youtube.com/embed/Jj2gHxI37bg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
    </div>

</asp:Content>
