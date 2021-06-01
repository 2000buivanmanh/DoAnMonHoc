<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakeupBridal.aspx.cs" Inherits="webStudio.MakeupBridal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Makeup Bridal</title>
	<link rel="stylesheet" href="css/StyleHome.css">

    <style type="text/css">
        .auto-style1 {
            width: 101px;
            height: 70px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
				<header>
					<div class="innerheader container">
						<a href="#"><img src="image/logo.png" class="auto-style1"></a>
						<nav>
							<ul id="mainmenu">							
							<li><a href="home.aspx">home</a></li>
							<li><a href="MakeupBridal.aspx">Makeup bridal</a></li> <!-- trang điểm cô dâu -->
							<li><a href="MakeupParty.aspx">Makeup Party</a></li> <!-- trang điểm dự tiệc -->
							<li><a href="Photo.aspx">Photo</a></li>
							<li><a href="Combo.aspx">Combo</a></li>
							<li><a href="Dresses.aspx">Dresses</a></li><!-- váy -->
							<li><a href="Login.aspx">Login</a></li>
						</ul>
						</nav>
					</div>
				</header>
				</div>
		<div  id="slice">			
					<div class="left" style="left: 75px; top: 120px">
						<h2><i>Wedding</i> </h2>
						<h1>Studio</h1>
						<p>Hãy để chúng tôi lưu giữ khoảnh khắc đẹp nhất của bạn</p>
						
					</div>
				</div>
		<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
			<script>
                $(document).ready(function () {
                    $(window).scroll(function () {
                        if ($(this).scrollTop()) {
                            $('header').addClass('sticky');
                        } else {
                            $('header').removeClass('sticky');
                        }
                    });
                });
            </script>
    </form>
</body>
</html>
