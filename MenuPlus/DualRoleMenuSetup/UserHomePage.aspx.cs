using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MenuPlus.DualRoleMenuSetup
{
    public partial class UserHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)

            {
                //Menu1.DataSource = NavigationManager.GetSiteMapDataSource("Admin");

                //Menu1.DataBind();
            }
        }
    }
}