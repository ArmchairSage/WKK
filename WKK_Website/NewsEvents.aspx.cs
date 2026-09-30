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
    public partial class NewsEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;
            loadReviews();
            lblStatus.Text = "";
            lblEvents.Text = "";
        }

        protected void loadReviews()
        {
            String[] strReviews =
            File.ReadAllLines(Server.MapPath("Files/reviewstext.txt"));
            txtReviews.Text = "";
            foreach (String line in strReviews)
            {
                txtReviews.Text += line;
                txtReviews.Text += "\n";
            }
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
                txtReviews.Text += "[" + user + "]" + " " + DateTime.UtcNow.ToShortTimeString() +
                "\n > " + txtEntry.Text + "\n\n";
                File.WriteAllText(Server.MapPath("Files/reviewstext.txt"), txtReviews.Text);
                lblStatus.Text = "Review posted!";
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            try
            {
                String[] events = File.ReadAllLines(Server.MapPath("events/") + this.Calendar1.SelectedDate.ToString("ddMMyyyy") + ".txt");
                foreach (String line in events)
                {
                    lblEvents.Text += line;
                    lblEvents.Text += "\n";
                }
                    
            }
            catch (Exception ex)
            {
                lblEvents.Text = "Sorry, no events are planned on this date!";
            }

            /* String events = this.Calendar1.SelectedDate.ToShortDateString();
            this.lblEvents.Text = events; */
        }
    }
}