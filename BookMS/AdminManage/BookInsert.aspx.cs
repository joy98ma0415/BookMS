using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BookMS.AdminManage
{
    public partial class BookInsert : System.Web.UI.Page
    {
        private LibraryClass Libclass = new LibraryClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminname"] == null)
            {
                Response.Redirect("~/ManagePlace.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    TextBox6.Text = DateTime.Now.ToString();

                    string strlei;

                    strlei = "select * from 圖書類別表";

                    DataTable dt = new DataTable();

                    dt = Libclass.ReadTable(strlei);

                    DropDownList1.DataSource = dt;

                    DropDownList1.DataTextField = "圖書類別";

                    DropDownList1.DataValueField = "圖書類別";

                    DropDownList1.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strsql;

            DateTime myDate = DateTime.Parse(TextBox6.Text);
            string rukutime = myDate.ToString("yyyy-MM-dd HH:mm:ss");

            strsql = string.Format("insert into 圖書資訊表(書名,作者,圖書類別,出版社,出版日期,入庫時間,圖書數量,所在書架,圖書價格) values(N'{0}', N'{1}', N'{2}', N'{3}', '{4}', '{5}', '{6}', '{7}', '{8}')", TextBox1.Text, TextBox2.Text, DropDownList1.SelectedValue, TextBox4.Text, TextBox5.Text, rukutime, TextBox7.Text, TextBox8.Text, TextBox9.Text);

            Libclass.execsql(strsql);

            TextBox1.Text = "添加成功";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
        }
    }
}