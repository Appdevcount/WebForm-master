using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace WebForm
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);

            //Custom Route addition
            routes.MapPageRoute("Custom", "D/{TESTPARAM}", "~/Default.aspx", true, 
                new RouteValueDictionary { { "TESTPARAM", "1" } });
        }
    }
}
