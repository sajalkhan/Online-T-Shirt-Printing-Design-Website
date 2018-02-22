using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["image1"] = "<img style=" + '"' + "height:400px; width:400px" + '"' + "src =" + "images/Choose_TShirt_Color/" + "1.png" + ">";
            Session["image2"] = "";
        }
    }
}