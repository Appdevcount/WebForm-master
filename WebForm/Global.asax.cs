using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace WebForm
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        //Added the application error method in Global.asax as per for error handling - https://docs.microsoft.com/en-us/aspnet/web-forms/overview/getting-started/getting-started-with-aspnet-45-web-forms/aspnet-error-handling
        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs.

            // Get last error from the server
            Exception exc = Server.GetLastError();

            if (exc is HttpUnhandledException)
            {
                if (exc.InnerException != null)
                {
                    exc = new Exception(exc.InnerException.Message);
                    Server.Transfer("ErrorPage.aspx?handler=Application_Error%20-%20Global.asax",
                        true);
                }
            }
            Server.ClearError();//Most importantly clear the error after handled , so that it wont display same error next time
        }

        //Page error can be added at page levele as below in each page code behind
        //private void Page_Error(object sender, EventArgs e)
        //{
        //    Exception exc = Server.GetLastError();
        //    // Handle specific exception.
        //    if (exc is HttpUnhandledException)
        //    {
        //        ErrorMsgTextBox.Text = "An error occurred on this page. Please verify your " +
        //        "information to resolve the issue."
        //    }
        //    // Clear the error from the server.
        //    Server.ClearError();
        //}

    }
}