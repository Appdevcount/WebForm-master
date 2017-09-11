using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Live
{
    public partial class WebDesign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //a script with the pageLoad() function is a way to hook into the client side pageload javascript event 
            //        < script type = "text/javascript" >
            //     function pageLoad() {
            //        $("#ctl00_ContentPlaceHolder1_FromDateTextBox").unbind();
            //        $('#ctl00_ContentPlaceHolder1_FromDateTextBox').datepicker({
            //                format: "yyyy-mm-dd",
            //            todayBtn: "linked",
            //            todayHighlight: true,
            //            autoclose: true,
            //            multidate:
            //                false
            //        });
            //        $("#ctl00_ContentPlaceHolder1_ToDateTextBox").unbind();
            //        $('#ctl00_ContentPlaceHolder1_ToDateTextBox').datepicker({
            //                format: "yyyy-mm-dd",
            //            todayBtn: "linked",
            //            autoclose: true,
            //            todayHighlight:
            //                true
            //        });
            //        }
            //</ script >

        }
    }
}