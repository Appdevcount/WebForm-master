using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.AECommerceCMS.SB_Admin_Theme
{
    public partial class SBAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SiteMapPath1_ItemCreated(object sender, SiteMapNodeItemEventArgs e)
        {
            //web.stemap file must be in root node to recognize the file
            
            //if ((e.Item.ItemType == SiteMapNodeItemType.Root) | (e.Item.ItemType == SiteMapNodeItemType.PathSeparator & e.Item.ItemIndex == 1))
            //{
            //    e.Item.Visible = false;
            //}
        }
    }
}