using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Live
{
    public partial class ReportFormOneGrid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            RadioButtonList rbl = (RadioButtonList)GridView1.Rows[e.RowIndex].FindControl("RadioButtonList1");
            if (rbl.SelectedValue == "A")
                SqlDataSource1.UpdateParameters[3].DefaultValue = "A";
            else if (rbl.SelectedValue == "B")
                SqlDataSource1.UpdateParameters[3].DefaultValue = "B";
            else
                SqlDataSource1.UpdateParameters[3].DefaultValue = "C";

            CheckBoxList CBL = (CheckBoxList)GridView1.Rows[e.RowIndex].FindControl("CheckBoxList1");
            //List<string> CBList = new List<string>();
            string CBArray = "";
            foreach (ListItem li in CBL.Items)
            {
                if (li.Selected)
                    CBArray = CBArray +","+ li.Value;
                    //CBList.Add(li.Value);
            }
            SqlDataSource1.UpdateParameters[2].DefaultValue = CBArray;


            //Assigning Checkbox and Radiobutton values from Grid to SQLDatasource update parameters and the rest is taken care automatically for updating by the SQLDatasource itself using Bind() method for the field in Grid, 
            //Doing this before Row updated event ie..GridView1_RowUpdating
            //For drop down list , able to bind the value directly in Grid using Bind() method for Selectedvalue property
            //We can also explicity call below update command from here also
            //SqlDataSource1.Update();
            //GridView1.DataBind();



            //try
            //{ //Throws exception as below 
            //  //Updating is not supported by data source 'SqlDataSource1' unless UpdateCommand is specified.
            //  //Means sqldatasource need to be updated only with update command
            //    Label lb = (Label)GridView1.Rows[e.RowIndex].FindControl("Label6");
            //    DropDownList ddl = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1");
            //    RadioButtonList rbl = (RadioButtonList)GridView1.Rows[e.RowIndex].FindControl("RadioButtonList1");
            //    CheckBoxList chb = (CheckBoxList)GridView1.Rows[e.RowIndex].FindControl("CheckBoxList1");
            //    TextBox txb = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
            //    string T1 = GridView1.Rows[e.RowIndex].Cells[0].Text;
            //    string T2 = txb.Text;
            //    string T3 = chb.SelectedValue;
            //    string T4 = ddl.SelectedValue;
            //    string T5 = rbl.SelectedValue;
            //    ClassLibraryProject.EFDF.GRIDSIMPLEEDIT GE = new ClassLibraryProject.EFDF.GRIDSIMPLEEDIT { ID = Convert.ToInt16(GridView1.Rows[e.RowIndex].Cells[0].Text), TBOX = txb.Text, CB = chb.SelectedValue, RB = rbl.SelectedValue, DD = ddl.SelectedValue };
            //    ClassLibraryProject.EFDF.DAL dl = new ClassLibraryProject.EFDF.DAL();
            //    dl.GetEDITUpdateLessItemsProp(GE);
            //}
            //catch (Exception exc)
            //{
            //    //For any exception in data handling
            //    //Can register a script block to give popup for error and ask to cancel and report the web administrator
            //}
            ////Error in Updating data - Updating is not supported by ObjectDataSource 'ObjectDataSource2' unless the UpdateMethod is specified.
            //GridView1.EditIndex = -1;

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;


        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;

        }
    }
}