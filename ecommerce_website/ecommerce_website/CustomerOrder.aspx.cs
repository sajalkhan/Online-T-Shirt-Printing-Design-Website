using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website
{
    public partial class CustomerOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"].ToString() == "" || Session["role"].ToString()=="user")
            {
                Session["msg"] = "You Have to Login to View this Content";
                Session["rdr"] = "CustomerOrder.aspx";
                Response.Redirect("LoginAdmin.aspx");
            }
        }
    }
}