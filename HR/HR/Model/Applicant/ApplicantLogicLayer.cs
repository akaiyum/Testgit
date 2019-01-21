using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HR.Model.Applicant
{
    public class ApplicantLogicLayer
    {
        private string connectionString =
               @"server = .\sqlexpress; database = hr; integrated security = true";
        public string insert(Applicants ap) {

            string msg = "-1";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("insert_tbl_applicant_personal", con);
            try
            {
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ap_name", SqlDbType.NVarChar, 100).Value = ap.ap_name;
                cmd.Parameters.Add("@ap_password", SqlDbType.NVarChar, 20).Value = ap.ap_password;
                cmd.Parameters.Add("@ap_cninc", SqlDbType.NVarChar, 30).Value = ap.ap_cninc;
                cmd.Parameters.Add("@ap_phone1", SqlDbType.NVarChar, 30).Value = ap.ap_phone1;
                cmd.Parameters.Add("@ap_phone2", SqlDbType.NVarChar, 30).Value = ap.ap_phone2;
                cmd.Parameters.Add("@ap_email", SqlDbType.NVarChar, 30).Value = ap.ap_email;
                cmd.Parameters.Add("@ap_image", SqlDbType.NVarChar).Value = ap.ap_image;
                cmd.Parameters.Add("@ap_gender", SqlDbType.Int).Value = ap.ap_gender;
                cmd.Parameters.Add("@ap_dob", SqlDbType.Date).Value = ap.ap_dob;
                cmd.ExecuteNonQuery();

                msg = "1";

            }
            catch (Exception)
            {

                throw;
            }
            finally {
                con.Close();
            }



            

            //  SELECT TOP 1000 [ap_id]
            //    ,[ap_name]
            //    ,[ap_cninc]
            //    ,[ap_phone1]
            //    ,[ap_phone2]
            //    ,[ap_email]
            //    ,[ap_image]
            //    ,[ap_gender]
            //    ,[ap_dob]
            //FROM [hr].[dbo].[tbl_applicant_personal]


            return msg;
        }//end

        public string Update(Applicants ap)
        {

            string msg = "-1";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("sp_updatepersonaldetail", con);
            try
            {
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ap_name", SqlDbType.NVarChar, 100).Value = ap.ap_name;
                cmd.Parameters.Add("@ap_cninc", SqlDbType.NVarChar, 30).Value = ap.ap_cninc;
                cmd.Parameters.Add("@ap_phone1", SqlDbType.NVarChar, 30).Value = ap.ap_phone1;
                cmd.Parameters.Add("@ap_phone2", SqlDbType.NVarChar, 30).Value = ap.ap_phone2;
                cmd.Parameters.Add("@ap_email", SqlDbType.NVarChar, 30).Value = ap.ap_email;
                cmd.Parameters.Add("@ap_dob", SqlDbType.Date).Value = ap.ap_dob;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = ap.ap_id;
                cmd.ExecuteNonQuery();

                msg = "1";

            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                con.Close();
            }





            //  SELECT TOP 1000 [ap_id]
            //    ,[ap_name]
            //    ,[ap_cninc]
            //    ,[ap_phone1]
            //    ,[ap_phone2]
            //    ,[ap_email]
            //    ,[ap_image]
            //    ,[ap_gender]
            //    ,[ap_dob]
            //FROM [hr].[dbo].[tbl_applicant_personal]


            return msg;
        }

        public string UpdateImage(int id, string path)
        {

            string msg = "-1";
            SqlConnection con = new SqlConnection(connectionString);
            

            try
            {
                SqlCommand cmd = new SqlCommand("update_userimage", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                cmd.Parameters.Add("@ap_image", SqlDbType.NVarChar).Value = path;
                cmd.Parameters.Add("@ap_id", SqlDbType.Int).Value = id;
                cmd.ExecuteNonQuery();

                msg = "1";

            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                con.Close();
            }





            //  SELECT TOP 1000 [ap_id]
            //    ,[ap_name]
            //    ,[ap_cninc]
            //    ,[ap_phone1]
            //    ,[ap_phone2]
            //    ,[ap_email]
            //    ,[ap_image]
            //    ,[ap_gender]
            //    ,[ap_dob]
            //FROM [hr].[dbo].[tbl_applicant_personal]


            return msg;
        }




    }
}