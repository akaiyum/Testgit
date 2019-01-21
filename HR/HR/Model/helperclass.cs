using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HR.Model
{
    public class helperclass
    {
        private string connectionString =
               @"server = .\sqlexpress; database = hr; integrated security = true";
        public string scalarReturn(string q)
        {
            string s;
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            try
            {
                SqlCommand cmd = new SqlCommand(q, conn);
               s = cmd.ExecuteScalar().ToString();
              
            }
            catch (Exception)
            {
                s = "-1";
                //throw;
            }
              return s;
          

        }
    }
}