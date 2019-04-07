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
    public partial class Borrow : System.Web.UI.Page
    {
        private LibraryClass Libclass = new LibraryClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;

            Label2.Text = DateTime.Now.ToString();

            if (Session["name"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Label1.Text = Session["name"].ToString();

                bookshow();

                leaveword();
            }
        }

        private void leaveword()
        {
            string strsql, bookid;

            bookid = Request.QueryString["id"].ToString();

            strsql = "select * from 圖書留言表 where 圖書流水號='" + bookid + "'";

            DataTable dt = new DataTable();

            dt = Libclass.ReadTable(strsql);

            DataList2.DataSource = dt;

            DataList2.DataBind();
        }

        private void bookshow()
        {
            string strsql, bookid;

            bookid = Request.QueryString["id"].ToString();

            strsql = "select * from 圖書資訊表 where 流水號='" + bookid + "'";

            DataTable dt = new DataTable();

            dt = Libclass.ReadTable(strsql);

            DataList1.DataSource = dt;

            DataList1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string strsql, username, bookid, strsql2;

            DateTime myDate = DateTime.Now;
            string borrowtime = myDate.ToString("yyyy-MM-dd HH:mm:ss");

            username = Session["name"].ToString();

            bookid = Request.QueryString["id"].ToString();

            strsql = "select 圖書數量 from 圖書資訊表 where 流水號='" + bookid + "' and 圖書數量>0";

            DataSet ds = new DataSet();

            ds = Libclass.GetDataSet(strsql, "圖書數量");

            if (ds.Tables["圖書數量"].Rows.Count == 0)
            {
                Label6.Text = "該書已全部借完！";

                bookshow();

                leaveword();
            }
            else
            {
                strsql = "update 圖書資訊表 set 圖書數量=圖書數量-1 where 流水號='" + Request.QueryString["id"] + "'";

                Libclass.execsql(strsql);

                strsql2 = "insert into 借書訊息表(圖書流水號,讀者名,借書時間) values('" + bookid + "','" + username + "','" + borrowtime + "')";

                Libclass.execsql(strsql2);

                Label6.Text = "借閱成功！";

                bookshow();

                leaveword();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;

            TextBox1.Text = "";

            Label6.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DateTime myDate = DateTime.Now;
            string msgtime = myDate.ToString("yyyy-MM-dd HH:mm:ss");

            if (TextBox1.Text != "")
            {
                string strsql, username, bookid;

                username = Session["name"].ToString();

                bookid = Request.QueryString["id"].ToString();

                strsql = string.Format("insert into 圖書留言表(圖書流水號,讀者名,留言時間,留言內容) values('{0}', '{1}', '{2}', N'{3}')", bookid, username, msgtime, TextBox1.Text);

                Libclass.execsql(strsql);

                Label6.Text = "留言成功！";

                Panel1.Visible = false;

                bookshow();

                leaveword();
            }
            else
            {
                Label6.Text = "留言不能為空！";

                Panel1.Visible = false;
            }
        }
    }
}