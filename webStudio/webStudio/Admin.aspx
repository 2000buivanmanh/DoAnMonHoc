 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="webStudio.DanhsachLichDat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        h1{
            color:crimson;
            margin-top:10px;
            padding-left:50px;
            margin-bottom:20px;
        }
        #btnhome{
            margin-top:20px;
            font-size:25px;
            color:white;
            margin-left:700px;
            background-color:brown;
            
        }

        .auto-style1 {
            margin-left: 47px;
        }

        .auto-style2 {
            margin-left: 623px;
        }

    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <h1>Thông tin khách hàng đặt lịch</h1> 
                    <div >
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="SDT,MaDV" Width="1421px" DataSourceID="SqlDataSource1" CssClass="auto-style1" >
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="SDT" HeaderText="Số điện thoại" ReadOnly="True" SortExpression="SDT" />
                            <asp:BoundField DataField="MaDV" HeaderText="Mã dịch vụ" SortExpression="MaDV" ReadOnly="True" />
                            <asp:BoundField DataField="Thoigian" HeaderText="Thời gian" SortExpression="Thoigian" />
                            <asp:BoundField DataField="Ngay" HeaderText="Ngày" SortExpression="Ngay" />
                            <asp:BoundField DataField="DiaDiem" HeaderText="Địa điểm" SortExpression="DiaDiem" />
                            <asp:BoundField DataField="GhiChu" HeaderText="Ghi chú" SortExpression="GhiChu" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:STUDIOConnectionString %>" SelectCommand="SELECT * FROM [DatGio]" DeleteCommand="DELETE FROM [DatGio] WHERE [SDT] = @SDT AND [MaDV] = @MaDV" InsertCommand="INSERT INTO [DatGio] ([SDT], [MaDV], [Thoigian], [Ngay], [DiaDiem], [GhiChu]) VALUES (@SDT, @MaDV, @Thoigian, @Ngay, @DiaDiem, @GhiChu)" UpdateCommand="UPDATE [DatGio] SET [Thoigian] = @Thoigian, [Ngay] = @Ngay, [DiaDiem] = @DiaDiem, [GhiChu] = @GhiChu WHERE [SDT] = @SDT AND [MaDV] = @MaDV">
                        <DeleteParameters>
                            <asp:Parameter Name="SDT" Type="Int32" />
                            <asp:Parameter Name="MaDV" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="SDT" Type="Int32" />
                            <asp:Parameter Name="MaDV" Type="String" />
                            <asp:Parameter DbType="Time" Name="Thoigian" />
                            <asp:Parameter DbType="Date" Name="Ngay" />
                            <asp:Parameter Name="DiaDiem" Type="String" />
                            <asp:Parameter Name="GhiChu" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter DbType="Time" Name="Thoigian" />
                            <asp:Parameter DbType="Date" Name="Ngay" />
                            <asp:Parameter Name="DiaDiem" Type="String" />
                            <asp:Parameter Name="GhiChu" Type="String" />
                            <asp:Parameter Name="SDT" Type="Int32" />
                            <asp:Parameter Name="MaDV" Type="String" />
                        </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                
            </div>
            <div>
            <asp:DetailsView runat="server" ID="DetailsView" AutoGenerateRows="False" DataSourceID="SqlDataSource2" DataKeyNames="MaDV" OnItemCommand="DetailsView_ItemCommand" OnItemDeleted="DetailsView_ItemDeleted" OnItemDeleting="DetailsView_ItemDeleting" OnItemInserted="DetailsView_ItemInserted" OnItemUpdated="DetailsView_ItemUpdated" OnLoad="Page_Load" CssClass="auto-style2" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="MaDV"  HeaderText="Mã dịch vụ " ReadOnly="True" SortExpression="MaDV" />
                    <asp:BoundField DataField="MaLDV" HeaderText="Mã loại dịch vụ" SortExpression="MaLDV" />
                    <asp:BoundField DataField="TenDV" HeaderText="Tên" SortExpression="TenDV" />
                    <asp:BoundField DataField="GiaDV" HeaderText="Giá" SortExpression="GiaDV" />
                    <asp:BoundField DataField="HinhAnh" HeaderText="Tệp hình ảnh" SortExpression="HinhAnh" />
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                    
                    <asp:ButtonField CommandName="DeleteDV" Text="Delete" />
                    
                </Fields>
                
             
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                
             
            </asp:DetailsView>
        </div>
            <h1>Thông tin Dịch vụ</h1>
            <asp:DataList  ID="DataList1" runat="server" DataKeyField="MaDV" DataSourceID="SqlDataSource3" RepeatColumns="6" CssClass="auto-style3" Width="1379px" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" style="margin-left: 102px" >
            <ItemTemplate>
                
                <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl='<%# Eval("HinhAnh") %>' Width="150px" />
                <br />
                Mã:
                <asp:Label ID="MaDVLabel" runat="server" Text='<%# Eval("MaDV") %>' />
                <br />
                Mã loại:
                <asp:Label ID="MaLDVLabel" runat="server" Text='<%# Eval("MaLDV") %>' />
                <br />
                Tên:
                <asp:Label ID="TenDVLabel" runat="server" Text='<%# Eval("TenDV") %>' />
                <br />
                Giá:
                <asp:Label ID="GiaDVLabel" runat="server" Text='<%# Eval("GiaDV") %>' />
                <br />
                <asp:LinkButton runat="server" ID="btnDetails" Text="Chi tiết" CommandArgument='<%# Eval("MaDV") %>' />
                
                <br />
            </ItemTemplate>
        </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:STUDIOConnectionString %>" SelectCommand="SELECT * FROM [DichVu]" DeleteCommand="DELETE FROM [DichVu] WHERE [MaDV] = @MaDV" InsertCommand="INSERT INTO [DichVu] ([MaDV], [MaLDV], [TenDV], [GiaDV], [HinhAnh]) VALUES (@MaDV, @MaLDV, @TenDV, @GiaDV, @HinhAnh)" UpdateCommand="UPDATE [DichVu] SET [MaLDV] = @MaLDV, [TenDV] = @TenDV, [GiaDV] = @GiaDV, [HinhAnh] = @HinhAnh WHERE [MaDV] = @MaDV">
                <DeleteParameters>
                    <asp:Parameter Name="MaDV" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaDV" Type="String" />
                    <asp:Parameter Name="MaLDV" Type="String" />
                    <asp:Parameter Name="TenDV" Type="String" />
                    <asp:Parameter Name="GiaDV" Type="Double" />
                    <asp:Parameter Name="HinhAnh" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaLDV" Type="String" />
                    <asp:Parameter Name="TenDV" Type="String" />
                    <asp:Parameter Name="GiaDV" Type="Double" />
                    <asp:Parameter Name="HinhAnh" Type="String" />
                    <asp:Parameter Name="MaDV" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:STUDIOConnectionString %>" DeleteCommand="DELETE FROM [DichVu] WHERE [MaDV] = @MaDV" InsertCommand="INSERT INTO [DichVu] ([MaDV], [MaLDV], [TenDV], [GiaDV], [HinhAnh]) VALUES (@MaDV, @MaLDV, @TenDV, @GiaDV, @HinhAnh)" SelectCommand="SELECT * FROM [DichVu] WHERE ([MaDV] = @MaDV)" UpdateCommand="UPDATE [DichVu] SET [MaLDV] = @MaLDV, [TenDV] = @TenDV, [GiaDV] = @GiaDV, [HinhAnh] = @HinhAnh WHERE [MaDV] = @MaDV">
            <DeleteParameters>
                <asp:Parameter Name="MaDV" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaDV" Type="String" />
                <asp:Parameter Name="MaLDV" Type="String" />
                <asp:Parameter Name="TenDV" Type="String" />
                <asp:Parameter Name="GiaDV" Type="Double" />
                <asp:Parameter Name="HinhAnh" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="MaDV" SessionField="MaDV" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaLDV" Type="String" />
                <asp:Parameter Name="TenDV" Type="String" />
                <asp:Parameter Name="GiaDV" Type="Double" />
                <asp:Parameter Name="HinhAnh" Type="String" />
                <asp:Parameter Name="MaDV" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
            <div>
                <asp:Button runat="server" ID="btnhome" CssClass="btn" Text="Trang chủ" OnClick="btnhome_Click" />
            </div>
        </div>
        
        
    </form>
</body>
</html>
