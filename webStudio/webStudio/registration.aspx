<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="webStudio.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="StyleSheet" href="css/Stylelogin.css" />
</head>
<body>
    <div class="container">
        <form >
            <h1> Tạo tài khoản </h1>
            <div class="formfield">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Username" />
            </div>
            <div class="formfield">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Password" />
            </div>
            <div class="formfield">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Enter the password" />
            </div>
            <button>Tạo tài khoản</button>
            <a href="Login.aspx">Đăng nhập</a>
        </form>
    </div>
</body>
</html>
