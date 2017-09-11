
using System;

using System.Collections.Generic;

using System.Linq;

using System.Web;



namespace Isys_Iraq_Unsub.CustomAuthSession.Model

{

    public class CustomAccountModel

    {

        public List<CustomAccount> Custaccts = new List<CustomAccount>();



        public CustomAccountModel()

        {

            Custaccts.Add(new CustomAccount

            {

                Username = "isys",

                password = "zain"//,

                //Roles = new string[] { "CANACCESS" }

            });

            //Custaccts.Add(new CustomAccount
            //{

            //    Username = "GSTL",

            //    password = "GSTL"//,

            //    //Roles = new string[] { "Seller", "Lead" }

            //});





        }



        public CustomAccount finduseracct(string uname)

        {

            CustomAccount useracct = Custaccts.Find(u => u.Username.Equals(uname));

            return useracct;

        }



        public CustomAccount login(string uname, string pwd)

        {

            CustomAccount useracctl = Custaccts.Find(u => u.Username.Equals(uname) && u.password.Equals(pwd));

            return useracctl;

        }





    }

}
