using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website
{
    public partial class AddNewCategory_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["role"].ToString()=="" || Session["role"].ToString()=="user")
            {
                Session["msg"] = "You Have to Login to View this Content";
                Session["rdr"] = "AddNewCategory_Admin.aspx";
                Response.Redirect("LoginAdmin.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int er = 0;
            lblMessage.Text = "";

            if(txtCategory.Text=="")
            {
                er++;
                RequiredFieldValidator1.Text = "Required";
            }
            if (er > 0) return;

            DAL.category c = new DAL.category();
            c.Name = txtCategory.Text;

            if(c.Insert())
            {
                lblMessage.Text = "Data Inserted Successfully!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMessage.Text = c.Error;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}