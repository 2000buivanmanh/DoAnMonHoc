using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webStudio
{
    public partial class Login : System.Web.UI.Page
    {
        String strCon = @"server=DESKTOP-911ES53\VANMANH;uid=sa;pwd=vanmanh;database=STUDIO";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtDangnhap_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                con.Open();
                String sql = "SELECT top 1 * FROM TaiKhoan WHERE TenDN='" + txtTendangnhap.Text + "' AND MatKhau='" + txtMatkhau.Text + "'";
                SqlCommand com = new SqlCommand(sql, con);
                SqlDataAdapter adap = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                adap.Fill(dt);
                String username = dt.Rows[0]["TenDN"].ToString();
                String pass = dt.Rows[0]["MatKhau"].ToString();
                String MaQuyen = dt.Rows[0]["MaQuyen"].ToString();
                con.Close();
                Session["TenDangNhap"] = username;
                if(MaQuyen == "1")
                {
                    Session["Login"] = 1;
                    Response.Redirect("Admin.aspx");
                    
                }else if(MaQuyen == "2")
                {
                    Session["Login"] = 2;
                    Response.Redirect("Home.aspx");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<center>Tài khoản không đúng hoặc sai mật khẩu. Bạn vui lòng nhập lại.</center>");
                txtTendangnhap.Text = "";
                txtMatkhau.Text = "";
            }
            
        }
    }
}