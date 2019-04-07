using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BookMS.AdminManage
{
    public partial class AdminReg : System.Web.UI.Page
    {
        private LibraryClass Libclass = new LibraryClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminname"] == null)
            {
                Response.Redirect("~/ManagePlace.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strsql;

            strsql = "insert into 管理員表 (用戶名,密碼) values('" + TextBox1.Text + "','" + TextBox2.Text + "')";

            Libclass.execsql(strsql);

            TextBox1.Text = "添加成功";
            TextBox2.Text = "";
        }
    }
}