using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HR.Model.Applicant;
using System.IO;

namespace HR.View.Applicant
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string msg = file_upload(FileUpload1);

            if(msg.Equals("-1")){
                Response.Write("<script>alert('Some error in uploading image.......');</script>");
            
            }else{

            Applicants ap = new Applicants();
            ap.ap_cninc = txtcnic.Text;
            ap.ap_password = txtpassword.Text;
            ap.ap_name = username.Text;
            ap.ap_phone1 = contact1.Text;
            ap.ap_phone2 = contact2.Text;
            ap.ap_image = msg;
            ap.ap_dob = Convert.ToDateTime(Calendar1.SelectedDate.ToShortDateString());
            ap.ap_email = txtemail.Text;
            if (Male.Checked==true)
            {
                ap.ap_gender = 1;
            }else{
                ap.ap_gender = 0;
            }
            ApplicantLogicLayer obj = new ApplicantLogicLayer();
           string msg2 = obj.insert(ap);
                if(msg2.Equals("1")){
                    Response.Write("<script>alert('Data Successfully Uploaded.......');</script>");
                }
            }
        }//btn event end,,,,,,

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
        }//end method



    }
}