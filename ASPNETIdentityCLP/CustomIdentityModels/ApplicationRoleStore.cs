using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using MVC_ASPNET_Identity.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASPNETIdentityCLP.CustomIdentityModels
{
    public class ApplicationRoleStore  : RoleStore<ApplicationRole, string, ApplicationUserRole>,
          IQueryableRoleStore<ApplicationRole, string>,
          IRoleStore<ApplicationRole, string>, IDisposable
    {
        public ApplicationRoleStore()  : base(new IdentityDbContext())
        {
            base.DisposeContext = true;
        }


        public ApplicationRoleStore(DbContext context)
            : base(context)
        {

        }
    }
}

//https://www.codeproject.com/Articles/798001/ASP-NET-Identity-Extending-Identity-Models-and-Usi
