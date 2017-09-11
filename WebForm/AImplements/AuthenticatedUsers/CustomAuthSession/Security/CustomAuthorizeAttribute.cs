
using System;

using System.Collections.Generic;

using System.Linq;

using System.Web;

using System.Web.Mvc;

using System.Web.Routing;

using Isys_Iraq_Unsub.CustomAuthSession.Model;



namespace Isys_Iraq_Unsub.CustomAuthSession.Security

{

    public class CustomAuthorizeAttribute : AuthorizeAttribute

    {

        //Mainly for checking whether the user has roles those are allowed for this specific action

        public override void OnAuthorization(AuthorizationContext filterContext)

        {

            if (string.IsNullOrEmpty(SessionPersister.username))

                filterContext.Result = new RedirectToRouteResult(

                    new RouteValueDictionary(new

                    {

                        Controller = "CustomAuthorizeSession",

                        Action = "Login" //"AuthorizedCommonPage"

                    }));

            //else

            //{

            //    CustomAccountModel uacctm = new CustomAccountModel();

            //    CustomPrincipal cp = new CustomPrincipal(uacctm.finduseracct( SessionPersister.username));

            //    if(!cp.IsInRole(Roles))

            //    {

            //        filterContext.Result = new RedirectToRouteResult(

            //        new RouteValueDictionary(new

            //        {

            //            Controller = "CustomAuthnzSession",

            //            Action = "NotAuthorized"

            //        }));

            //    }

            //}



            ////base.OnAuthorization(filterContext);

        }

    }

}
