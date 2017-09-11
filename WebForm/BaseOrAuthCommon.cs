using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebForm
{
    public class BaseOrAuthCommon : System.Web.UI.Page
    {
        //Master page has control after the Content page’s PreInit event, but before the content page’s Init event. 
        //During this brief slice of time, the master page is deserving of its name. 
        //The master page is in control - giving orders and rearranging controls. 
        //However, by the time the Init event fires the master page becomes just another child control inside the page

        //We can't assign master page dynamically from Content page load event
        //we know the master page has to rearrange the page’s control hierarchy before the (Content)Init event fires.
        //The simple solution is to just use the PreInit event, but we probably don’t want to write the 
        //PreInit event handler over and over for each web form in our application.
        //Chances are good the PreInit event handler will need to look up the master page name from a database,
        //or a cookie, or from some user preference settings.
        //We don’t want to duplicate this code in every webform. 
        //A better idea is to create a base class in a class library project, or in the App_Code directory.

        //As above for dynamic Master page linking,
        //Similarly above concept can be applied for Session values checking in 
        //Authentication/Authorization from Page load event
        public BaseOrAuthCommon()
        {
            this.PreInit += BaseOrAuthPage_PreInit;
            this.Load += BaseOrAuthPage_Load;
        }

        private void BaseOrAuthPage_Load(object sender, EventArgs e)
        {
            if (Session["AgUser"] == null)
            {
                Response.Redirect("/Login.aspx");//
            }
            if (Session["AgRole"] != null)
            {
                string[] AllowedRoles = { "A", "B" };
                if (!AllowedRoles.Contains(Session["AgRole"].ToString()))
                {
                    Response.Redirect("/NotAuthorized.aspx");//
                }

            }
            //throw new NotImplementedException();
        }

        private void BaseOrAuthPage_PreInit(object sender, EventArgs e)
        {
            //MasterPageFile = "~/Master1.master";
            //throw new NotImplementedException();
        }
    }
}