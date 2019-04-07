using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BookMS
{
    public partial class _Default : Page
    {
        private LibraryClass Libclass = new LibraryClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;

            Panel2.Visible = false;

            if (Session["name"] == null)
            {
                Panel1.Visible = true;

                Panel2.Visible = false;
            }
            else
            {
                Label3.Text = Session["name"].ToString();

                Panel1.Visible = false;

                Panel2.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strsql;

            strsql = "select 用戶名,密碼 from 讀者資訊表 where 用戶名='" + TextBox1.Text + "' and 密碼='" + TextBox2.Text + "'";

            DataSet ds = new DataSet();

            ds = Libclass.GetDataSet(strsql, "username");

            if (ds.Tables["username"].Rows.Count == 0)
            {
                string scriptString = "alert('" + "用戶名不存在，請確認後再登入！" + "');";

                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "warning", scriptString, true);
            }
            else
            {
                Session["name"] = TextBox1.Text;

                Label3.Text = Session["name"].ToString();

                Panel1.Visible = false;

                Panel2.Visible = true;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Session["name"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Session["name"] = null;

                Panel2.Visible = false;

                Panel1.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserReg.aspx");
        }
    }
}