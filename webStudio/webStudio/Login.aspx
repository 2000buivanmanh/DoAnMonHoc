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
            <div class="khung">
               <div>
                    <h1 class="header">Đăng nhập</h1>
               </div>
                <div class="formfield">
                <a class="name">Tên đăng nhập</a>
                <div class="">
                    <asp:TextBox ID="txtTendangnhap" runat="server" Width="248px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                         SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtTendangnhap"></asp:RequiredFieldValidator>
                </div>   
            </div>
            <div class="formfield">
                <a class="name">Mật khẩu</a>
                <div >
                    <asp:TextBox CssClass="ac" ID="txtMatkhau" runat="server" TextMode="Password" Width="245px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                        SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtMatkhau"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="formfield">
                <div class="left">&nbsp;</div>
                <div >
                    <asp:LinkButton CssClass="button" ID="lbtDangnhap" runat="server" OnClick="lbtDangnhap_Click" BackColor="#33CCCC" ForeColor="Black">Đăng nhập</asp:LinkButton>
                   
                </div>
            </div> 
            </div>
             
        </form>
       </div>
        

    
</body>
</html>
