using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website
{
    public partial class PublicLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lblMessage.Text = "";
                lblMessage.Text = Session["msg"].ToString();
                lblMessage.ForeColor = System.Drawing.Color.Red;
                Session["msg"] = "";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int er = 0;
            lblMessage.Text = "";

            if (txtEmail.Text == "")
            {
                er++;
                lblMessage.Text = "Please Insert Email";
            }
            if (txtPassword.Text == "")
            {
                er++;
                lblMessage.Text ="Please Insert Password";
            }
            if(txtEmail.Text=="" && txtPassword.Text=="")
            {
                er++;
                lblMessage.Text = "Please Insert Email and Password!";
            }
            if (er > 0) return;

            DAL.userInfo user = new DAL.userInfo();
            user.Email = txtEmail.Text;
            user.Password = txtPassword.Text;

            if (user.Login())
            {
                Session["id"] = user.Id;
                Session["name"] = user.Name;
                Session["role"] = user.Role;
                if (Session["rdr1"].ToString() == "")
                {
                    Response.Redirect("Default.aspx");
                }
                Response.Redirect(Session["rdr1"].ToString());
            }
            else
            {
                lblMessage.Text = "Invalid Login";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}