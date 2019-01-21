using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HR.Model;


namespace HR.View.Applicant
{
    public partial class login : System.Web.UI.Page
    {
       
        helperclass hr = new helperclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["u_id"]!= null)
            {
                Response.Redirect("~/View/Applicant/profile.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string count = hr.scalarReturn("select count(ap_id) from tbl_applicant_personal where ap_cninc='"+txtcnic.Text+"'");
            if (count.Equals("0"))
            {
                Label1.Text = txtcnic.Text + "This Account Do'es not exist,,,,,,,,,";
            }
            else {
                string pwdfromdb = hr.scalarReturn("select ap_password from tbl_applicant_personal where ap_cninc='" + txtcnic.Text + "'");
                if (pwdfromdb.Equals(txtpassword.Text))
                {
                    Session["u_id"] = hr.scalarReturn("select ap_id from tbl_applicant_personal where ap_cninc='" + txtcnic.Text + "'");
                    

                    HttpCookie cookie = new HttpCookie("UserDetails");
                    cookie["Name"] = Server.UrlEncode(txtcnic.Text);
                    cookie["Password"] = Server.UrlEncode(txtpassword.Text);

                    cookie.Expires = DateTime.Now.AddDays(30);

                    Response.Cookies.Add(cookie);


                    Response.Redirect("~/View/Applicant/profile.aspx");


                }
                else {
                    Label1.Text = "Invalid Password";
                }
            }

        }
    }
}