using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.AdminLTE
{
    public partial class AdminLTE : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Can control Menu(runat="server") visibility based on Role from Master page code behind Load Event
            if (Session["AgRole"] != null)
            {
                string[] AllowedRolesforDiv1 = { "A", "B" };//The menu link can be within DIV/li/ul/a with runtat="server"
                string[] AllowedRolesforDiv2 = { "A", "B" };
                string[] AllowedRolesforDiv3 = { "A", "B" };
                string[] AllowedRolesforDiv4 = { "A", "B" };
                string[] AllowedRolesforDiv5 = { "A", "B" };
                //Div1.Visibile = AllowedRolesforDiv1.Contains(Session["AgRole"]);
                //Div2.Visibile = AllowedRolesforDiv1.Contains(Session["AgRole"]);
                //Div3.Visibile = AllowedRolesforDiv1.Contains(Session["AgRole"]);
                //Div4.Visibile = AllowedRolesforDiv1.Contains(Session["AgRole"]);
                //Div5.Visibile = AllowedRolesforDiv1.Contains(Session["AgRole"]);


                //Example - some of li or complete ul can be made invisible based on role of user
                //=================================================================================
                //<li id="UIElemetsGroupmenu" runat="server" class="treeview">
                //    <a href = "#" >
                //        < i class="fa fa-laptop"></i>
                //        <span>UI Elements</span>
                //        <span class="pull-right-container">
                //            <i class="fa fa-angle-left pull-right"></i>
                //        </span>
                //    </a>
                //    <ul class="treeview-menu">
                //        <li><a href = "pages/UI/general.html" >< i class="fa fa-circle-o"></i>General</a></li>
                //        <li><a href = "pages/UI/icons.html" >< i class="fa fa-circle-o"></i>Icons</a></li>
                //        <li><a href = "pages/UI/buttons.html" >< i class="fa fa-circle-o"></i>Buttons</a></li>
                //        <li><a href = "pages/UI/sliders.html" >< i class="fa fa-circle-o"></i>Sliders</a></li>
                //        <li><a href = "pages/UI/timeline.html" >< i class="fa fa-circle-o"></i>Timeline</a></li>
                //        <li><a href = "pages/UI/modals.html" >< i class="fa fa-circle-o"></i>Modals</a></li>
                //    </ul>
                //</li>
                
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}