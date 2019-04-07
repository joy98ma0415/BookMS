using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BookMS
{
    public partial class UserReg : System.Web.UI.Page
    {
        private LibraryClass Libclass = new LibraryClass();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strsql;

            strsql = string.Format("insert into 讀者資訊表(用戶名,密碼,性別,學院,學號) values('{0}', '{1}', N'{2}', N'{3}', '{4}')", TextBox1.Text, TextBox2.Text, DropDownList1.SelectedValue, TextBox3.Text, TextBox4.Text);
            //strsql = "insert into 讀者資訊表(用戶名,密碼,性別,學院,學號) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";

            Libclass.execsql(strsql);

            TextBox1.Text = "註冊成功！";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}