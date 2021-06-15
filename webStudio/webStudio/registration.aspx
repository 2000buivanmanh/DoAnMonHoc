<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="webStudio.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="StyleSheet" href="css/Stylelogin.css" />
    
</head>
<body>
   
        <form runat="server">
           <div class="vien">
                <div >
                <h1 class="header"> Tạo tài khoản </h1>
            <table class="auto-style1">
                <tr>
                    <td class="l">
                        <asp:Label runat="server" Text="Tên đăng nhập"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtTenDangNhap" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                         SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtTenDangNhap"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="l">
                        <asp:Label runat="server" Text="Mật Khẩu"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtMatKhau" TextMode="Password" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                         SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtMatKhau"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="l">
                        <asp:Label runat="server" Text="Số điện thoại"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtSDT" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                         SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtSDT"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="l">
                        <asp:Label runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtEmail" ></asp:TextBox>                    
                    </td>
                </tr>
                <tr>
                    <td class="l">
                        <asp:Label runat="server" Text="Địa chỉ"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtDiaChi" ></asp:TextBox>                    
                    </td>
                </tr>
                <tr>
                    <td class="l">
                        <asp:Label runat="server" Text="tên Khách hàng"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtTenKH" ></asp:TextBox>                    
                    </td>
                </tr>
            </table>
            <asp:Button CssClass="btn" runat="server" ID="btnDangKi" Text="Đăng kí" OnClick="btnDangKi_Click" ></asp:Button>
            <a class="btn" href="Login.aspx">Đăng nhập</a>
            </div>
           </div>
        </form>
    
</body>
</html>
