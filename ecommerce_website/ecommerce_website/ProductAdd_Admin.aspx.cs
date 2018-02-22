using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website
{
    public partial class myAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["role"].ToString()=="" || Session["role"].ToString()=="user")
            {
                Session["msg"] = "You Have to Login to View this Content";
                Session["rdr"] = "ProductAdd_Admin.aspx";
                Response.Redirect("LoginAdmin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int er = 0;
            lblMessage.Text = "";

            if(txtProductName.Text=="")
            {
                er++;
                RequiredFieldValidator1.Text = "Required";
            }
            if(txtProductPrice.Text=="")
            {
                er++;
                RequiredFieldValidator3.Text = "Required";
            }
            if (er > 0) return;

            DAL.product p = new DAL.product();
            p.Name = txtProductName.Text;
            p.Descriptioin = txtProductDescription.Text;
            p.CategoryId = Convert.ToInt32( ddlProduct.SelectedItem.Value);
            p.price =Convert.ToDouble( txtProductPrice.Text);
            p.Image = System.IO.Path.GetFileName(fileImg.FileName);

            if(p.Insert())
            {
                lblMessage.Text = "Data Inserted";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                fileImg.SaveAs(Server.MapPath("uploads/productImages/" + p.Image));
            }
            else
            {
                lblMessage.Text = p.Error;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void ddlProduct_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}