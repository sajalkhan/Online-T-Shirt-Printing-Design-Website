using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website.publicSite
{
    public partial class _public : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string loginmenu()
        {
            string s = "";
            if (Session["role"].ToString() == "")
            {
                s += "<li><a href=\"PublicRegister.aspx\">Register</a></li>";
                s += "<li><a href=\"PublicLogin.aspx\">Login</a></li>";
            }
            else
            {
                s += "<li><a href=\"Default.aspx\">" + Session["name"].ToString() + "</a></li>";
                s += "<li><a href=\"PublicLogout.aspx\">Logout</a></li>";
            }
            return s;
        }
    }
}