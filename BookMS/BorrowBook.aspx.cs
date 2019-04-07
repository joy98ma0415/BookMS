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
    public partial class BorrowBook : System.Web.UI.Page
    {
        private LibraryClass Libclass = new LibraryClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Label1.Text = Session["name"].ToString();

                bindgrig();
            }
        }

        private void bindgrig()
        {
            string strsql;

            strsql = "select * from 圖書資訊表 order by 流水號 desc";

            DataTable dt = new DataTable();

            dt = Libclass.ReadTable(strsql);

            GridView1.DataSource = dt;

            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strsql, droptext, txbtext;

            droptext = DropDownList1.SelectedValue.ToString();

            txbtext = TextBox1.Text.ToString();

            strsql = "select * from 圖書資訊表 where " + droptext + " like N'%" + txbtext + "%' order by 流水號 desc";

            DataTable dt = new DataTable();

            dt = Libclass.ReadTable(strsql);

            GridView1.DataSource = dt;

            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;

            bindgrig();
        }
    }
}