using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            lblLoginMessage.Text = Session["msg"].ToString();
            lblLoginMessage.ForeColor = System.Drawing.Color.Red;
            Session["msg"] = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int er = 0;
            lblMessage.Text = "";

            if (txtName.Text == "")
            {
                er++;
                RequiredFieldValidator2.Text = "Required";
            }
            if(txtPassword.Text=="")
            {
                er++;
                RequiredFieldValidator3.Text = "Required";
            }
            if (er > 0) return;

            DAL.userInfo info = new DAL.userInfo();
            info.Email = txtName.Text;
            info.Password = txtPassword.Text;

            if(info.Login())
            {
                Session["id"] = info.Id;
                Session["name"] = info.Name;
                Session["role"] = info.Role;
                if(Session["rdr"].ToString()=="")
                {
                    Response.Redirect("Default.aspx");
                }
                Response.Redirect(Session["rdr"].ToString());
            }
            else
            {
                lblMessage.Text = "Invalid Login";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}