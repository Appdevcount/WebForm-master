using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETIdentityOwinMiddlewareAuth
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    LoginStatus.Text = string.Format("Hello {0}!!", User.Identity.GetUserName());
                    LoginStatus.Visible = true;
                    SignOutbtn.Visible = true;
                }
                else
                {
                    SignOutbtn.Visible = false;
                }
            }
            
        }

        protected void Loginbtn_Click(object sender, EventArgs e)
        {
            //var userStore = new UserStore<IdentityUser>();
            //var userManager = new UserManager<IdentityUser>(userStore);
            //var user = userManager.Find(Uname.Text, Pwd.Text);
            //if (user != null)
            //{
            //    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            //    var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            //    authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);
            //    Response.Redirect("~/Login.aspx");
            //}
            //else
            //{
            //    LoginStatus.Text = "Invalid username or password.";
            //    LoginStatus.Visible = true;
            //}

            ASPNETIdentityCLP.Authorizer A = new ASPNETIdentityCLP.Authorizer();
            string st=A.Login(Uname.Text, Pwd.Text);
            Response.Redirect("~/Login.aspx");

        }

        protected void SignOutbtn_Click(object sender, EventArgs e)
        {

            //var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            //authenticationManager.SignOut();
            //Response.Redirect("~/Login.aspx");


            ASPNETIdentityCLP.Authorizer A = new ASPNETIdentityCLP.Authorizer();
            A.SignOut();
            Response.Redirect("~/Login.aspx");

        }
    }
}