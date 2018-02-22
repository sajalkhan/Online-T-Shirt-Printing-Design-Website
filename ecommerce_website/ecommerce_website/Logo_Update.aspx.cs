using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecommerce_website
{
    public partial class Logo_Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"].ToString() == "" || Session["role"].ToString()=="user")
            {
                Session["msg"] = "You Have to Login to View this Content";
                Session["rdr"] = "Logo_Update.aspx";
                Response.Redirect("LoginAdmin.aspx");
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if(!FileUpload1.HasFile)
            {
                lblText.Text = "   Plese Upload Logo First!";
                lblText.ForeColor = System.Drawing.Color.Red;
                return;
            }

            DAL.Logo L = new DAL.Logo();
            L.Image = System.IO.Path.GetFileName(FileUpload1.FileName);
            if(L.Insert())
            {
                lblText.Text = "Data Inserted!";
                lblText.ForeColor = System.Drawing.Color.Green;
                FileUpload1.SaveAs(Server.MapPath("uploads/productLogo/" + L.Image));
                Response.Redirect("Logo_Update.aspx");
            }
            else
            {
                lblText.Text = L.Error;
                lblText.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}