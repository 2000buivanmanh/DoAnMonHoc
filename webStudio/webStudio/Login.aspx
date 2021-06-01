<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webStudio.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="StyleSheet" href="css/Stylelogin.css" />
</head>
<body>
    <div class="container">
        <form >
            <h1> Đăng nhập</h1>
            <div class="formfield">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Username" />
            </div>
            <div class="formfield">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Password" />
            </div>
            <button>Đăng nhập</button>
            <a href="registration.aspx">Đăng kí tài khoản</a>
        </form>
    </div>
</body>
</html>
