using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System;

namespace BookMS
{
    public class LibraryClass
    {
        private String strConn;//定义变量

        public LibraryClass()
        {
            //
            // TODO: 在此处添加构造函数逻辑
            //
            strConn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        }

        public DataTable ReadTable(String strSql) //从数据库读取数据，并返回一个DataTable
        {
            DataTable dt = new DataTable();

            SqlConnection Conn = new SqlConnection(strConn);

            Conn.Open();

            SqlDataAdapter Cmd = new SqlDataAdapter(strSql, Conn);

            Cmd.Fill(dt);

            Conn.Close();

            return dt;
        }

        public DataSet ReadDataSet(String strSql) //从数据库读取数据，返回一个DataSet
        {
            DataSet ds = new DataSet();

            SqlConnection Conn = new SqlConnection(strConn);

            Conn.Open();

            SqlDataAdapter Cmd = new SqlDataAdapter(strSql, Conn);

            Cmd.Fill(ds);

            Conn.Close();

            return ds;
        }

        public DataSet GetDataSet(String strSql, String tableName) //从数据库读取数据，返回一个DataSet，比ReadDataSet多出一个tableName
        {
            DataSet ds = new DataSet();

            SqlConnection Conn = new SqlConnection(strConn);

            Conn.Open();

            SqlDataAdapter Cmd = new SqlDataAdapter(strSql, Conn);

            Cmd.Fill(ds, tableName);

            Conn.Close();

            return ds;
        }

        public SqlDataReader readrow(String sql) //执行SQL查询，并返回一个Reader
        {
            SqlConnection Conn = new SqlConnection(strConn);

            Conn.Open();

            SqlCommand Comm = new SqlCommand(sql, Conn);
            //创建Reader控件，并添加数据记录
            SqlDataReader Reader = Comm.ExecuteReader();

            if (Reader.Read()) //如果Reader不为空，返回Reader，否则返回null
            {
                Comm.Dispose();
                return Reader;
            }
            else
            {
                Comm.Dispose();
                return null;
            }
        }

        public string Readstr(String strSql, int flag) //返回查询结果第一行某一字段的值
        {
            DataSet ds = new DataSet();
            String str;

            SqlConnection Conn = new SqlConnection(strConn);

            Conn.Open();

            SqlDataAdapter Cmd = new SqlDataAdapter(strSql, Conn);

            Cmd.Fill(ds);
            //取出DataSet中第一行第“flag”列的数据
            str = ds.Tables[0].Rows[0].ItemArray[flag].ToString();

            Conn.Close();

            return str;
        }

        public void execsql(String strSql) //用来执行SQL更新语句
        {
            SqlConnection Conn = new SqlConnection(strConn);

            SqlCommand Comm = new SqlCommand(strSql, Conn);

            Conn.Open();
            //执行命令
            Comm.ExecuteNonQuery();

            Conn.Close();
        }
    }
}