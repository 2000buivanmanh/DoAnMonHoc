<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webStudio.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/Stylelogin.css" />
    
</head>
<body>
        <div class="container">
            <form id="form1" runat="server">
                <h1>Đăng nhập</h1>
                <div class="form-field">
                <a class="name">Tên đăng nhập</a>
                <div>
                    <asp:TextBox CssClass="textbox" ID="txtTendangnhap" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                         SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtTendangnhap"></asp:RequiredFieldValidator>
                </div>   
            </div>
            <div class="form-field">
                <a class="name">Mật khẩu</a>
                <div >
                    <asp:TextBox CssClass="textbox" ID="txtMatkhau" runat="server" TextMode="Password" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                        SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtMatkhau"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-field">
                <div class="left">&nbsp;</div>
                <div class="button">
                    <asp:LinkButton ID="lbtDangnhap" runat="server" OnClick="lbtDangnhap_Click">Đăng nhập</asp:LinkButton>
                </div>
            </div>           
        </form>

        </div>
    
</body>
</html>
