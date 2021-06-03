 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="webStudio.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>home</title>
	<link rel="stylesheet" href="css/StyleBridal.css">
	<link rel="stylesheet" href="css/StyleHotline.css">
    <style type="text/css">
        .auto-style1 {
            width: 382px;
            height: 161px;
            margin-left: 7px;
            margin-top: 32px;
            margin-right: 6px;
        }
        .auto-style2 {
            height: 8px;
        }
        .auto-style3 {
            width: 437px;
            float: left;
        }
    </style>
</head>
<body>
	
    
    <form id="form1" runat="server">
        <div>
            <div class="container">
				<header>
					<div class="innerheader container">
						<a href="#"><img src="image/logo.png"></a>
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
						
						
					</div>
				</div>
		
		<div class="container">
			
		<div class="banner">
			<a class="bannerLeft" href="#">				
				<p class="textl">Makeup <strong>Party</strong></p>
				<p class="view1">500.000Đ - 1.000.000Đ</p>
			</a>
			<a class="bannerRight" href="#">
				<p class="textR">Makeup <br/> <strong>Bridal</strong></p>
				<p class="view2">Giá chỉ từ<br/> 1.500.000đ!</p>
			</a>
			
			<a id="bannerbottom" href="#">
				<p class="textB">Photo</p>
			</a>
		</div>
		
		<div class="content">
			<p id="title">Makeup Pridal <strong>Highlights</strong></p>
			<div class="layer1">
				<a class="sp" href="#">
					<img src="image/sangtrong.jpg" alt="">
				</a>
				<a class="sp" href="#">
					<img src="image/quyphai.jpg" alt="">
				</a>
				<a class="sp" href="#">
					<img src="image/aodai.jpg" alt="">
				</a>
				<a class="sp" href="#">
					<img src="image/diudang.jpg" alt="">
				</a>
			</div>
			<dir class="layer2">
				<dir class="Name">
					<p id="codau">Cô dâu</p>
					<p>Phong cách sang trọng</p>
				</dir>
				<dir class="Name">
					<p id="codau">Cô dâu</p>
					<p>Phong cách quý phái</p>
				</dir>
				<dir class="Name">
					<p id="codau">Cô dâu</p>
					<p>Phong cách Truyền thống</p>
				</dir>
				<dir class="Name">
					<p id="codau">Cô dâu</p>
					<p>Phong cách thơ mộng</p>
				</dir>
			</dir>
			<dir class="layer3">
				<p class="gia">1.5<span>00.000đ</span></p>
				<p class="gia">1.7<span>00.000đ</span></p>
				<p class="gia">2.1<span>00.000đ</span></p>
				<p class="gia">1.8<span>00.000đ</span></p>
			</dir>
			<dir class="layer4">
				<dir class="mua">
					<button class="btn">Đặt lịch</button>
				</dir>
				<dir class="mua">
					<button class="btn">Đặt lịch</button>
				</dir>
				<dir class="mua">
					<button class="btn">Đặt lịch</button>
				</dir>
				<dir class="mua">
					<button class="btn">Đặt lịch</button>
				</dir>
			</dir>
		</div>


		<div class="content">
			<p id="title">Makeup Party <strong>Highlights</strong></p>
			<div class="layer1">
				<a class="sp" href="#">
					<img src="image/left.jpg" alt="">
				</a>
				<a class="sp" href="#">
					<img src="image/hoanghau.jpg" alt="">
				</a>
				<a class="sp" href="#">
					<img src="image/thomong.jpg" alt="">
				</a>
				<a class="sp" href="#">
					<img src="image/catinh.jpg" alt="">
				</a>
			</div>
			<dir class="layer2">
				<dir class="Name">
					<p id="codau">Quý Cô</p>
					<p>sang trọng</p>
				</dir>
				<dir class="Name">
					<p id="codau">Nữ hoàng</p>
					<p>quý phái</p>
				</dir>
				<dir class="Name">
					<p id="codau">Công chúa</p>
					<p>thơ mộng</p>
				</dir>
				<dir class="Name">
					<p id="codau">Cô nàng</p>
					<p>cá tính</p>
				</dir>
			</dir>
			<dir class="layer3">
				<p class="gia">5<span>00.000đ</span></p>
				<p class="gia">6<span>00.000đ</span></p>
				<p class="gia">8<span>00.000đ</span></p>
				<p class="gia">1<span>000.000đ</span></p>
			</dir>
			<dir class="layer4">
				<dir class="mua">
					<button class="btn">Đặt lịch</button>
				</dir>
				<dir class="mua">
					<button class="btn">Đặt lịch</button>
				</dir>
				<dir class="mua">
					<button class="btn">Đặt lịch</button>
				</dir>
				<dir class="mua">
					<button class="btn">Đặt lịch</button>
				</dir>
			</dir>
		</div>
			
		<div class="footer">
			<div class="auto-style3">
				<h2 class="auto-style2">Address :</h2>
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.552415883855!2d106.79163701462318!3d10.845524092274683!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x945a3348cc96bb84!2zS8ONIFTDmkMgWMOBIMSQ4bqgSSBI4buMQyBHSUFPIFRIw5RORyBW4bqsTiBU4bqiSSBQSMOCTiBISeG7hlUgVOG6oEkgVFAuSENN!5e0!3m2!1svi!2s!4v1622129321979!5m2!1svi!2s" 
					style="border:0;" allowfullscreen="" loading="lazy" class="auto-style1"></iframe>
			</div>
			<div class="contact">
				<h2>Contact</h2>
				<p><span>Email: </span>2000buivanmanh@gmail.com</p>
				<p><span>Tell: </span>036 272 0346</p>
			</div>
			<div class="link">
				<p>Đến với chúng tôi, chúng tôi sẽ giúp bạn lưu giữ những khoảng khắc hạnh phúc nhất của bạn,</p>
				<p>zmisthemes &copy; All right Reserved</p>
			</div>
		</div>
	</div>
        </div>

		<div class="hotline-phone-ring-wrap">		
			<div class="hotline-phone-ring">
			<div class="hotline-phone-ring-circle"></div>
			<div class="hotline-phone-ring-circle-fill"></div>
			<div class="hotline-phone-ring-img-circle"> <a href="tel:0362720346" class="pps-btn-img"> <img src="https://netweb.vn/img/hotline/icon.png" alt="so dien thoai" width="50"> </a></div>
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
    </form>

</body>
</html>
