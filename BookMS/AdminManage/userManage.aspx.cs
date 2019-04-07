using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BookMS.AdminManage
{
    public partial class userManage : System.Web.UI.Page
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

            strsql = "select * from 讀者資訊表 order by 學號 desc";

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

                strsql = "select * from 讀者資訊表 where " + droptext + " like N'%" + TextBox1.Text + "%' order by 學號 desc";

                DataTable dt = new DataTable();

                dt = Libclass.ReadTable(strsql);

                GridView1.DataSource = dt;

                GridView1.DataBind();
            }
        }

        protected void PageChang(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;

            bindgriv();
        }

        protected void rowdelete(object sender, GridViewDeleteEventArgs e)
        {
            string strsql;

            strsql = "delete from 讀者資訊表 where 用戶名=" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "";

            Libclass.execsql(strsql);

            bindgriv();
        }

        protected void rowupdate(object sender, GridViewUpdateEventArgs e)
        {
            string strsql;
            string yonghuming = ((TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0]).Text.ToString().Trim();
            string mima = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text.ToString().Trim();
            string xingbie = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text.ToString().Trim();
            string xuehao = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text.ToString().Trim();
            string xueyuan = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text.ToString().Trim();

            strsql = "update 讀者資訊表 set 用戶名='" + yonghuming + "',密碼='" + mima + "',性別='" + xingbie + "',學號='" + xuehao + "',學院='" + xueyuan + "' where 流水號=" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "";

            Libclass.execsql(strsql);

            GridView1.EditIndex = -1;

            bindgriv();
        }

        protected void rowedit(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;

            bindgriv();
        }
    }
}