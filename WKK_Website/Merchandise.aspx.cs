using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WKK_Website
{
    public partial class Merchandise : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;

            if (!IsPostBack)
            {
                DataSet ds = new DataSet();
                ds.ReadXml(Server.MapPath("KlubMerch.xml"));
                gvMerchandise.DataSource = ds.Tables[0];
                gvMerchandise.DataBind();
                Session["dsMerch"] = ds;

            }

        }

        protected void ddlType_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Session["dsMerch"];
            DataView dv = new DataView(ds.Tables[0]);

            if (ddlType.SelectedIndex != 0)
            {
                dv.RowFilter = "type like '" + ddlType.Text + "' and origin like '" + ddlCountry.Text + "' and produced like '" + ddlYear.Text + "%'";
            }
            else
            {
                dv.RowFilter = "origin like '" + ddlCountry.Text + "' and produced like '" + ddlYear.Text + "%'";
            }
                
            gvMerchandise.DataSource = dv;
            gvMerchandise.DataBind();
        }

        
        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Session["dsMerch"];
            DataView dv = new DataView(ds.Tables[0]);

            if (ddlCountry.SelectedIndex != 0)
            {
                dv.RowFilter = "origin like '" + ddlCountry.Text + "' and type like '" + ddlType.Text + "' and produced like '" + ddlYear.Text + "%'";
            }
            else
            {
                dv.RowFilter = "type like '" + ddlType.Text + "' and produced like '" + ddlYear.Text + "%'";
            }

            gvMerchandise.DataSource = dv;
            gvMerchandise.DataBind();
        }

        protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Session["dsMerch"];
            DataView dv = new DataView(ds.Tables[0]);

            if (ddlYear.SelectedIndex != 0)
            {
                dv.RowFilter = "produced like '" + ddlYear.Text + "%' and origin like '" + ddlCountry.Text + "' and type like '" + ddlType.Text + "'";
            }
            else
            {
                dv.RowFilter = "origin like '" + ddlCountry.Text + "' and type like '" + ddlType.Text + "'";
            }

            gvMerchandise.DataSource = dv;
            gvMerchandise.DataBind();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Session["dsMerch"];
            DataView dv = new DataView(ds.Tables[0]);

            ddlCountry.SelectedIndex = 0;
            ddlYear.SelectedIndex = 0;
            ddlType.SelectedIndex = 0;

            gvMerchandise.DataSource = dv;
            gvMerchandise.DataBind();
        }
    }
}