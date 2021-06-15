using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webStudio
{
    public partial class registration : System.Web.UI.Page
    {
        String maquyen = "1";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnDangKi_Click(object sender, EventArgs e)
        {
            String conStr = @"Data Source=DESKTOP-911ES53\VANMANH;Initial Catalog=STUDIO;User ID=sa;password=vanmanh";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            String query = "insert into TaiKhoan values('" + txtTenDangNhap.Text + "', '" + txtMatKhau.Text + "', '" + txtSDT.Text + "','" + txtEmail.Text + "','" + maquyen + "','" + txtDiaChi.Text + "','" + txtTenKH.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["Login"] = 2;
            Response.Redirect("home.aspx");
            
        }
    }
}