using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website
{
    public partial class DesignT_shirt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string LodeImage()
        {
            return Session["image1"].ToString();
        }

        public string LoadsecondImage()
        {
            return Session["image2"].ToString();
        }

        protected void btn1_Click1(object sender, EventArgs e)
        {
            Session["tshirt-color"]= "images/Choose_TShirt_Color/1.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "1.png" + ">";
            LodeImage();
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/2.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "2.png" + ">";
            LodeImage();
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/3.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "3.png" + ">";
            LodeImage();
        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/4.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "4.png" + ">";
            LodeImage();
        }

        protected void btn5_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/5.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "5.png" + ">";
            LodeImage();
        }

        protected void btn6_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/6.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "6.png" + ">";
            LodeImage();
        }

        protected void btn7_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/7.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "7.png" + ">";
            LodeImage();
        }

        protected void btn8_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/8.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "8.png" + ">";
            LodeImage();
        }

        protected void btn9_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/9.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "9.png" + ">";
            LodeImage();
        }

        protected void btn10_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/10.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "10.png" + ">";
            LodeImage();
        }

        protected void btn11_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/11.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "11.png" + ">";
            LodeImage();
        }

        protected void btn12_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/12.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "12.png" + ">";
            LodeImage();
        }

        protected void btn13_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/13.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "13.png" + ">";
            LodeImage();
        }

        protected void btn14_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/14.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "14.png" + ">";
            LodeImage();
        }

        protected void btn15_Click(object sender, EventArgs e)
        {
            Session["tshirt-color"] = "images/Choose_TShirt_Color/15.png";
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "15.png" + ">";
            LodeImage();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedIndex>=0)
            {
                lbltext1.Text = TextBox1.Text;
                lbltext1.Font.Size = Convert.ToInt32(DropDownList1.Text);
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbltext1.Text = TextBox1.Text;
            lbltext1.ForeColor = System.Drawing.Color.FromName(DropDownList2.SelectedItem.Text.ToString());
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbltext1.Text = TextBox1.Text;
            lbltext1.Font.Name = DropDownList3.Text;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Image_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ImageClick")
            {
                string image = e.CommandArgument.ToString();
                Session["tshirt-Logo"] = "uploads/productLogo/" + image;
                Session["image2"] = "<img style=" + '"' + "height:90px; width:100px" + '"' + "src=" + "uploads/productLogo/" + image + ">";
                LoadsecondImage();
            }
        }

        protected void ddlQuantity_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlQuantity.SelectedIndex > 0)
            {
                int Total = 350;
                Total *= Convert.ToInt32(ddlQuantity.SelectedValue);
                txtTotal.Text = Total.ToString() + " Tk/=";
            }
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            if(txtTotal.Text=="")
            {
                lblMessage.Text = "Please Select Quantity!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            if (Session["role"].ToString() == "")
            {
                Session["msg"] = "You Have to Login to View this Content";
                Session["rdr1"] = "DesignT-shirt.aspx";
                Response.Redirect("PublicLogin.aspx");
            }

            DAL.customerOrder Order = new DAL.customerOrder();

            Order.Name = Session["name"].ToString();
            Order.Address = txtAddress.Text;
            Order.Logo = Session["tshirt-Logo"].ToString();
            Order.Text = lbltext1.Text;
            Order.Tshirt = Session["tshirt-color"].ToString();
            Order.UserId = Convert.ToInt32(Session["id"]);
            Order.Size = ddlSize.SelectedValue;
            Order.Quantity = Convert.ToInt32(ddlQuantity.SelectedValue);
            Order.price = Convert.ToInt32(ddlQuantity.SelectedValue)*350;

            if (Order.Insert())
            {
                lblMessage.Text = "Order Successfully!";
                lblMessage.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                lblMessage.Text = Order.Error;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnCancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("DefaultClient.aspx");
        }
    }
}