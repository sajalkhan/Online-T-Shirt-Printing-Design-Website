using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website.publicSite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "1.png" + ">";
            Session["image2"] = "";
        }


        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }
        protected void Image_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ImageClick")
            {
                string p = "";
                string price = "";
                string img = "";
                string im = "uploads/productImages/" + e.CommandArgument.ToString();

                for(int i=0;i<im.Length;i++)
                {
                    if (im[i] == ' ') break;
                    img += im[i];
                }

                int length = im.Length-1;
                for (int i=length;i>=0;i--)
                {
                    if (im[i] == 'g') break;
                    p += im[i];
                }

                for (int i = p.Length - 1; i >= 0; i--) price+= p[i];

                Session["getimg"] = img;
                Session["getprice"] = price;

                //Response.Redirect("BuyT-Shirt.aspx?image=" + img+ "&price="+price); // one way
                Response.Redirect("BuyT-Shirt.aspx");
            }
        }
        protected void Repeater1_ItemCreated1(object sender, RepeaterItemEventArgs e)
        {

        }
    }
}