using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using HR.Model;
using HR.Model.Applicant;
using System.IO;

namespace HR.View.Applicant
{
    public partial class profile : System.Web.UI.Page
    {
        hrEntities db = new hrEntities();
        private string connectionString =
              @"server = .\sqlexpress; database = hr; integrated security = true";
       

        protected void Page_Load(object sender, EventArgs e)
        {
            Button7.Visible = false;
            PMAS.Visible = false;
            PGRAD.Visible = false;
            PHSC.Visible = false;
            PSSC.Visible = false;



            Panel2.Visible = false;


            HttpCookie cookie = Request.Cookies["UserDetails"];
            if (cookie != null)
            {
                if (Server.UrlDecode(cookie["Password"]) != null)
                {
                    helperclass hr = new helperclass();
                    Session["u_id"] = hr.scalarReturn("select ap_id from tbl_applicant_personal where ap_cninc='" + Server.UrlDecode(cookie["Name"]) + "'");

                    string q = "select ap_image,ap_name,ap_cninc,ap_phone1,ap_phone2,ap_email,ap_gender,ap_dob from tbl_applicant_personal where ap_id=" + Session["u_id"];
                    SqlConnection conn = new SqlConnection(connectionString);

                    try
                    {
                        SqlCommand com = new SqlCommand(q, conn);
                        conn.Open();
                        SqlDataReader rdr = com.ExecuteReader();
                        while (rdr.Read())
                        {
                            Label1.Text = rdr.GetValue(1).ToString();
                            Label2.Text = rdr.GetValue(2).ToString();
                            Label3.Text = rdr.GetValue(3).ToString();
                            Label4.Text = rdr.GetValue(4).ToString();
                            Label5.Text = rdr.GetValue(5).ToString();
                           
                            if (rdr.GetValue(6).ToString().Equals("1"))
                            {
                                Label6.Text = "Male";
                            }
                            else
                            {
                                Label6.Text = "Female";
                            }
                            Label7.Text = rdr.GetValue(7).ToString();
                            Image1.ImageUrl = rdr.GetValue(0).ToString();

                        }
                    }
                    catch (Exception)
                    {
                        Response.Redirect("~/View/Applicant/login.aspx");

                        //throw;
                    }

                }

            }
            else
            {
                Response.Redirect("~/View/Applicant/login.aspx");

            }

            if (Session["u_id"] == null)
            {
                Response.Redirect("~/View/Applicant/login.aspx");
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            HttpCookie cookie = Request.Cookies["UserDetails"];
            cookie.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(cookie);
            Response.Cookies["userId"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("~/View/Applicant/login.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;

            string q = "select ap_image,ap_name,ap_cninc,ap_phone1,ap_phone2,ap_email,ap_gender,ap_dob from tbl_applicant_personal where ap_id=" + Session["u_id"];
            SqlConnection conn = new SqlConnection(connectionString);

            try
            {
                SqlCommand com = new SqlCommand(q, conn);
                conn.Open();
                SqlDataReader rdr = com.ExecuteReader();
                while (rdr.Read())
                {
                    txtname.Text = rdr.GetValue(1).ToString();
                    lblcnic.Text = rdr.GetValue(2).ToString();
                    txtphone1.Text = rdr.GetValue(3).ToString();
                    txtphone2.Text = rdr.GetValue(4).ToString();
                    txtemail.Text = rdr.GetValue(5).ToString();
                    txtdob.Text = rdr.GetValue(7).ToString();
                    

                }
            }
            catch (Exception)
            {
               // Response.Redirect("~/View/Applicant/login.aspx");

                //throw;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Applicants ap = new Applicants();
            ap.ap_name = txtname.Text;
            ap.ap_cninc = lblcnic.Text;
            ap.ap_email = txtemail.Text;
            ap.ap_phone1 = txtphone1.Text;
            ap.ap_phone2 = txtphone2.Text;
            ap.ap_dob = Convert.ToDateTime(txtdob.Text);
            ap.ap_id = Convert.ToInt32(Session["u_id"].ToString());
            ApplicantLogicLayer logic = new ApplicantLogicLayer();

            logic.Update(ap);
            Response.Redirect("~/View/Applicant/profile.aspx"); 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           string s = file_upload(FileUpload1);
           if (s.Equals("-1"))
           {
               Label8.Text = "Image Could not be Uploaded,,,,,,,,";
           }
           else {

               ApplicantLogicLayer ap = new ApplicantLogicLayer();
               ap.UpdateImage(Convert.ToInt32(Session["u_id"]), s);
               Response.Redirect("~/View/Applicant/profile.aspx");
           }
        }
        /////
        public string file_upload(FileUpload fileupload)
        {
            string msg = "-1";

            if (fileupload.HasFile)
            {
                string fileextension = Path.GetExtension(fileupload.FileName);
                if (fileextension.ToLower() != ".png" && fileextension.ToLower() != ".jpg")
                {
                    Response.Write("<script>alert('only images are allowed to upload, please select jpg or png');</script>");
                }
                else
                {
                    int filesize = fileupload.PostedFile.ContentLength;
                    if (filesize > 2097152)
                    {
                        Response.Write("<script>alert('Only images are allowed to upload that are size of less than 2MB......');</script>");
                    }
                    else
                    {
                        Random r = new Random();

                        int r1 = r.Next();
                        int r2 = r.Next();

                        msg = "~/Content/Uploads/" + r1 + r2 + fileupload.FileName;
                        fileupload.SaveAs(Server.MapPath(msg));
                    }
                }

            }
            else
            {

                Response.Write("<script>alert('please select a file');</script>");

            }
            return msg;
        }




        //


        public string docu_upload(FileUpload fileupload)
        {
            string msg = "-1";

            if (fileupload.HasFile)
            {
                string fileextension = Path.GetExtension(fileupload.FileName);
                if (fileextension.ToLower() != ".doc" && fileextension.ToLower() != ".docx" && fileextension.ToLower() != ".pdf")
                {
                    Response.Write("<script>alert('only document are allowed to upload, please select jpg or png');</script>");
                }
                else
                {
                    int filesize = fileupload.PostedFile.ContentLength;
                    if (filesize > 2097152)
                    {
                        Response.Write("<script>alert('Only document are allowed to upload that are size of less than 2MB......');</script>");
                    }
                    else
                    {
                        Random r = new Random();

                        int r1 = r.Next();
                        int r2 = r.Next();

                        msg = "~/Content/Uploads/" + r1 + r2 + fileupload.FileName;
                        fileupload.SaveAs(Server.MapPath(msg));
                    }
                }

            }
            else
            {

                Response.Write("<script>alert('please select a file');</script>");

            }
            return msg;
        }















        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue.ToString().Equals("0"))
            {
                Response.Write("<script>alert('Please select qualification properly,,,,,');</script>");
            }
            else if (DropDownList1.SelectedValue.ToString().Equals("1"))
            {
                PMAS.Visible = false;
                PGRAD.Visible = false;
                PHSC.Visible = false;
                PSSC.Visible = true;
                string q = "select ssc_percentage,ssc_institute,ssc_doc from tbl_ssc where ssc_fk_ap_id=" + Session["u_id"];
                SqlConnection conn = new SqlConnection(connectionString);

                try
                {
                    SqlCommand com = new SqlCommand(q, conn);
                    conn.Open();
                    SqlDataReader rdr = com.ExecuteReader();
                    while (rdr.Read())
                    {
                        TextBox1.Text = rdr.GetValue(1).ToString();
                        TextBox2.Text = rdr.GetValue(0).ToString();
                        Button7.Visible = true;
                    }
                }
                catch (Exception)
                {
                    //sponse.Redirect("~/View/Applicant/login.aspx");

                    //throw;
                }



            }
            else if (DropDownList1.SelectedValue.ToString().Equals("2"))
            {
                PMAS.Visible = false;
                PGRAD.Visible = false;
                PHSC.Visible = true;
                PSSC.Visible = true;
            }
            else if (DropDownList1.SelectedValue.ToString().Equals("3"))
            {
                PMAS.Visible = false;
                PGRAD.Visible = true;
                PHSC.Visible = true;
                PSSC.Visible = true;
            }
            else if (DropDownList1.SelectedValue.ToString().Equals("4"))
            {
                PMAS.Visible = true;
                PGRAD.Visible = true;
                PHSC.Visible = true;
                PSSC.Visible = true;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        

        protected void Button4_Click1(object sender, EventArgs e)
        {
            string s = docu_upload(FileUpload3);
            if (s.Equals("-1"))
            {
                Label8.Text = "Image Could not be Uploaded,,,,,,,,";
            }
            else
            {
                tbl_hsc hsc = new tbl_hsc();
                hsc.hsc_institute = TextBox3.Text;
                hsc.hsc_percentage = float.Parse(TextBox4.Text);
                hsc.hsc_doc = s;
                hsc.hsc_fk_ap_id = Convert.ToInt32(Session["u_id"].ToString());
                db.tbl_hsc.AddObject(hsc);
                db.SaveChanges();
                Response.Write("<script>alert('data successfully inserted');</script>");
            }

        }//end method






    }
}