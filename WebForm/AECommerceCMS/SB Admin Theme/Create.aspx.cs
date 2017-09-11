using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.AECommerceCMS.SB_Admin_Theme
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string d = CalenderUserControl.SelectedDate;
            CalenderUserControl.CalenderVisibilityChangedEvent += CalenderUserControl_CalenderVisibilityChangedEvent;
            CalenderUserControl.DateselectedEvent += CalenderUserControl_DateselectedEvent;
        }

        private void CalenderUserControl_DateselectedEvent(object sender, DateSelectedEventArgs e)
        {
            Response.Write("" + e.RevealDateselected.ToShortDateString());
            //throw new NotImplementedException();
        }

        private void CalenderUserControl_CalenderVisibilityChangedEvent(object sender, CalenderVisibilityChangedEventArgs e)
        {
            Response.Write("" + e.RevealIsCalenderVisible.ToString());
            //throw new NotImplementedException();
        }

        protected void CreateButton1_Click(object sender, EventArgs e)
        {
            //string[] validFileTypes = { "bmp", "gif", "png", "jpg", "jpeg", "doc", "xls" };
            //string ext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
            //bool isValidFile = false;
            //for (int i = 0; i < validFileTypes.Length; i++)
            //{
            //    if (ext == "." + validFileTypes[i])
            //    {
            //        isValidFile = true;
            //        break;
            //    }
            //}
            //if (!isValidFile)
            //{
            //    Label1.ForeColor = System.Drawing.Color.Red;
            //    Label1.Text = "Invalid File. Please upload a File with extension " +
            //                   string.Join(",", validFileTypes);
            //}
            //else
            //{
            //    Label1.ForeColor = System.Drawing.Color.Green;
            //    Label1.Text = "File uploaded successfully.";
            //}

            string ContentbyteIBase64;
            byte[] ContentbyteI;
            string ContentbyteBase64;
            string FileImagePath;
            //if (FileDocUpload1.HasFile & FileImageUpload2.HasFile)
            //{
            HttpPostedFile hdf = FileDocUpload1.PostedFile;
            string Fname = Path.GetFileName(hdf.FileName);
            string Fext = Path.GetExtension(Fname);
            int Contentlen = hdf.ContentLength;
            Stream srm = hdf.InputStream;
            BinaryReader br = new BinaryReader(srm);
            byte[] Contentbyte = br.ReadBytes((int)srm.Length);
            //FileImagePath = @"D:\Temp Files\" + Fname;
            //    hdf.SaveAs(@"D:\Temp Files\" + Fname);
            string SiteImagesPath = Server.MapPath("~/AImages/");
            Random r = new Random();
            string File = r.Next() + Path.GetExtension(hdf.FileName);
            string ImageSavingLoc = SiteImagesPath + File;
            string ImagePathinFolder = "AImages/" + File;
            hdf.SaveAs(ImageSavingLoc);

            ContentbyteBase64 = Convert.ToBase64String(Contentbyte);

            //}
            HttpPostedFile hif = FileImageUpload2.PostedFile;
            string FIname = Path.GetFileName(hif.FileName);
            string FIext = Path.GetExtension(FIname);
            int ContentIlen = hif.ContentLength;
            Stream srmI = hif.InputStream;
            BinaryReader brI = new BinaryReader(srmI);
            ContentbyteI = brI.ReadBytes((int)srmI.Length);

            ContentbyteIBase64 = Convert.ToBase64String(ContentbyteI);

            List<ClassLibraryProject.EFDF.ItemInterest> mcc = new List<ClassLibraryProject.EFDF.ItemInterest>();
            foreach (ListItem ml in InterestedTopicMultiListBox1.Items)
            {

                ClassLibraryProject.EFDF.ItemInterest mc = new ClassLibraryProject.EFDF.ItemInterest();
                if (ml.Selected)
                {
                    mc.InterestedTopic = ml.Text;
                    //mc.ProfileDetId = 1;
                    mcc.Add(mc);
                }
            }
            string multi = "";
            //string SelectedCheckcount=InterestedTopicCheckBoxList1.Items.Cast<ListItem>().Count(i => i.Selected).ToString();//This can be done by iteration also , here Iam using with casted as List LINQ to make it short
            foreach (ListItem ml in InterestedTopicCheckBoxList1.Items)
            {
                if (ml.Selected)
                {
                    multi = multi + ml.Text + ",";
                }
            }
            using (ClassLibraryProject.EFDF.WEBFORMSEntities dctx = new ClassLibraryProject.EFDF.WEBFORMSEntities())
            {
                ClassLibraryProject.EFDF.ItemData id = new ClassLibraryProject.EFDF.ItemData();
                //{ ItemName = IName.Text, AvailableCount = Convert.ToInt16(AvailableCount.Text),
                //    ConfirmText1 = ConfirmText1TextBox1.Text, Continent = ContinentDropDownList1.Text,
                //    Country = CountryDropDownList2.Text, Email = Email.Text, FromDate = Convert.ToDateTime(Fromdate.Text),
                //    Gender =GenderRadioButtonList1.Text , InterestedTopicMulti = multi
                // , ItemDescription = Idesc.Text, ItemImage = ContentbyteI, PublishDate = Convert.ToDateTime(CalenderUserControl.SelectedDate),
                //    ToDate = Convert.ToDateTime(Todate.Text),
                //    ItemIntroDate = Convert.ToDateTime(Itemintrodate.Text), ItemType = "", ItemInterests = mcc };

                id.ItemName = IName.Text; id.AvailableCount = Convert.ToInt16(AvailableCount.Text);
                id.ConfirmText1 = ConfirmText1TextBox1.Text; id.Continent = ContinentDropDownList1.Text;
                id.Country = CountryDropDownList2.Text; id.Email = Email.Text; id.FromDate = Convert.ToDateTime(Fromdate.Text);
                id.Gender = GenderRadioButtonList1.Text; id.InterestedTopicMulti = multi;
                id.ItemDescription = ImagePathinFolder; //Idesc.Text;
                id.ItemImage = ContentbyteI; id.PublishDate = Convert.ToDateTime(CalenderUserControl.SelectedDate);
                id.ToDate = Convert.ToDateTime(Todate.Text);
                id.ItemIntroDate = Convert.ToDateTime(Itemintrodate.Text); id.ItemType = Itype.Text; id.ItemInterests = mcc;


                dctx.ItemDatas.Add(id);
                dctx.SaveChanges();
            }

        }
    }
}