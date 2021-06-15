using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webStudio
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        String id = "";
        String name = "";
        String gia = "";
        String HinhAnh = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            int status = Convert.ToInt32(Session["Login"].ToString());
            if(status == 0)
            {
                Response.Redirect("registration.aspx");
            }
            id = Session["MaDV"].ToString();
            name = Session["TenDv"].ToString();
             gia = Session["GiaDV"].ToString();
             HinhAnh = Session["img"].ToString();
            lblmadv.Text = id;
            lbltenDV.Text = name;
            lblgia.Text = gia;
            imgDV.ImageUrl = HinhAnh;
            
            
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            String conStr = @"Data Source=DESKTOP-911ES53\VANMANH;Initial Catalog=STUDIO;User ID=sa;password=vanmanh";
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            String query = "insert into DatGio values('" + textbox1.Text + "', '" + id + "', '" + textbox2.Text + "','" + textbox5.Text + "','" + textbox3.Text + "','" + textbox4.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("home.aspx");
        }
    }
}