using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BookMS.AdminManage
{
    public partial class ManageDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminname"] == null)
            {
                Response.Redirect("../ManagePlace.aspx");
            }
            else
            {
                Label1.Text = Session["adminname"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["adminname"] == null)
            {
                Response.Redirect("../ManagePlace.aspx");
            }
            else
            {
                Session["adminname"] = null;

                Response.Redirect("../ManagePlace.aspx");
            }
        }
    }
}