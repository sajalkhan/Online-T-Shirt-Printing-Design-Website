using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website
{
    public partial class PublicRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int er = 0;
            if (txtName.Text == "")
            {
                er++;
                lblName.Text = "Required!";
                lblName.ForeColor = System.Drawing.Color.Red;
            }
            if (txtEmail.Text == "")
            {
                er++;
                lblEmail.Text = "Required!";
                lblEmail.ForeColor = System.Drawing.Color.Red;
            }
            if (txtPassword.Text == "")
            {
                er++;
                lblPassword.Text = "Required!";
                lblPassword.ForeColor = System.Drawing.Color.Red;
            }
            if (txtConfirmPass.Text == "")
            {
                er++;
                lblConfirm.Text = "Required!";
                lblConfirm.ForeColor = System.Drawing.Color.Red;
            }
            if (txtPassword.Text != txtConfirmPass.Text)
            {
                er++;
                lblConfirm.Text = "Password Doesn't Match!";
                lblConfirm.ForeColor = System.Drawing.Color.Red;
            }

            if (er > 0) return;

            DAL.userInfo user = new DAL.userInfo();
            user.Name = txtName.Text;
            user.Email = txtEmail.Text;
            user.Password = txtPassword.Text;
            user.Role = "user";

            if (user.Insert())
            {
                lblMessage.Text = "Registration Successfully!";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                txtName.Text = "";
                txtEmail.Text = "";
                txtPassword.Text = "";
                txtConfirmPass.Text = "";
            }
            else
            {
                lblMessage.Text = user.Error;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtConfirmPass.Text = "";
        }
    }
}