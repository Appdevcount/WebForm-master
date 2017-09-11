using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.AECommerceCMS.SB_Admin_Theme
{
    public partial class Independent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Groups> groups = new List<Groups>();
            groups.Add(new Groups("a", "Group A"));
            groups.Add(new Groups("b", "Group B"));

            this.DropDownList5.DataSource = groups;

            List<Country> country = new List<Country>();
            country.Add(new Country("a", "Algeria"));
            country.Add(new Country("a", "Armenia"));
            country.Add(new Country("b", "Denmark"));
            country.Add(new Country("b", "Egypt"));
            this.DropDownList2.DataSource = country;

            List<Players> PlayerList = new List<Players>();
            PlayerList.Add(new Players("a", "Adams"));
            PlayerList.Add(new Players("a", "Clarke"));
            PlayerList.Add(new Players("b", "Brett"));
            PlayerList.Add(new Players("b", "James"));
            this.DropDownList3.DataSource = PlayerList;
            
            
        }
        //[Serializable]
        class Groups
        {
            public string parentId { get; set; }
            public string text { get; set; }
            public Groups(string cid, string ctext)
            {
                this.parentId = cid;
                this.text = ctext;
            }
        }
        //[Serializable]
        class Country
        {
            public string parentId { get; set; }
            public string text { get; set; }
            public Country(string cid, string ctext)
            {
                this.parentId = cid;
                this.text = ctext;
            }
        }
        //[Serializable]
        class Players
        {
            public string parentId { get; set; }
            public string text { get; set; }
            public Players(string cid, string ctext)
            {
                this.parentId = cid;
                this.text = ctext;
            }
        }
    }
}