using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.CrystalReport
{
    public partial class CrystalWebform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReportDocument rd = new ReportDocument();
            rd.Load(Server.MapPath("CrystalReport.rpt"));
            List<CrystalClass> CLS = new List<CrystalClass> { new CrystalClass { Id = 1, Name = "AA" }, new CrystalClass { Id = 1, Name = "BB" }, new CrystalClass { Id = 1, Name = "CC" } };

            rd.SetDataSource(CLS);
            CrystalReportViewer1.ReportSource = rd;
            CrystalReportViewer1.ToolPanelView = CrystalDecisions.Web.ToolPanelViewType.None;
            CrystalReportViewer1.HasCrystalLogo = false;
            //CrystalReportViewer1.Width = 1000;
            
        }
    }
    public class CrystalClass
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }
}