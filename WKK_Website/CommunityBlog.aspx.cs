using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WKK_Website
{
    public partial class CommunityBlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
            loadBlog();
            lblStatus.Text = " ";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtEntry.Text != "")
            { 
                string user = txtName.Text;
                if (user == "")
                {
                    user = "unknown";
                }
                txtBlog.Text += "[" + user + "]" + " " + DateTime.UtcNow.ToShortTimeString() +
                "\n > " + txtEntry.Text + "\n\n";
                File.WriteAllText(Server.MapPath("Files/blogtext.txt"), txtBlog.Text);
                lblStatus.Text = "Comment posted!";
            }

            if (fulBrowse.HasFile)
            {
                try
                {
                    string user = txtName.Text;
                    if (user == "")
                    {
                        user = "unknown user";
                    }
                    string filename = Path.GetFileName(fulBrowse.FileName);
                    fulBrowse.SaveAs(Server.MapPath("uploads/") + filename);
                    lblStatus.Text = "File uploaded!";

                    txtBlog.Text += "[" + user + "]" + " " + DateTime.UtcNow.ToShortTimeString() +
                    "\n > " + fulBrowse.FileName  + "\n\n";
                    File.WriteAllText(Server.MapPath("Files/blogtext.txt"), txtBlog.Text);
                }
                catch (Exception ex)
                {
                    lblStatus.Text = "The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
            else
            {
                lblStatus.Text = " ";
            }
        }

        protected void loadBlog()
        {
            String[] strBlog =
            File.ReadAllLines(Server.MapPath("Files/blogtext.txt"));
            txtBlog.Text = "";
            foreach (String line in strBlog)
            {
                txtBlog.Text += line;
                txtBlog.Text += "\n";
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtImageSearch.Text != "")
            {
                try
                {
                    File.ReadAllLines(Server.MapPath("uploads/") + txtImageSearch.Text);
                    imgPreview.ImageUrl = "uploads/" + txtImageSearch.Text;
                    lblImageStatus.Text = "";
                }
                catch (Exception ex)
                {
                    lblImageStatus.Text = "Image could not be found! Perhaps the image you are looking for hasn't been uploaded yet...";
                }
            }
            else
            {
                lblImageStatus.Text = "Please enter an image file name first!";
            }
        }
    }
}
