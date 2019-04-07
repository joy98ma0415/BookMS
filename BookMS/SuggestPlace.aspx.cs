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
    public partial class SuggestPlace : System.Web.UI.Page
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

                Label2.Text = DateTime.Now.ToString();

                bindgrig();
            }
        }

        private void bindgrig()
        {
            string strsql;

            strsql = "select * from 圖書建議表 order by 流水號 desc";

            DataTable dt = new DataTable();

            dt = Libclass.ReadTable(strsql);

            DataList1.DataSource = dt;

            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime date = DateTime.Now;
            string datetime = date.ToString("yyyy-MM-dd HH:mm:ss");

            if (TextBox1.Text != "")
            {
                string strsql, username;

                username = Session["name"].ToString();

                strsql = string.Format("insert into 圖書建議表(讀者名,建議時間,建議內容) values('{0}','{1}',N'{2}')", username, datetime, TextBox1.Text);

                Libclass.execsql(strsql);

                TextBox1.Text = "";

                bindgrig();
            }
            else
            {
                Label2.Text = "留言內容不能為空！";
            }
        }
    }
}