using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Syncfusion.EJ.Export;
using System.Collections;
using Syncfusion.XlsIO;
using System.Data;

namespace WebForm.AECommerceCMS.SB_Admin_Theme
{
    public partial class BWFM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Grid1_ServerPdfExporting(object sender, Syncfusion.JavaScript.Web.GridEventArgs e)
        {

            PdfExport exp = new PdfExport();

            exp.Export(Grid1.Model, (IEnumerable)Grid1.DataSource, "Export.pdf", true, true, "flat-lime");
        }

        protected void Grid1_ServerExcelExporting(object sender, Syncfusion.JavaScript.Web.GridEventArgs e)
        {
            ExcelExport exp = new ExcelExport();
            
            //Items needs below assembly reference
            //    using Syncfusion.EJ.Export;
            //using Syncfusion.XlsIO;
            //Added manually, also it will add references to assembly in WEB.config file
            
            DataView dv = (DataView)SqlDataSource1.Select(new DataSourceSelectArguments());
            DataTable dt = dv.Table;
            IWorkbook book = exp.Export(Grid1.Model, dt, "Export.xlsx", ExcelVersion.Excel2010, true, true, "flat-lime", true);

            //When the Grid has some null values from DB It causes exception while exporting, so better to avoid DBNull- An exception of type 'System.InvalidCastException' occurred in mscorlib.dll but was not handled in user code Additional information: Object cannot be cast from DBNull to other types.

            // Inserted new row for adding title
            book.ActiveSheet.InsertRow(1);

            // Merging the sheet from Range A1 to D1 for adding title space
            book.ActiveSheet.Range["A1:D1"].Merge();

            //Adding the title using Text property
            book.ActiveSheet.Range["A1"].Text = "Some Content Title";
            book.ActiveSheet.Range["A1"].CellStyle.HorizontalAlignment = ExcelHAlign.HAlignCenter;//set text alignment

            //Adding footer using SetValue method
            book.ActiveSheet.SetValue(book.ActiveSheet.Rows.Length + 2, book.ActiveSheet.Columns.Length - 3, "CopyRights");
            book.SaveAs("Export.xlsx", ExcelSaveType.SaveAsXLS, System.Web.HttpContext.Current.Response, ExcelDownloadType.Open);


        }

        protected void Grid1_ServerWordExporting(object sender, Syncfusion.JavaScript.Web.GridEventArgs e)
        {

            WordExport exp = new WordExport();

            exp.Export(Grid1.Model, (IEnumerable)Grid1.DataSource, "Export.docx", true, true, "flat-lime");
        }
    }
}