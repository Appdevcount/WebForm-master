using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.AImplements
{
    public partial class GridViewGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ClassLibraryProject.DataContainer c = new ClassLibraryProject.DataContainer();
            //c.MyProperty = 100;
            //Response.Write(c.MyProperty);
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }


        public static List<Customer> GetAllCustomers()
        {
            List<Customer> listCustomer = new List<Customer>();

            string CS = ConfigurationManager.ConnectionStrings["WEBFORMSConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from Customers", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Customer Customr = new Customer();
                    Customr.CustomerId = Convert.ToInt32(rdr["CustomerId"]);
                    Customr.Name = rdr["Name"].ToString();
                    Customr.Country = rdr["Country"].ToString();

                    listCustomer.Add(Customr);
                }
            }

            return listCustomer;
        }

        protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // Loop thru each datarow in the gridview
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // You can also retrieve salary using cell index in the row
                // Avoid using index, as this may not work correctly if the
                // order of columns is changed in the gridview control
                // int salary = Convert.ToInt32(e.Row.Cells[2].Text);
                // Retrieve salary
                int salary = Convert.ToInt32
                    (DataBinder.Eval(e.Row.DataItem, "CustomerId"));
                // If Salary > 70000, set your styles
                if (salary > 70000)
                {
                    e.Row.BackColor = System.Drawing.Color.Red;
                    e.Row.ForeColor = System.Drawing.Color.White;
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView3_DataBound(object sender, EventArgs e)
        {

            
        }
    }
    public class Customer
    {
        public int CustomerId { get; set; }
        public string Name { get; set; }
        public string Country { get; set; }
    }
}