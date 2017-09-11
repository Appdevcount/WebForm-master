using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.AECommerceCMS.SB_Admin_Theme
{
    public partial class ExistingItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Creating event for the insert button
            //Button InsertB = new Button();
            //InsertB.Click += InsertB_Click1;  //Manual event generation creates private methods instead of Potercted so I changed the access specifier to protected here

            //GridView5.UseAccessibleHeader = true;
            //GridView5.HeaderRow.TableSection = TableRowSection.TableHeader;

        }
        public List<ClassLibraryProject.EFDF.ItemData> RepeaterDatasource()
        {

            //For Repeater Control- can use Dataset as source as like Gridview and Bind it
            //Can also use Object datasource as Gridview
            ClassLibraryProject.EFDF.WEBFORMSEntities dctx = new ClassLibraryProject.EFDF.WEBFORMSEntities();
            return dctx.ItemDatas.Where(i => i.ProfileDetId >= 1027 & i.ProfileDetId <= 1029).ToList<ClassLibraryProject.EFDF.ItemData>();
            //.Select(i => new { IName = i.ItemName, Imgloc = i.ItemDescription, ImgByte = i.ItemImage, IDESC = i.ItemDescription }).ToList();
        }

        //Manual event generation creates private methods instead of Potercted so I changed the access specifier to protected here
        protected void InsertB_Click(object sender, EventArgs e)
        {
            //Added footer templete and then added neccesary controls to Gridview to insert items to table with SQLDatasource
            SqlDataSource3.InsertParameters["ItemName"].DefaultValue = ((TextBox)GridView5.FooterRow.FindControl("InsertINAME")).Text;
            SqlDataSource3.InsertParameters["ItemDescription"].DefaultValue = ((TextBox)GridView5.FooterRow.FindControl("InsertIDESC")).Text;
            SqlDataSource3.InsertParameters["AvailableCount"].DefaultValue = ((TextBox)GridView5.FooterRow.FindControl("InsertIAvailableCount")).Text;
            SqlDataSource3.InsertParameters["ItemType"].DefaultValue = "";
            SqlDataSource3.InsertParameters["FromDate"].DefaultValue = DateTime.Now.ToString();
            SqlDataSource3.InsertParameters["ToDate"].DefaultValue = DateTime.Now.ToString();
            SqlDataSource3.InsertParameters["PublishDate"].DefaultValue = DateTime.Now.ToString();
            SqlDataSource3.InsertParameters["ItemIntroDate"].DefaultValue = DateTime.Now.ToString();
            SqlDataSource3.InsertParameters["Email"].DefaultValue = "";
            SqlDataSource3.InsertParameters["Gender"].DefaultValue = "";
            SqlDataSource3.InsertParameters["Continent"].DefaultValue = "";
            SqlDataSource3.InsertParameters["Country"].DefaultValue = "";
            SqlDataSource3.InsertParameters["ConfirmText2"].DefaultValue = "";
            SqlDataSource3.InsertParameters["ConfirmText1"].DefaultValue = "";
            SqlDataSource3.InsertParameters["InterestedTopicMulti"].DefaultValue = "";
            SqlDataSource3.Insert();

            //Its the same metyhod for Object datasource as well but by pass
            //ClassLibraryProject.EFDF.ItemData ie = new ClassLibraryProject.EFDF.ItemData();
            //ObjectDataSource1.InsertParameters[ie].DefaultValue = ie;
            //This is not pplicable, so for complex object as paraeter in Object datasource Insert , we can call directly the EF method from Insert button click
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Can fetch Data from DB and bind the grid as partial update using update panel
            //Can also sort programatically - Refer How to populate GridView from code behind and sort the GridView data programatically vid

        }

        protected void GridView5_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            //for  SQLDatasource it works fine but for Object datasource we need to special handle to get/set the  e.Affectedrows property value
            if (e.AffectedRows < 1)
            {
                e.KeepInEditMode = true;//Keep the edit mode active if update fails
                UpdateStatus.Text = "Row with ProfDetId = " + e.Keys[0].ToString() +
                    " is not updated due to data conflict";
                UpdateStatus.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                UpdateStatus.Text = "Row with ProfDetId = " + e.Keys[0].ToString() +
                    " is successfully updated";
                UpdateStatus.ForeColor = System.Drawing.Color.Navy;
            }
        }

        protected void GridView5_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            //for  SQLDatasource it works fine but for Object datasource we need to special handle to get/set the  e.Affectedrows property value
            if (e.AffectedRows < 1)
            {
                UpdateStatus.Text = "Row with ProfDetId = " + e.Keys[0].ToString() +
                    " is not deleted due to data conflict";
                UpdateStatus.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                UpdateStatus.Text = "Row with ProfDetId = " + e.Keys[0].ToString() +
                    " is successfully deleted";
                UpdateStatus.ForeColor = System.Drawing.Color.Navy;
            }
        }

        protected void GridView5_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
        protected void GridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            UpdateStatus.Text = e.Keys[0].ToString()+
            e.Keys.Values.ToString() +
            e.Values.ToString();
        }

        protected void GridView4_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView4_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            //for  SQLDatasource it works fine but for Object datasource we need to special handle to get/set the  e.Affectedrows property value
            if (e.AffectedRows < 1)
            {
                e.KeepInEditMode = true;//Keep the edit mode active if update fails
                UpdateStatus.Text = "Row with ProfDetId = " + e.Keys[0].ToString() +
                    " is not updated due to data conflict";
                UpdateStatus.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                UpdateStatus.Text = "Row with ProfDetId = " + e.Keys[0].ToString() +
                    " is successfully updated";
                UpdateStatus.ForeColor = System.Drawing.Color.Navy;
            }

        }

        protected void GridView4_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            //for  SQLDatasource it works fine but for Object datasource we need to special handle to get/set the  e.Affectedrows property value
            if (e.AffectedRows < 1)
            {
                UpdateStatus.Text = "Row with ProfDetId = " + e.Keys[0].ToString() +
                    " is not deleted due to data conflict";
                UpdateStatus.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                UpdateStatus.Text = "Row with ProfDetId = " + e.Keys[0].ToString() +
                    " is successfully deleted";
                UpdateStatus.ForeColor = System.Drawing.Color.Navy;
            }
        }
        
        protected void ObjectDataSource1_Deleting(object sender, ObjectDataSourceMethodEventArgs e)
        {

        }

        protected void ObjectDataSource1_Deleted(object sender, ObjectDataSourceStatusEventArgs e)
        {
            if (e.ReturnValue is int && (int)e.ReturnValue > 0)
            {
                e.AffectedRows = (int)e.ReturnValue;
            }
        }

        protected void GridView4_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void ObjectDataSource1_Updated(object sender, ObjectDataSourceStatusEventArgs e)
        {
            if (e.ReturnValue is int && (int)e.ReturnValue > 0)
            {
                e.AffectedRows = (int)e.ReturnValue;
            }
        }
        
    }
}