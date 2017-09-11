using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebForm.Live
{
    public partial class ReportForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Filling Gridview4 with Dataset datasource
            SqlConnection cn = new SqlConnection("data source=.;initial catalog=WEBFORMS;user id=sa;password=password");
            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT *   FROM [WEBFORMS].[dbo].[GRIDSIMPLEEDIT]", cn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView4.DataSource = ds;
            GridView4.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "JqueryUIblock", "JqueryUIblock()", true);
            //This is to practice on reprocessing a record particularly and updating button column based on status without whole page refresh
            if (e.CommandName == "editconfig")
            {
                int profdetid = Convert.ToInt16(e.CommandArgument);

                if (true)//reprocessed succsesfully
                {
                    Button bt = (Button)(GridView1.Rows[profdetid].Cells[5].Controls[0]);//Trying to get first control[Button] from Control collection property
                    bt.Text = "Processed";//Or we can bind the grid again with status from Database after processing
                    bt.Enabled = false;// This disables the button on successfull processing
                    //string sb = " <script type = 'text/javascript'> function SuccessStatus(){ alert('Success/Failure, This can be placed in modal as well');  } </script>";
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "SuccessStatus", sb, false);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "SuccessStatus", "SuccessStatus()", true);
                    //addscript tags[last argumnent] must be true else it cause below error and doesnt call javascript
                    //The script tag registered for type 'ASP.live_reportform_aspx' and key 'SuccessStatus' has invalid characters outside of the script tags: SuccessStatus().Only properly formatted script tags can be registered.

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "SuccessStatusF", "SuccessStatus()", true);
                    Button bt = (Button)(GridView1.Rows[profdetid].Cells[5].Controls[0]);
                    bt.Text = "Processed";//Or we can bind the grid again with status from Database after processing
                    bt.Enabled = true;// This disables the button on successfull processing
                }
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "JqueryUIUnblock", "JqueryUIUnblock()", true);
            }
        }
        //Bind() is used to two-way databinding.So when used with the proper type of datasource, it will pull the altered values out of the GridView or other control and save them back to the database.
        //Eval() is a one - way, "read only" way to bind the values.

        //For Editing the data, we can use Hidden field control for passing ID field value To and Fro

        protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // Retrieve the underlying data item. In this example
            // the underlying data item is a DataRowView object. 
            //DataRowView rowView = (DataRowView)e.Row.DataItem;// Error - Unable to cast object of type 'ClassLibraryProject.EFDF.LessPropItemData' to type 'System.Data.DataRowView'. As this is a object datasource and  not Datatable datasource . 
            ClassLibraryProject.EFDF.GRIDSIMPLEEDIT rowViewObject = (ClassLibraryProject.EFDF.GRIDSIMPLEEDIT)e.Row.DataItem;// Error - Unable to cast object of type 'ClassLibraryProject.EFDF.LessPropItemData' to type 'System.Data.DataRowView'. As this is a object datasource and  not Datatable datasource . 

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if ((e.Row.RowState & DataControlRowState.Edit) > 0)
                {
                    DropDownList dd = (DropDownList)e.Row.FindControl("DropDownList1");
                    RadioButtonList rb = (RadioButtonList)e.Row.FindControl("RadioButtonList1");
                    CheckBoxList cb = (CheckBoxList)e.Row.FindControl("CheckBoxList1");
                    dd.SelectedValue = rowViewObject.DD;// rowView[1].ToString();
                    rb.SelectedValue = rowViewObject.RB;// rowView[2].ToString();
                    string[] CBArray = rowViewObject.CB.Split(',');// rowView[3].ToString().Split(',');
                    
                    foreach(ListItem li in cb.Items)
                    {
                        li.Selected = CBArray.Contains(li.Value);
                    }
                }
            }
        }

        protected void GridView3_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView3.EditIndex = e.NewEditIndex;
        }

        protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {

            }
            catch
            {
                //For any exception in data handling
                //Can register a script block to give popup for error and ask to cancel and report the web administrator
            }
            //Error in Updating data - Updating is not supported by ObjectDataSource 'ObjectDataSource2' unless the UpdateMethod is specified.
            GridView1.EditIndex = -1;
        }
        
        protected void GridView3_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView3.EditIndex = -1;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            GridView5.DataBind();//This Databind call method will refresh grid , taking current condition value as well as its tied to textbox1
        }

        protected void GridView5_RowDataBound(object sender, GridViewRowEventArgs e)
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

        protected void GridView5_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                Label lb = (Label)GridView1.Rows[e.RowIndex].FindControl("Label6");
                DropDownList ddl = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1");
                RadioButtonList rbl = (RadioButtonList)GridView1.Rows[e.RowIndex].FindControl("RadioButtonList1");
                CheckBoxList chb = (CheckBoxList)GridView1.Rows[e.RowIndex].FindControl("CheckBoxList1");
                TextBox txb = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
                string T1 = GridView5.Rows[e.RowIndex].Cells[0].Text;
                string T2 = txb.Text;
                string T3 = chb.SelectedValue;
                string T4 =ddl.SelectedValue;
                string T5 =rbl.SelectedValue;
                ClassLibraryProject.EFDF.GRIDSIMPLEEDIT GE = new ClassLibraryProject.EFDF.GRIDSIMPLEEDIT { ID = Convert.ToInt16(GridView5.Rows[e.RowIndex].Cells[0].Text), TBOX = txb.Text, CB = chb.SelectedValue, RB = rbl.SelectedValue, DD = ddl.SelectedValue };
                ClassLibraryProject.EFDF.DAL dl = new ClassLibraryProject.EFDF.DAL();
                dl.GetEDITUpdateLessItemsProp(GE);
            }
            catch(Exception exc)
            {
                //For any exception in data handling
                //Can register a script block to give popup for error and ask to cancel and report the web administrator
            }
            //Error in Updating data - Updating is not supported by ObjectDataSource 'ObjectDataSource2' unless the UpdateMethod is specified.
            GridView1.EditIndex = -1;

        }

        protected void GridView5_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView3.EditIndex = e.NewEditIndex;

        }

        protected void GridView5_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView3.EditIndex = -1;

        }
    }
}