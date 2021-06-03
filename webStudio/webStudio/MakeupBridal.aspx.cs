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
    public partial class MakeupBridal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

       
        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {
            String[] arrayItem = new string[4];
            arrayItem = e.CommandArgument.ToString().Split(';');
            String MaDV = arrayItem[0];
            String TenDV = arrayItem[1];
            String giaDV = arrayItem[2] + "đ";
            String HinhAnh = arrayItem[3];
            Session["MaDV"] = MaDV;
            Session["TenDV"] = TenDV;
            Session["GiaDv"] = giaDV;
            Session["img"] = HinhAnh;
            Response.Redirect("Datlich.aspx");
        }
    }
}