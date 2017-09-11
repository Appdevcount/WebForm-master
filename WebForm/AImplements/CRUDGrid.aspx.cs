using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.AImplements
{
    public partial class CRUDGrid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataSet ds = new DataSet();
            //GridView6.DataSource = ds;
            //GridView6.DataBind();
            //GridView7.DataSource = ClassLibraryProject.EFDF.DAL.GetMultiInterests();
            //GridView7.DataBind();
            GridView7.UseAccessibleHeader = true;
            GridView7.HeaderRow.TableSection = TableRowSection.TableHeader;

            //Page wise Response Cacheing
            //<%@ OutputCache Duration = "10" Location = "ServerAndClient" VaryByParam = "None" VaryByControl = "GridView7" %>
            Response.Cache.SetExpires(DateTime.Now.AddMinutes(10));
            Response.Cache.SetCacheability(HttpCacheability.ServerAndPrivate);
            Response.Cache.VaryByParams["None"] = true;
            //Cacheing can be done by user control wise **and importantly can control sharing cache for that user control using shared attrivute for Cache
            //<%@ OutputCache Duration = "10" Location = "ServerAndClient" VaryByParam = "None" VaryByControl = "GridView7" Shared = "true" %>
            //[PartialCaching(60, VaryByControls = "DropDownList1")]
            //public partial class UCProductsControl : System.Web.UI.UserControl
            //{
            //    //...Rest of the UCProductsControl code
            //}

            //Data Storage Cacheing example
            //if (Cache["ProductsData"] != null)
            //{
            //    // If data is cached, retrieve data from Cache using the key "ProductsData"
            DataSet ds = (DataSet)Cache["ProductsData"];
            //    // Set the dataset as the datasource
            //    gvProducts.DataSource = ds;
            //    gvProducts.DataBind();
            //    // Retrieve the total rows count
            //    sbMessage.Append(ds.Tables[0].Rows.Count.ToString() + " rows retrieved from cache.");
            //}
            //// If the data is not cached
            //else
            //{
            //    // Get the data from the database
            //    DataSet ds = GetProductsData();
            //    // Cache the dataset using the key "ProductsData"
            //    Cache["ProductsData"] = ds;
            //}
            //Cache["MyKey"] = "Value 2";
            //Cache["ProductsData"] = ds;
            //Cache.Insert("ProductsData", ds);
            //Cache.Add("ProductsData", ds, null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.Web.Caching.Cache.NoSlidingExpiration, 
            //    System.Web.Caching.CacheItemPriority.Default, null);
            //Cache.Insert("ProductsData", ds, null, DateTime.Now.AddSeconds(10), System.Web.Caching.Cache.NoSlidingExpiration);
            //Cache.Insert("ProductsData", ds, null, System.Web.Caching.Cache.NoAbsoluteExpiration, TimeSpan.FromSeconds(10));

            ////Cookies in ASP.NET/ Usefull in remembering user credentail at client side for auto loggin in
            //HttpCookie cookie = new HttpCookie("CookieObject");
            //cookie.Expires = DateTime.Now.AddMinutes(10);
            //cookie["Name"] = "";
            //cookie["Password"] = "";
            //Response.Cookies.Add(cookie);//This stores the cookie at client side

            //HttpCookie cookie2 = Request.Cookies["TestCookie"];//To check if Cookies are  enabled or not at client side
            //if (cookie2 == null)
            //{
            //    //lblMessage.Text = "We have detected that, the cookies are disabled on your browser. Please enable cookies.";
            //}
            //if Cookies are disabled at client side then Cookie less session should be used as alternate way
            //To enable cookieless sessions, set cookieless = "true" in web.config as shown below.
            //<sessionState mode = "InProc" cookieless = "true" ></ sessionState >
            //Then need to use Relative URLs alone in Page redirection
            //Response.Redirect("~/WebForm2.aspx") - Relative URL
            //and not
            //Response.Redirect("http://pragimtech.com/WebFOrm2.aspx") - Absolute URL(or Complete Path)

            //ViewState, SessionState and ApplicationState
            ViewState["k"] = "";//Valid only for that Webform
            Session["g"] = ""; //Valid across webforms until session expires
            //if (Session["Name"] != null)
            Application["h"] = ""; //Valid across application irrespective of User and session




        }
        protected void Button5_Click1(object sender, EventArgs e)
        {
            Label2.Text = "updatepanel";
        }

        protected void GridView6_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //ObjectDataSource1.DeleteParameters["ProfileDetId"].DefaultValue = e.Keys[1].ToString();
            //ObjectDataSource1.Delete();
        }


        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //int Index = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "EditData")
            {
                StringBuilder sb = new StringBuilder();
                sb.Append("<script type='text/javascript'>");
                sb.Append("$('#DeleteModal').modal('show');");
                sb.Append("</script>");
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "em", sb.ToString(), false);
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "em", sb.ToString(), true);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "PopupModal();", true);

            }
            else if (e.CommandName == "DetailsData")
            {

            }
            else if (e.CommandName == "DeleteData")
            {

            }

        }

        protected void Modaltest_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            //sb.Append("<script type='text/javascript'>");
            sb.Append("$('#TESTMODAL').modal('show');");
            //sb.Append("</script>");
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "em", sb.ToString(), false);
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "em","" , true);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "PopupModal();", true);
        }
    }
}