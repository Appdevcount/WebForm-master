using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Live
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpPostedFile hdf =FileUpload1.PostedFile;
            string Fname = Path.GetFileName(hdf.FileName);
            string Fext = Path.GetExtension(Fname);
            int Contentlen = hdf.ContentLength;
            Stream srm = hdf.InputStream;
            BinaryReader br = new BinaryReader(srm);
            byte[] Contentbyte = br.ReadBytes((int)srm.Length);
            //FileImagePath = @"D:\Temp Files\" + Fname;
            //    hdf.SaveAs(@"D:\Temp Files\" + Fname);
            string SiteImagesPath = "C:/inetpub/wwwroot/Images/";// Server.MapPath("http://localhost/images/");
            //Error - 'C:/inetpub/wwwroot/Images/' is a physical path, but a virtual path was expected.
            //To store images in dedicated images folder spearated form website folder, This dedicated folder is made as virtual path to be accesible from iis
            //Error - 'http:/localhost/images/' is not a valid virtual path
            //So instead of using Server.MapPath , can use directly the directory path
            //Error Access to the path 'C:\inetpub\wwwroot\Images\909719136.jpg' is denied.
            //Provided Full access to that virtual directory for IIS_IUSRS and IUSR and others. It worked
            //Now able to save files in different directory as well. While saving location in table, it needs to be save as like  <img id="Image1" src="http://localhost/images/tf.jpg" />

            Random r = new Random();
            string File = r.Next() + Path.GetExtension(hdf.FileName);
            string ImageSavingLoc = SiteImagesPath + File;
            //string ImagePathinFolder = "AImages/" + File;
            hdf.SaveAs(ImageSavingLoc);


            //Session[""] = "";
            //Response.Redirect("");
            System.Threading.Thread.Sleep(2000);
        }
    }
}