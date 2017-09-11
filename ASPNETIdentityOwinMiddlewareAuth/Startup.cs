using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;
using Microsoft.Owin.Security.Cookies;
using Microsoft.AspNet.Identity;
using ASPNETIdentityCLP;

[assembly: OwinStartup(typeof(ASPNETIdentityOwinMiddlewareAuth.Startup))]

namespace ASPNETIdentityOwinMiddlewareAuth
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // For more information on how to configure your application, visit http://go.microsoft.com/fwlink/?LinkID=316888
            app.CreatePerOwinContext(ApplicationDbContext.Create);
            app.CreatePerOwinContext<ApplicationUserManager>(ApplicationUserManager.Create);
            app.CreatePerOwinContext<ApplicationSignInManager>(ApplicationSignInManager.Create);
            app.CreatePerOwinContext<ApplicationRoleManager>(ApplicationRoleManager.Create);

            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/Login.aspx"),//Only if friendly URL is enabled in Empty WEBFORM Project, ir recognizes Login otherwise we need to mention Page as Login.aspx
                 ExpireTimeSpan= TimeSpan.FromMinutes(1)
            });
        }
    }
}
