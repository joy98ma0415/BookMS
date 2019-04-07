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
    public partial class ReturnBook : System.Web.UI.Page
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

            strsql = "select * from 圖書資訊表 where 流水號 in(select 圖書流水號 from 借書訊息表 where 讀者名='" + Session["name"].ToString() + "') order by 流水號 desc";

            DataTable dt = new DataTable();

            dt = Libclass.ReadTable(strsql);

            GridView1.DataSource = dt;

            GridView1.DataBind();
        }

        protected void PageChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;

            bindgrig();
        }

        protected void ReturnBooking(object sender, GridViewDeleteEventArgs e)
        {
            string strsql, username;

            username = Session["name"].ToString();

            strsql = "delete top (1) from 借書訊息表 where 讀者名 = '" + username + "' and 圖書流水號=" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "";

            Libclass.execsql(strsql);

            strsql = "update 圖書資訊表 set 圖書數量=圖書數量+1 where 流水號=" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "";

            Libclass.execsql(strsql);

            bindgrig();
        }
    }
}