using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Live
{
    public partial class ReportFormOneGridDS : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            //For manual databinding , disable autogenerate columns in gridview . Can add columns manually as boundfield/commandfield/buttonfield for various purpose matching the SQL query result
            if (!Page.IsPostBack)
            {
                ShowGrid();
            }

        }

        private void ShowGrid()
        {
            SqlConnection conn = new SqlConnection("Data Source=IKW-SDS-RS;Initial Catalog=WEBFORMS;User ID=sa;Password=password");
            conn.Open();
            string cmd = "SELECT * FROM GRIDSIMPLEEDIT ";
            SqlDataAdapter dAdapter = new SqlDataAdapter(cmd, conn);
            DataSet ds = new DataSet();
            dAdapter.Fill(ds);
            dt = ds.Tables[0];
            //Bind the fetched data to gridview
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            ShowGrid();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            ShowGrid();

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                Label lb = (Label)GridView1.Rows[e.RowIndex].FindControl("Label6");
                DropDownList ddl = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1");
                RadioButtonList rbl = (RadioButtonList)GridView1.Rows[e.RowIndex].FindControl("RadioButtonList1");
                CheckBoxList chb = (CheckBoxList)GridView1.Rows[e.RowIndex].FindControl("CheckBoxList1");
                TextBox txb = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
                string T1 = GridView1.Rows[e.RowIndex].Cells[0].Text;
                string T2 = txb.Text;
                string T3 = chb.SelectedValue;
                string T4 = ddl.SelectedValue;
                string T5 = rbl.SelectedValue;
                ClassLibraryProject.EFDF.GRIDSIMPLEEDIT GE = new ClassLibraryProject.EFDF.GRIDSIMPLEEDIT { ID = Convert.ToInt16(GridView1.Rows[e.RowIndex].Cells[0].Text), TBOX = txb.Text, CB = chb.SelectedValue, RB = rbl.SelectedValue, DD = ddl.SelectedValue };
                ClassLibraryProject.EFDF.DAL dl = new ClassLibraryProject.EFDF.DAL();
                dl.GetEDITUpdateLessItemsProp(GE);
                GridView1.EditIndex = -1;
                ShowGrid();
            }
            catch (Exception exc)
            {
                //For any exception in data handling
                //Can register a script block to give popup for error and ask to cancel and report the web administrator
            }


        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            DataRowView drv = (DataRowView)e.Row.DataItem;

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if ((e.Row.RowState & DataControlRowState.Edit) > 0)
                {
                    DropDownList dd = (DropDownList)e.Row.FindControl("DropDownList1");
                    RadioButtonList rb = (RadioButtonList)e.Row.FindControl("RadioButtonList1");
                    CheckBoxList cb = (CheckBoxList)e.Row.FindControl("CheckBoxList1");
                    dd.SelectedValue = drv[1].ToString();
                    rb.SelectedValue = drv[2].ToString();
                    string[] CBArray = drv[3].ToString().Split(',');

                    foreach (ListItem li in cb.Items)
                    {
                        li.Selected = CBArray.Contains(li.Value);
                    }
                }
            }

        }
    }
}