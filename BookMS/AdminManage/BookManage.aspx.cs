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
    public partial class BookManage : System.Web.UI.Page
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
                    gridbind();
                }
            }
        }

        private void gridbind()
        {
            string strsql;

            strsql = "select * from 圖書資訊表";

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

                strsql = "select * from 圖書資訊表 where " + droptext + " like N'%" + TextBox1.Text + "%' order by 入庫時間 desc";

                DataTable dt = new DataTable();

                dt = Libclass.ReadTable(strsql);

                GridView1.DataSource = dt;

                GridView1.DataBind();
            }
        }

        protected void PageChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;

            gridbind();
        }

        protected void RowCanceling(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;

            gridbind();
        }

        protected void RowDelete(object sender, GridViewDeleteEventArgs e)
        {
            string strsql;

            strsql = "delete from 圖書資訊表 where 流水號=" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "";

            Libclass.execsql(strsql);

            gridbind();
        }

        protected void RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;

            gridbind();
        }

        protected void RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string strsql;
            DateTime chubandate = Convert.ToDateTime(GridView1.Rows[e.RowIndex].Cells[4].Text);
            string chubantime = chubandate.ToString("yyyy/MM/dd hh:mm:ss");
            DateTime rukudate = Convert.ToDateTime(GridView1.Rows[e.RowIndex].Cells[5].Text);
            string rukutime = rukudate.ToString("yyyy/MM/dd hh:mm:ss");

            string shuming = ((TextBox)GridView1.Rows[e.RowIndex].Cells[0].Controls[0]).Text.ToString().Trim();
            string zuozhe = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text.ToString().Trim();
            string leibie = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text.ToString().Trim();
            string chuban = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text.ToString().Trim();
            string shuliang = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text.ToString().Trim();
            string shujia = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text.ToString().Trim();
            string jiage = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text.ToString().Trim();

            strsql = "update 圖書資訊表 set 書名='" + shuming + "',作者='" + zuozhe + "',圖書類別='" + leibie + "',出版社='" + chuban + "',出版日期='" + chubantime + "',入庫時間='" + rukutime + "',圖書數量='" + shuliang + "',所在書架='" + shujia + "',圖書價格='" + jiage + "' where 流水號=" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "";

            Libclass.execsql(strsql);

            GridView1.EditIndex = -1;

            gridbind();
        }
    }
}