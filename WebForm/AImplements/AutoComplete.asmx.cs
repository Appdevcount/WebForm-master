﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebForm.AImplements
{
    /// <summary>
    /// Summary description for AutoComplete
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class AutoComplete : System.Web.Services.WebService
    {

        [WebMethod]
        public List<string> GetStudentNames(string searchTerm)
        {
            List<string> studentNames = new List<string>();
            //string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            //using (SqlConnection con = new SqlConnection(cs))
            //{
            //    SqlCommand cmd = new SqlCommand("spGetStudentNames", con);
            //    cmd.CommandType = CommandType.StoredProcedure;

            //    SqlParameter parameter = new SqlParameter("@searchTerm", searchTerm);
            //    cmd.Parameters.Add(parameter);
            //    con.Open();
            //    SqlDataReader rdr = cmd.ExecuteReader();
            //    while (rdr.Read())
            //    {
            //        studentNames.Add(rdr["Name"].ToString());
            //    }
            //}


            studentNames.Add("");
            return studentNames;
        }
    }
}
