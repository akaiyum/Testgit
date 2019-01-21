using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HR.Model.Applicant
{
    public class Applicants
    {
        public int ap_id { get; set; }
        public string ap_name { get; set; }
        public string ap_password { get; set; }
        public string ap_cninc { get; set; }
        public string ap_phone1 { get; set; }
        public string ap_phone2 { get; set; }
        public string ap_email { get; set; }
        public string ap_image { get; set; }
        public int ap_gender { get; set; }
        public DateTime ap_dob { get; set; }

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







}