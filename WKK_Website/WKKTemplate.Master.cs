using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WKK_Website
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
            lblOutput.Text = " ";
        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            string details = "Contact Inquiry " + DateTime.UtcNow.ToShortTimeString() + "\n";
            details += "Name: " + txtName.Text + "\nEmail: " + txtEmail.Text + "\nQuery: " + txtQuery.Text + "\n\n";

            File.WriteAllText(Server.MapPath("Files/UserContactAttempts.txt"), details);
            lblOutput.Text = "Message sent!";

            txtName.Text = "";
            txtEmail.Text = "";
            txtQuery.Text = "";
        }
    }
}