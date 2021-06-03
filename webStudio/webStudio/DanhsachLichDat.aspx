<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhsachLichDat.aspx.cs" Inherits="webStudio.DanhsachLichDat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/StyleHome.css">
    <style type="text/css">
        h1{
            color:crimson;
            margin-top:10px;
            padding-left:50px;
            margin-bottom:20px;
        }
        #btnhome{
            margin-left:700px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <h1>Thông tin khách hàng</h1> 
                    <div >
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="SDT" DataSourceID="SqlDataSource1" Width="1584px">
                        <Columns>
                            <asp:BoundField DataField="TenKH" HeaderText="Tên khách hàng" SortExpression="TenKH" />
                            <asp:BoundField DataField="SDT" HeaderText="Số điện thoại" ReadOnly="True" SortExpression="SDT" />
                            <asp:BoundField DataField="TenDV" HeaderText="Dịch vụ" SortExpression="TenDV" />
                            <asp:BoundField DataField="Thoigian" HeaderText="Thời gian" SortExpression="Thoigian" />
                            <asp:BoundField DataField="Ngay" HeaderText="Ngày" SortExpression="Ngay" />
                            <asp:BoundField DataField="DiaDiem" HeaderText="Địa điểm" SortExpression="DiaDiem" />
                            <asp:BoundField DataField="GhiChu" HeaderText="Lưu ý của khách hàng" SortExpression="GhiChu" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:STUDIOConnectionString %>" SelectCommand="SELECT KhachHang.TenKH, KhachHang.SDT, DichVu.TenDV, DatGio.Thoigian, DatGio.Ngay, DatGio.DiaDiem, DatGio.GhiChu FROM KhachHang INNER JOIN DatGio ON KhachHang.SDT = DatGio.SDT INNER JOIN DichVu ON DatGio.MaDV = DichVu.MaDV"></asp:SqlDataSource>
            </div>
            <div>
                <asp:Button runat="server" ID="btnhome" CssClass="btn" Text="Home" OnClick="btnhome_Click" />
            </div>
        </div>
    </form>
</body>
</html>
