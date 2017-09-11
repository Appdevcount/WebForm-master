using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using MVC_ASPNET_Identity.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace ASPNETIdentityCLP
{
    public class Authorizer
    {
        public string Register(string Username,string Password)
        {
            //// Default UserStore constructor uses the default connection string named: DefaultConnection
            //var userStore = new UserStore<IdentityUser>();
            //var manager = new UserManager<IdentityUser>(userStore);
            //var user = new IdentityUser() { UserName = "" };
            //IdentityResult result = manager.Create(user, "");
            //if (result.Succeeded)
            //{
            //  string  StatusMessage = string.Format("User {0} was created successfully!", user.UserName);
            //}
            //else
            //{
            //    string StatusMessage = result.Errors.FirstOrDefault();
            //}


            //// Default UserStore constructor uses the default connection string named: DefaultConnection
            //var userStore = new UserStore<IdentityUser>();
            //var manager = new UserManager<IdentityUser>(userStore);
            //var user = new IdentityUser() { UserName = Username };
            //IdentityResult result = manager.Create(user,Password);
            //if (result.Succeeded)
            //{
            //    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            //    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            //    authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
            //    return "SUccess";
            //    //Response.Redirect("~/Login.aspx");
            //}
            //else
            //{
            //    string StatusMessage = result.Errors.FirstOrDefault();
            //    return StatusMessage;
            //}

            try {
                var user = new ApplicationUser() { UserName = Username };
                IdentityResult IdRoleResult;
                IdentityResult IdUserResult;

                IdentityResult res = UserManager.Create(user, Password);
                if (res.Succeeded)
                {
                    var userIdentity = UserManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                    //     Creates a user identity and then signs the identity using the AuthenticationManager
                    SignInManager.SignInAsync(user, isPersistent: false, rememberBrowser: false);
                    //if creation succesfull then signin and redirect to a Home page

                    //========
                    // Access the application context and create result variables.
                    ApplicationDbContext context = new ApplicationDbContext();

                    // Create a RoleStore object by using the ApplicationDbContext object. 
                    // The RoleStore is only allowed to contain IdentityRole objects.
                    //var roleStore = new ApplicationRoleStore<ApplicationRole>(context);
                    // Create a RoleManager object that is only allowed to contain IdentityRole objects.
                    // When creating the RoleManager object, you pass in (as a parameter) a new RoleStore object. 
                    //var roleMgr = new ApplicationRoleManager<ApplicationRole>(roleStore);

                    var roleMgr = HttpContext.Current.GetOwinContext().Get<ApplicationRoleManager>();

                    // Then, you create the "canEdit" role if it doesn't already exist.
                    if (!roleMgr.RoleExists("canEdit"))
                    {
                        IdRoleResult = roleMgr.Create(new ApplicationRole { Name = "canEdit" ,Id=Guid.NewGuid().ToString()});
                    }
                    // If the new "canEdit" user was successfully created, 
                    // add the "canEdit" user to the "canEdit" role. 
                    if (!UserManager.IsInRole(UserManager.FindByName(Username).Id, "canEdit"))
                    {
                        IdUserResult = UserManager.AddToRole(UserManager.FindByName(Username).Id, "canEdit");
                    }
                    //========


                    return "SUccess";
                    //Response.Redirect("~/Login.aspx");
                }
                else
                {
                    string StatusMessage = res.Errors.FirstOrDefault();
                    return StatusMessage;
                }
            }
            catch (DbEntityValidationException dbEx)
            {
                foreach (DbEntityValidationResult entityErr in dbEx.EntityValidationErrors)
                {
                    foreach (DbValidationError error in entityErr.ValidationErrors)
                    {
                        Console.WriteLine("Error Property Name {0} : Error Message: {1}",
                                            error.PropertyName, error.ErrorMessage);
                    }
                }
                return "Failure";
            }

        }
        public string Login(string Username, string Password)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string StatusText = string.Format("Hello {0}!!", HttpContext.Current.User.Identity.GetUserName());
                return StatusText;
            }
            else
            {
                //   PasswordSignIn -  Sign in the user in using the user name and password , not like SignInManager.SignInAsync() which simply signin the user immediately after successfull registration without credential validation
                // This doesn't count login failures towards account lockout
                // To enable password failures to trigger account lockout, change to shouldLockout: true
                var result = SignInManager.PasswordSignIn(Username, Password, false, false);//(model.Email, model.Password, model.RememberMe, shouldLockout: false);
                switch (result)
                {
                    case SignInStatus.Success:
                        return "Success";
                    case SignInStatus.LockedOut:
                        return "LockedOut";
                    case SignInStatus.RequiresVerification:
                        return "RequiresVerification";
                    case SignInStatus.Failure:
                        return "Failure";
                    default:
                        return "Default";
                }
            }

            ////==========================
            //var userStore = new UserStore<IdentityUser>();
            //var userManager = new UserManager<IdentityUser>(userStore);
            //var user = userManager.Find(Username,Password);
            //if (user != null)
            //{
            //    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            //    var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

            //    authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);
            //    return "Success";
            //}
            //else
            //{
            //    return "Not exist";
            //}
            ////=========================

        }
        public void SignOut()
        {
            // Returns:
            //     The authentication middleware functionality available on the current request.
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
        }

        public async void ChangePassword()
        {
            var result = _userManager.ChangePasswordAsync(HttpContext.Current.User.Identity.GetUserId(), "model.OldPassword", "model.NewPassword");
            if (result.IsCompleted)
            {
                var user = await _userManager.FindByIdAsync(HttpContext.Current.User.Identity.GetUserId());
                if (user != null)
                {
                    await _signInManager.SignInAsync(user, isPersistent: false, rememberBrowser: false);
                }
                //return RedirectToAction("Index", new { Message = ManageMessageId.ChangePasswordSuccess });
            }
            //return View(model);
        }
        //// GET: /Manage/ChangePassword
        //public ActionResult ChangePassword()
        //{
        //    return View();
        //}

        ////
        //// POST: /Manage/ChangePassword
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public async Task<ActionResult> ChangePassword(ChangePasswordViewModel model)
        //{
        //    if (!ModelState.IsValid)
        //    {
        //        return View(model);
        //    }
        //    var result = await UserManager.ChangePasswordAsync(User.Identity.GetUserId(), model.OldPassword, model.NewPassword);
        //    if (result.Succeeded)
        //    {
        //        var user = await UserManager.FindByIdAsync(User.Identity.GetUserId());
        //        if (user != null)
        //        {
        //            await SignInManager.SignInAsync(user, isPersistent: false, rememberBrowser: false);
        //        }
        //        return RedirectToAction("Index", new { Message = ManageMessageId.ChangePasswordSuccess });
        //    }
        //    AddErrors(result);
        //    return View(model);
        //}

        private ApplicationSignInManager _signInManager;
        private ApplicationUserManager _userManager;

        public ApplicationSignInManager SignInManager
        {
            get
            {
                return _signInManager ?? HttpContext.Current.GetOwinContext().Get<ApplicationSignInManager>();
            }
            private set
            {
                _signInManager = value;
            }
        }

        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            private set
            {
                _userManager = value;
            }
        }

    }
}
