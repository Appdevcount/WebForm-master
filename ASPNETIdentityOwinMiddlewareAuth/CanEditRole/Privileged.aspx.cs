using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETIdentityOwinMiddlewareAuth.CanEditRole
{
    public partial class Privileged : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Causes issue , need to check http://stackoverflow.com/questions/22765626/trust-relationship-between-and-the-primary-domain-failed-in-mvc5-authentic
        }
    }
}