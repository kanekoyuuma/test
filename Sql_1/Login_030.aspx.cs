using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace Sql_1
{
    public partial class Login_030 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Edit(Object sender, EventArgs e)
        {
            string connectionString = string.Format("Server=127.0.0.1; database=usr; UID=root; password=pokopoko123; SslMode = none");
            MySqlConnection con = new MySqlConnection(connectionString);
            MySqlCommand objCom = new MySqlCommand("SELECT * FROM user WHERE uid=@uid AND passwd=@passwd", con);
            objCom.Parameters.Add("@uid", EditTxtUsr.Text);
            objCom.Parameters.Add("@passwd", EditTxtPass.Text);
            con.Open();
            MySqlDataReader objDr = objCom.ExecuteReader();
            if (objDr.Read())
            {
                // 検索の結果、該当するレコードが存在した場合、認証は成功
                //FormsAuthentication.RedirectFromLoginPage(txtUsr.Text, false);
                Response.Redirect("Login_040.aspx");
            }
            else
            {
                objLbl.Text = "先程登録された正しいユーザーID、パスワードを入力してください";
            }
            con.Close();
        }
    }
}