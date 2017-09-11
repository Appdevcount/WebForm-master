using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.AECommerceCMS.SB_Admin_Theme
{
    public partial class NewEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SuccessLabel.Visible = false;
                ErrorLable.Visible = false;
            }
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            string a = TextBox1.Text;
            string b = TextBox3.Text;
            string c = TextBox4.Text;
            string d = DropDownList1.SelectedValue;
            string ee = DropDownList2.SelectedValue;
            string f = DropDownList3.SelectedValue;
            string g = RadioButtonList1.SelectedValue;

            List<string> LBiarray = new List<string>();
            foreach (ListItem li in ListBox1.Items)
            {
                if (li.Selected)
                    LBiarray.Add(li.Value);
            }
            List<string> CBiarray = new List<string>();
            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                    CBiarray.Add(li.Value);
            }
            // If the user has selected a file
            if (FileUpload1.HasFile)
            {
                // Get the file extension
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (fileExtension.ToLower() != ".doc" && fileExtension.ToUpper() != ".docx")
                {
                    ErrorLable.ForeColor = System.Drawing.Color.Red;
                    ErrorLable.Text = "Only files with .doc and .docx extension are allowed";
                }
                else
                {
                    // Get the file size
                    int fileSize = FileUpload1.PostedFile.ContentLength;
                    // If file size is greater than 2 MB
                    if (fileSize > 2097152)
                    {
                        ErrorLable.ForeColor = System.Drawing.Color.Red;
                        ErrorLable.Text = "File size cannot be greater than 2 MB";
                    }
                    else
                    {
                        // Upload the file
                        //FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                        SuccessLabel.ForeColor = System.Drawing.Color.Green;
                        SuccessLabel.Text = "File uploaded successfully";
                    }
                }
            }
            else
            {
                ErrorLable.ForeColor = System.Drawing.Color.Red;
                ErrorLable.Text = "Please select a file";
            }


        }
    }
}