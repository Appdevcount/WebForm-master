using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.AImplements
{
    public partial class ControlsGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Button2.Click += Button2_Click;   // Can wireup events programatically as well += press tab to create the delegate

            Page prevpage = Page.PreviousPage;
            //During Server.Transfer() This property can be used to retrive values of previous page contols
            //TextBox ttb = (TextBox)prevpage.FindControl("");
            //string txt = ttb.Text;


            if (!IsPostBack)
            {
                Panel1.Visible = true;
                TextBox tb = new TextBox();//
                tb.ID = "";
                Panel1.Controls.Add(tb);

                ListItem li1 = new ListItem("C", "C");
                DropDownList2.Items.Add(li1);

                DropDownList1.Items.Insert(0, li1);

                //DropDownList2.DataTextField = "";
                //DropDownList2.DataValueField = "";
                //DropDownList2.DataSource = cmd.ExecuteReader();
                //DropDownList2.DataBind();

                //<Countries >
                //< Country >
                //<CountryID></ CountryID >
                //<Name></Name>
                //</ Country >
                //</ Countries >
                DataSet ds = new DataSet();
                //ds.ReadXml("");
                //DropDownList2.DataTextField = "";
                //DropDownList2.DataValueField = "";
                //DropDownList2.DataSource = ds;
                //DropDownList2.DataBind();

                //Server.MapPath(".");//Current directory
                //Server.MapPath("..");//Parent directory of current directory
                //Server.MapPath("~");//Root Directory

                Calendar1.Visible = false;

            }
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(1));
            Response.Cache.VaryByParams["None"] = true;
            Response.Cache.SetCacheability(HttpCacheability.ServerAndPrivate);
        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            Response.Write("Page LoadComplete <br/>");
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            Response.Write("Page PreRender <br/>");
        }

        protected void Page_PreRenderComplete(object sender, EventArgs e)
        {
            Response.Write("Page PreRenderComplete <br/>");
        }
        //        Now in WebForm1.aspx, set AutoEventWireup = true
        //Run the application, and notice that the above event handler methods are executed as expected.We did not explicitly associate event handler methods to the events, but still the event handler methods are hooked up to their respective events.This is because we have AutoEventWireup attribute set to true.

        //Now, set AutoEventWireup = false
        //Run the application, and notice that none of the above event handler methods are executed.This is because, when "AutoEventWireup" property is set to false, the event handler methods does not get automatically associated with their respective events.We have to explicitly associate them by overriding OnInit() method as shown below.Now, copy and paste the following code in webform1.aspx.cs
        protected override void OnInit(EventArgs e)
        {
            this.Load += new EventHandler(Page_Load);
            this.LoadComplete += new EventHandler(Page_LoadComplete);
            this.PreRender += new EventHandler(Page_PreRender);
            this.PreRenderComplete += new EventHandler(Page_PreRenderComplete);
        }
        private void Button2_Click(object sender, EventArgs e)
        {
            // Get the data from the database
            //DataSet ds = GetProductsData();
            // Cache the dataset using the key "ProductsData"
            //Cache["ProductsData"] = ds;

            //Cache.Insert("ProductsData", ds);
            //Cache.Add("ProductsData", ds, null, System.Web.Caching.Cache.NoAbsoluteExpiration, System.Web.Caching.Cache.NoSlidingExpiration, System.Web.Caching.CacheItemPriority.Default, null);
            //Cache.Remove("MyKey");
            // Create an instance of CacheItemRemovedCallback delegate. Notice that this delegate
            // points to CacheItemRemovedCallbackMethod. When cache item is removed 
            // for any   reason
            // the delegate gets invoked, which in turn will invoke the method it is pointing to.
            //CacheItemRemovedCallback onCacheItemRemoved =
            //   new CacheItemRemovedCallback(CacheItemRemovedCallbackMethod);

            // Cache countries dataset. Please note that we are passing the delegate instance as an
            // argument for CacheItemRemovedCallback delegate parameter of the insert() method.
            //Cache.Insert("CountriesData", ds, new CacheDependency(Server.MapPath("~/Data/Countries.xml")), DateTime.Now.AddSeconds(60),
            //    System.Web.Caching.Cache.NoSlidingExpiration, CacheItemPriority.Default, onCacheItemRemoved);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Calendar1.SelectedDate.ToShortDateString();
            Calendar1.SelectedDate.AddDays(10).ToShortDateString();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //DropDownList1.SelectedValue
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void Wizard1_CancelButtonClick(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LoginStatus1_LoggedOut(object sender, EventArgs e)
        {

        }

        protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
        {

        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void Login1_LoginError(object sender, EventArgs e)
        {

        }

        protected void LoginView1_ViewChanged(object sender, EventArgs e)
        {

        }

        protected void LoginView1_ViewChanging(object sender, EventArgs e)
        {

        }

        protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
        {

        }

        protected void PasswordRecovery1_SendMailError(object sender, SendMailErrorEventArgs e)
        {

        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {

            if (e.CurrentStepIndex == 2)
            {
                Wizard1.HeaderText = "";
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            { }//Validation Status -Validators

            Server.Transfer("");//Redirect to pages of same web server
            Response.Redirect("");//Can redirect to external website also.. Previous page control value scant be retrived I think
            Server.Execute("");//The control comes back to first page after exceuting things at 2nd/redirected page
                               //Cross Page postback can be done using the Postbackurl property of button to different page and retrive control values using previous page prperty
                               //Can build strongly typed Crosspage postback by having public properties in prevuiod page and assigning values using get accessors in that 


            // Create the cookie object
            HttpCookie cookie = new HttpCookie("UserDetails");
            //cookie["Name"] = txtName.Text;
            //cookie["Email"] = txtEmail.Text;
            // Cookie will be persisted for 30 days
            cookie.Expires = DateTime.Now.AddDays(30);
            // Add the cookie to the client machine
            Response.Cookies.Add(cookie);

            Response.Redirect("WebForm2.aspx");

            //HttpCookie cookie = Request.Cookies["UserDetails"];
            //if (cookie != null)
            //{
            //    lblName.Text = cookie["Name"];
            //    lblEmail.Text = cookie["Email"];
            //}


            //< sessionState mode = "Off" ></ sessionState >
            //Session["Name"] = txtName.Text;
            //Session["Email"] = txtEmail.Text;
            //Response.Redirect("WebForm2.aspx");
            //if (Session["Name"] != null)
            //{
            //    lblName.Text = Session["Name"].ToString();
            //}

            //< sessionState mode = "InProc" cookieless = "true" ></ sessionState >

            //    void Application_Start(object sender, EventArgs e)
            //    {
            //    // Code that runs when the application starts
            //    Application["UsersOnline"] = 0;
            //}
            //    void Session_Start(object sender, EventArgs e)
            //    {
            //    // Code that runs when a new user session is started
            //    Application.Lock();
            //    Application["UsersOnline"] = (int)Application["UsersOnline"] + 1;
            //    Application.UnLock();
            //}
            //    void Session_End(object sender, EventArgs e)
            //    {
            //    // Code that runs when an existing user session ends. 
            //    Application.Lock();
            //    Application["UsersOnline"] = (int)Application["UsersOnline"] - 1;
            //    Application.UnLock();
            //}

            //Tracing can be enabled at 
            //Application level
            //<trace enabled="true" pageOutput="true" localOnly="false"/>

            //Page level
            //<%@ Page Language = "C#" Trace = "false" AutoEventWireup = "true" CodeBehind = "WebForm1.aspx.cs" Inherits = "WebApplication1.WebForm1" %>
            if (Trace.IsEnabled)
            {
                // Write the exception message to the trace log
                Trace.Write("");
                Trace.Warn("");
            }

        }
    }
}