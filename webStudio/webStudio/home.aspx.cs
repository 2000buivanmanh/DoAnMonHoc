using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webStudio
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int status = Convert.ToInt32(Session["Login"].ToString());
            if (status != 0)
            {
                ltrTenDN.Text ="xin chào:"+ Session["TenDangNhap"].ToString();
            }
        }

        protected void lbtDangXuat_Click(object sender, EventArgs e)
        {
            Session["TenDangNhap"] = null;
            Session["login"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}