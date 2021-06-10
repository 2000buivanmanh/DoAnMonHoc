<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailsDV.aspx.cs" Inherits="webStudio.DetailsDV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView runat="server" ID="DetailsViewDV" AutoGenerateRows="False" DataKeyNames="MaDV" DataSourceID="SqlDataSource1" Width="414px">
                <Fields>
                    <asp:BoundField DataField="MaDV" HeaderText="MaDV" ReadOnly="True" SortExpression="MaDV" />
                    <asp:BoundField DataField="MaLDV" HeaderText="MaLDV" SortExpression="MaLDV" />
                    <asp:BoundField DataField="TenDV" HeaderText="TenDV" SortExpression="TenDV" />
                    <asp:BoundField DataField="GiaDV" HeaderText="GiaDV" SortExpression="GiaDV" />
                    <asp:BoundField DataField="HinhAnh" HeaderText="HinhAnh" SortExpression="HinhAnh" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:CommandField HeaderText="New" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:STUDIOConnectionString %>" DeleteCommand="DELETE FROM [DichVu] WHERE [MaDV] = @MaDV" InsertCommand="INSERT INTO [DichVu] ([MaDV], [MaLDV], [TenDV], [GiaDV], [HinhAnh]) VALUES (@MaDV, @MaLDV, @TenDV, @GiaDV, @HinhAnh)" SelectCommand="SELECT * FROM [DichVu] WHERE ([MaDV] = @MaDV)" UpdateCommand="UPDATE [DichVu] SET [MaLDV] = @MaLDV, [TenDV] = @TenDV, [GiaDV] = @GiaDV, [HinhAnh] = @HinhAnh WHERE [MaDV] = @MaDV">
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
        </div>
    </form>
</body>
</html>
