using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RouteValueDictionary parameters =
                     new RouteValueDictionary
                    {
                        {"TESTPARAM", "6" }
                    };
            VirtualPathData vpd = RouteTable.Routes.GetVirtualPath(null, "Custom", parameters);

            Response.Write(Page.RouteData.Values["TESTPARAM"].ToString() + "   " + Page.GetRouteUrl("Custom", new { TESTPARAM = "5" }).ToString()+"    "+vpd.VirtualPath.ToString()+vpd.Route.ToString()+vpd.DataTokens.ToString());

            //Response.Redirect("~/Contact.aspx");
        }
    }
}