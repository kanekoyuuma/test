using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sql_1
{
    public partial class MstUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Registration(Object sender, EventArgs e){

            string connectionString = string.Format("Server=127.0.0.1; database=usr; UID=root; password=pokopoko123; SslMode = none");
            MySqlConnection con = new MySqlConnection(connectionString);
            // コマンドを作成
           // MySqlCommand cmd = new MySqlCommand("insert into user values (@uid, @passwd)", con);
            // コマンドを作成
            MySqlCommand cmd =
                new MySqlCommand("insert into user ( uid, passwd, unam ) values ( @uid, @passwd, @unam )", con);
            // パラメータ設定
            cmd.Parameters.Add(
                new MySqlParameter("id", 5));
            cmd.Parameters.Add(
                new MySqlParameter("uid", NewTxtUsr.Text));
            cmd.Parameters.Add(
                new MySqlParameter("passwd", NewTxtPass.Text));
            cmd.Parameters.Add(
                new MySqlParameter("unam", DateTime.Now));

            try
            {
                // オープン
                cmd.Connection.Open();
                // 実行
                cmd.ExecuteNonQuery();
                // クローズ
                cmd.Connection.Close();
                Response.Redirect("Login_030.aspx");
            }
            catch (SqlException ex)
            {
                // 例外処理
                System.Diagnostics.Debug.WriteLine(ex);
            }
        }
       
    }
}