using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;

namespace WebForm
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                            "~/Scripts/WebForms/WebForms.js",
                            "~/Scripts/WebForms/WebUIValidation.js",
                            "~/Scripts/WebForms/MenuStandards.js",
                            "~/Scripts/WebForms/Focus.js",
                            "~/Scripts/WebForms/GridView.js",
                            "~/Scripts/WebForms/DetailsView.js",
                            "~/Scripts/WebForms/TreeView.js",
                            "~/Scripts/WebForms/WebParts.js"));

            // Order is very important for these files to work, they have explicit dependencies
            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjax.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                            "~/Scripts/modernizr-*"));

            ScriptManager.ScriptResourceMapping.AddDefinition(
                "respond",
                new ScriptResourceDefinition
                {
                    Path = "~/Scripts/respond.min.js",
                    DebugPath = "~/Scripts/respond.js",
                });


            //AdminLTE Components - CSS and Scripts

            bundles.Add(new StyleBundle("~/bundles/CDNcss").Include(
                "~/AdminLTE/Content/bootstrap/css/bootstrap.min.css"
                //"~/AdminLTE/Content/CustomCDNDownloaded/font-awesome.min.css",
                //"~/AdminLTE/Content/CustomCDNDownloaded/ionicons.min.css"
                ).ForceOrdered());

            bundles.Add(new StyleBundle("~/bundles/distcss").Include(
        "~/AdminLTE/Content/dist/css/AdminLTE.min.css",
        "~/AdminLTE/Content/dist/css/skins/_all-skins.min.css"));
            bundles.Add(new StyleBundle("~/bundles/plugincss").Include(
                "~/AdminLTE/Content/plugins/iCheck/flat/blue.css",
                "~/AdminLTE/Content/plugins/morris/morris.css",
                "~/AdminLTE/Content/plugins/jvectormap/jquery-jvectormap-1.2.2.css",
                "~/AdminLTE/Content/plugins/datepicker/datepicker3.css",
                "~/AdminLTE/Content/plugins/daterangepicker/daterangepicker.css",
                "~/AdminLTE/Content/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css").ForceOrdered());
            //===========================
            bundles.Add(new StyleBundle("~/bundles/MasterCSS").Include(
                "~/AdminLTE/Content/bootstrap/css/bootstrap.min.css",
                "~/AdminLTE/Content/fontawesome/css/font-awesome.min.css",
                "~/AdminLTE/Content/ionicons/css/ionicons.min.css"
                ).ForceOrdered());
            bundles.Add(new StyleBundle("~/bundles/FormACSS").Include(
               "~/AdminLTE/Content/plugins/daterangepicker/daterangepicker.css",
                "~/AdminLTE/Content/plugins/datepicker/datepicker3.css",
               "~/AdminLTE/Content/plugins/iCheck/all.css",
                "~/AdminLTE/Content/plugins/iCheck/icheck.min.js",
               "~/AdminLTE/Content/plugins/colorpicker/bootstrap-colorpicker.min.css",
                 "~/AdminLTE/Content/plugins/timepicker/bootstrap-timepicker.min.css",
                 "~/AdminLTE/Content/plugins/select2/select2.min.css"
                ).ForceOrdered());

            bundles.Add(new StyleBundle("~/bundles/AdminLTECSS").Include(
                  "~/AdminLTE/Content/dist/css/AdminLTE.min.css",
                 "~/AdminLTE/Content/dist/css/skins/_all-skins.min.css"
                     ).ForceOrdered());

            //==========================

            bundles.Add(new ScriptBundle("~/bundles/cdn1js").Include(
                "~/AdminLTE/Content/plugins/jQuery/jquery-2.2.3.min.js",
                "~/AdminLTE/Content/CustomCDNDownloaded/jquery-ui.min.js",
                "~/AdminLTE/Content/bootstrap/js/bootstrap.min.js",
                "~/AdminLTE/Content/CustomCDNDownloaded/raphael-min.js").ForceOrdered());

            bundles.Add(new ScriptBundle("~/bundles/plugin1js").Include(
                "~/AdminLTE/Content/plugins/morris/morris.min.js",
                "~/AdminLTE/Content/plugins/sparkline/jquery.sparkline.min.js",
                "~/AdminLTE/Content/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js",
                "~/AdminLTE/Content/plugins/jvectormap/jquery-jvectormap-world-mill-en.js",
                "~/AdminLTE/Content/plugins/knob/jquery.knob.js").ForceOrdered());
            bundles.Add(new ScriptBundle("~/bundles/cdn2js").Include(
                "~/AdminLTE/Content/CustomCDNDownloaded/moment.min.js").ForceOrdered());
            bundles.Add(new ScriptBundle("~/bundles/plugin2js").Include(
                "~/AdminLTE/Content/plugins/daterangepicker/daterangepicker.js",
                "~/AdminLTE/Content/plugins/datepicker/bootstrap-datepicker.js",
                "~/AdminLTE/Content/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js",
                "~/AdminLTE/Content/plugins/slimScroll/jquery.slimscroll.min.js",
                "~/AdminLTE/Content/plugins/fastclick/fastclick.js").ForceOrdered());
            bundles.Add(new ScriptBundle("~/bundles/distjs").Include(
                "~/AdminLTE/Content/dist/js/app.min.js",
                "~/AdminLTE/Content/dist/js/pages/dashboard.js",
                "~/AdminLTE/Content/dist/js/demo.js"));

            //======================================================
            bundles.Add(new ScriptBundle("~/bundles/CommonJS").Include(
                "~/AdminLTE/Content/plugins/jQuery/jquery-2.2.3.min.js",
                "~/AdminLTE/Content/CustomCDNDownloaded/jquery-ui.min.js",
                "~/AdminLTE/Content/bootstrap/js/bootstrap.min.js",
                "~/AdminLTE/Content/CustomCDNDownloaded/raphael-min.js").ForceOrdered());
            bundles.Add(new ScriptBundle("~/bundles/FormAJS").Include("~/AdminLTE/Content/plugins/select2/select2.full.min.js",
    "~/AdminLTE/Content/plugins/input-mask/jquery.inputmask.js",
     "~/AdminLTE/Content/plugins/input-mask/jquery.inputmask.date.extensions.js",
      "~/AdminLTE/Content/plugins/input-mask/jquery.inputmask.extensions.js",
       "~/Scripts/moment.min.js",
        "~/AdminLTE/Content/plugins/datepicker/bootstrap-datepicker.js",
         "~/AdminLTE/Content/plugins/daterangepicker/daterangepicker.js",
          "~/AdminLTE/Content/plugins/colorpicker/bootstrap-colorpicker.min.js",
           "~/AdminLTE/Content/plugins/slimScroll/jquery.slimscroll.min.js",
            "~/AdminLTE/Content/plugins/timepicker/bootstrap-timepicker.min.js",
             "~/AdminLTE/Content/plugins/sparkline/jquery.sparkline.min.js",
              "~/AdminLTE/Content/plugins/iCheck/icheck.min.js",
               "~/AdminLTE/Content/plugins/fastclick/fastclick.min.js").ForceOrdered());

            //======================================================
            //=======================EJ ===============================

               bundles.Add(new StyleBundle("~/bundles/EJCSS").Include(
      "~/Content/ej/web/default-theme/ej.web.all.min.css"
         ).ForceOrdered());

            bundles.Add(new ScriptBundle("~/bundles/EJJS").Include(
                "~/Scripts/jquery-1.10.2.js",
                "~/Scripts/ej/jsrender.min.js",
                "~/Scripts/ej/ej.web.all.min.js",
                "~/Scripts/ej/ej.webform.min.js").ForceOrdered());
        }
    }

    //Maintaining order of Bundles files as same as added . Reference -- 
    internal class AsIsBundleOrderer : IBundleOrderer
    {
        public virtual IEnumerable<BundleFile> OrderFiles(BundleContext context, IEnumerable<BundleFile> files)
        {
            return files;
        }
    }

    internal static class BundleExtensions
    {
        public static Bundle ForceOrdered(this Bundle sb)
        {
            sb.Orderer = new AsIsBundleOrderer();
            return sb;
        }
    }
}