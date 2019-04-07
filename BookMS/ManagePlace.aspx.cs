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
    public partial class ManagePlace : System.Web.UI.Page
    {
        private LibraryClass Libclass = new LibraryClass();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strsql;

            strsql = "select 用戶名,密碼 from 管理員表 where 用戶名='" + TextBox1.Text + "' and 密碼='" + TextBox2.Text + "'";

            DataSet ds = new DataSet();

            ds = Libclass.GetDataSet(strsql, "username");

            if (ds.Tables["username"].Rows.Count == 0)
            {
                string scriptString = "alert('" + "帳號不存在，請確認後再登入！" + "');";

                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "warning", scriptString, true);
            }
            else
            {
                Session["adminname"] = TextBox1.Text;

                Response.Redirect("~/AdminManage/ManageDefault.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminReg.aspx");
        }
    }
}