using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETIdentityOwinMiddlewareAuth
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Registerbtn_Click(object sender, EventArgs e)
        {
            ////// Default UserStore constructor uses the default connection string named: DefaultConnection
            ////var userStore = new UserStore<IdentityUser>();
            ////var manager = new UserManager<IdentityUser>(userStore);

            ////var user = new IdentityUser() { UserName = UserName.Text };
            ////IdentityResult result = manager.Create(user, Password.Text);

            ////if (result.Succeeded)
            ////{
            ////    StatusMessage.Text = string.Format("User {0} was created successfully!", user.UserName);
            ////}
            ////else
            ////{
            ////    StatusMessage.Text = result.Errors.FirstOrDefault();
            ////}

            ASPNETIdentityCLP.Authorizer A = new ASPNETIdentityCLP.Authorizer();
            string RS= A.Register(Uname.Text, Pwd.Text);
            Response.Redirect("~/Login.aspx");


            //// Default UserStore constructor uses the default connection string named: DefaultConnection
            //var userStore = new UserStore<IdentityUser>();
            //var manager = new UserManager<IdentityUser>(userStore);
            //var user = new IdentityUser() { UserName = Uname.Text };

            //IdentityResult result = manager.Create(user, Pwd.Text);

            //if (result.Succeeded)
            //{
            //    ////======= Role management
            //    var rolestore = new RoleStore<IdentityRole>();
            //    var rolemanager = new RoleManager<IdentityRole>(rolestore);
            //    var role = new IdentityRole { Id = "Techs", Name = "Techs" };
            //    rolemanager.Create(role);
            //    //var userRoles = await UserManager.GetRolesAsync(user.Id);
            //    //selectedRole = selectedRole ?? new string[] { };
            //    //var result = await UserManager.AddToRolesAsync(user.Id,
            //    //    selectedRole.Except(userRoles).ToArray<string>());
            //    //manager.AddToRoles(user.Id, roles[])
            //    string[] SelectedRoles = { "BusOp","Tech"};
            //    manager.AddToRoles(user.Id, SelectedRoles);
            //    //result = await UserManager.RemoveFromRolesAsync(user.Id,
            //    //    userRoles.Except(selectedRole).ToArray<string>());
            //    ////=====

            //    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;//Microsoft.Owin.Host.SystemWeb added manually by browsing in Nuget

            //    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            //    authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent=false  }, userIdentity);
            //    Response.Redirect("~/Login.aspx");

            //    //===========
            //    //ApplicationSignInManager asi = new ApplicationSignInManager();
            //    //asi.PasswordSignInAsync(user.UserName, "", false, false);


            //    //===========
            //}
            //else
            //{
            //    RegisterStatus.Text = result.Errors.FirstOrDefault();
            //}
        }
    }
}


//internal class RoleActions
////=============================
//{
//    internal void AddUserAndRole()
////======================================
//    {
//        // Access the application context and create result variables.
//        Models.ApplicationDbContext context = new ApplicationDbContext();
//        IdentityResult IdRoleResult;
//        IdentityResult IdUserResult;

//        // Create a RoleStore object by using the ApplicationDbContext object. 
//        // The RoleStore is only allowed to contain IdentityRole objects.
//        var roleStore = new RoleStore<IdentityRole>(context);

//        // Create a RoleManager object that is only allowed to contain IdentityRole objects.
//        // When creating the RoleManager object, you pass in (as a parameter) a new RoleStore object. 
//        var roleMgr = new RoleManager<IdentityRole>(roleStore);

//        // Then, you create the "canEdit" role if it doesn't already exist.
//        if (!roleMgr.RoleExists("canEdit"))
//        {
//            IdRoleResult = roleMgr.Create(new IdentityRole { Name = "canEdit" });
//        }

//        // Create a UserManager object based on the UserStore object and the ApplicationDbContext  
//        // object. Note that you can create new objects and use them as parameters in
//        // a single line of code, rather than using multiple lines of code, as you did
//        // for the RoleManager object.
//        var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
//        var appUser = new ApplicationUser
//        {
//            UserName = "canEditUser@wingtiptoys.com",
//            Email = "canEditUser@wingtiptoys.com"
//        };
//        IdUserResult = userMgr.Create(appUser, "Pa$$word1");

//        // If the new "canEdit" user was successfully created, 
//        // add the "canEdit" user to the "canEdit" role. 
//        if (!userMgr.IsInRole(userMgr.FindByEmail("canEditUser@wingtiptoys.com").Id, "canEdit"))
//        {
//            IdUserResult = userMgr.AddToRole(userMgr.FindByEmail("canEditUser@wingtiptoys.com").Id, "canEdit");
//        }
//    }
//}