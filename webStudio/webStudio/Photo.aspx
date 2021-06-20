<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Photo.aspx.cs" Inherits="webStudio.Photo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link rel="stylesheet" href="css/Stylephoto.css" />
	<link rel="stylesheet" href="css/StyleHotline.css" />
	
    <style type="text/css">
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
				<header>
					<div class="innerheader container">
						<a href="#"><img src="image/logo.png" /></a>
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
		<div class="cach">
			
		</div>
		<div class="slide">
		<div class="dieuhuong">
			<i class="fa fa-chevron-circle-left" onclick="Back();"></i>
			<i class="fa fa-chevron-circle-right" onclick="Next();"></i>
		</div>
		<div class="chuyen-slide">
						<img class="abcd" src="image/em.jpg" /> // 1000
			            <img class="abcd" src="image/catinh.jpg" /> // 2000
			            <img class="abcd" src="image/hoanghau/d4.jpg" /> // 0
			            <img class="abcd" src="image/diudang.jpg" /> // 3000
			            <img class="abcd" src="image/nhenhang.jpg" /> // 4000
		</div>
	</div>
		<div class="slide">
		<div class="dieuhuong">
			<i class="fa fa-chevron-circle-left" onclick="Back();"></i>
			<i class="fa fa-chevron-circle-right" onclick="Next();"></i>
		</div>
		<div class="chuyen-slide">
						<img class="abcd" src="image/em.jpg" /> // 1000
			            <img class="abcd" src="image/catinh.jpg" /> // 2000
			            <img class="abcd" src="image/hoanghau/d4.jpg" /> // 0
			            <img class="abcd" src="image/diudang.jpg" /> // 3000
			            <img class="abcd" src="image/nhenhang.jpg" /> // 4000
		</div>
	</div>

		<div class="hotline-phone-ring-wrap">		
			<div class="hotline-phone-ring">
			<div class="hotline-phone-ring-circle"></div>
			<div class="hotline-phone-ring-circle-fill"></div>
			<div class="hotline-phone-ring-img-circle"> <a href="tel:0362720346" class="pps-btn-img"> <img src="https://netweb.vn/img/hotline/icon.png" alt="so dien thoai" width="50"/> </a></div>
		</div>		
		<div class="hotline-bar"> 
			<a href="tel:0362720346"> <span class="text-hotline">036 272 0346</span> </a>
		</div>			 
		
</div>



<div class="float-icon-hotline">			
		<ul class ="left-icon hotline">
			<li class="hotline_float_icon"><a target="_blank" rel="nofollow" id="messengerButton" href="https://zalo.me/0362720346"><i class="fa fa-zalo animated infinite tada"></i><span>Zalo</span></a></li>
			<li class="hotline_float_icon"><a target="_blank" rel="nofollow" id="messengerButton" href="https://www.facebook.com/buivanmanh01655/"><i class="fa fa-messenger animated infinite tada"></i><span>Facebook</span></a></li>
		</ul>		
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
		<script type="text/javascript" src="scrip/slide.js"></script>
    </form>
</body>
</html>
