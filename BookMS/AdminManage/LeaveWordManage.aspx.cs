using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BookMS.AdminManage
{
    public partial class LeaveWordManage : System.Web.UI.Page
    {
        private LibraryClass Libclass = new LibraryClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminname"] == null)
            {
                Response.Redirect("../ManagePlace.aspx");
            }
            else
            {
                GridView1.Attributes.Add("style", "word-break:keep-all;work-wrap:normal");

                GridView1.Attributes.Add("style", "word-break:break-all;word-wrap:break-word");

                if (!Page.IsPostBack)
                {
                    bindgriv();
                }
            }
        }

        private void bindgriv()
        {
            string strsql;

            strsql = "select * from 圖書留言表 order by 留言時間 desc";

            DataTable dt = new DataTable();

            dt = Libclass.ReadTable(strsql);

            GridView1.DataSource = dt;

            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                TextBox1.Text = "請輸入查詢關鍵字！";
            }
            else
            {
                string strsql, droptext;

                droptext = DropDownList1.SelectedValue;

                strsql = "select * from 圖書留言表 where " + droptext + " like N'%" + TextBox1.Text + "%' order by 留言時間 desc";

                DataTable dt = new DataTable();

                dt = Libclass.ReadTable(strsql);

                GridView1.DataSource = dt;

                GridView1.DataBind();
            }
        }

        protected void rowdelete(object sender, GridViewDeleteEventArgs e)
        {
            string strsql;

            strsql = "delete from 圖書留言表 where 流水號=" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "";

            Libclass.execsql(strsql);

            bindgriv();
        }

        protected void PageChang(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;

            bindgriv();
        }
    }
}