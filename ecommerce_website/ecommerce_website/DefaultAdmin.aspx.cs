using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }
        protected void Image_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "ImageClick")
            {
                //string image = e.CommandArgument.ToString();
                //e.CommandArgument -->  photoid value
                //Do something
            }
        }

        protected void Repeater1_ItemCreated(object sender, RepeaterItemEventArgs e)
        {

        }
    }
}