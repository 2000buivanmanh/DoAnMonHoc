using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webStudio
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtDangnhap_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            con = new SqlConnection(@"server=DESKTOP-911ES53\VANMANH;uid=sa;pwd=vanmanh;database=STUDIO");
            con.Open();
            String sql = "SELECT * FROM TaiKhoan WHERE TenDN='" + txtTendangnhap.Text + "' AND MatKhau='" + txtMatkhau.Text + "'";
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataReader dr = com.ExecuteReader();
            bool chk = dr.Read();
            dr.Close();
            con.Close();
            if (chk)
            {
                Session.Add("taikhoan", txtTendangnhap.Text);
                Session.Add("matkhau", txtMatkhau.Text);
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write("<center>Tài khoản không đúng hoặc mật khẩu sai. Bạn vui lòng nhập lại.</center>");
            }

        }
    }
}