using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.AImplements
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataAccess.AdventureWorksDBEntities dbctx = new DataAccess.AdventureWorksDBEntities();
            GridView1.DataSource= dbctx.Addresses.Take(10).ToList();
            GridView1.DataBind();
        }
    }
}