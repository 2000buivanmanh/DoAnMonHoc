using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace webStudio
{
    public partial class DanhsachLichDat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }


        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            String[] arrayItem = new string[5];
            arrayItem = e.CommandArgument.ToString().Split(';');
            String MaDV = arrayItem[0];
            Session["MaDV"] = MaDV;
            //Response.Redirect("DetailsDV.aspx");
            
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DetailsView_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            string message = "<script language=javascript>alert('Xóa thành công');</script>";
            Page.RegisterStartupScript("script", message);
            DataList1.DataBind();
        }

        protected void DetailsView_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            string message = "<script language=javascript>alert('Cập nhật thành công');</script>";
            Page.RegisterStartupScript("script", message);
            Session["MaDV"] = "";
            DataList1.DataBind();
        }

        protected void DetailsView_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            string message = "<script language=javascript>alert('Thêm thành công');</script>";
            Page.RegisterStartupScript("script", message);
            Session["MaDV"] = ""; 
            DataList1.DataBind();
        }

        protected void DetailsView_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
        {
           
        }

        protected void DetailsView_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            String madv = Session["MaDV"].ToString();
            if(e.CommandName == "DeleteDV")
            {
                String str = @"Data Source=DESKTOP-911ES53\VANMANH;Initial Catalog=STUDIO;User ID=sa;password=vanmanh";
                 try
                 {
                    SqlConnection conn = new SqlConnection(str);
                    conn.Open();
                    String query = "delete DichVu where MaDV = '" + madv + "'";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    DataList1.DataBind();
                    Session["MaDV"] = "";
                }
                 catch(Exception ex)
                 {
                     string message = "<script language=javascript>alert('Xóa không thành công');</script>";
                     Page.RegisterStartupScript("script", message);
                 }
                
            }
        }
    }
}