 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="webStudio.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>home</title>
	<link rel="stylesheet" href="css/StyleHome.css" />
	<link rel="stylesheet" href="css/StyleHotline.css" />
	<link rel="stylesheet" href="css/slide.css" />
    <style type="text/css">
        .auto-style1 {
            width: 382px;
            height: 153px;
            margin-left: 109px;
            margin-top: 2px;
            margin-right: 6px;
        }
		p{
			color:white;
		}
        .auto-style2 {
            height: 8px;
        }
        .auto-style4 {
            width: 318px;
            float: left;
            height: 173px;
        }
        .auto-style5 {
            margin-left: 100px;
            color: white;
            width: 507px;
            float: left;
            height: 172px;
        }
        .auto-style6 {
            width: 398px;
            float: left;
            height: 174px;
        }
    </style>
</head>
<body>
	
    
    <form id="form1" runat="server">
        <div>
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
							<div>
								<asp:Literal ID="ltrTenDN" runat="server"></asp:Literal>
								<asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click" Text="Đăng xuất" OnUnload="Page_Load"></asp:LinkButton>
							</div>
							
						</ul>
							
						</nav>
					</div>
				</header>
				</div>
		<div class="slide">
		<div class="dieuhuong">
			<i class="fa fa-chevron-circle-left" onclick="Back();"></i>
			<i class="fa fa-chevron-circle-right" onclick="Next();"></i>
		</div>
		<div class="chuyen-slide">			
			<img class="qq" src="image/biahome.jpg" /> // 1000
			<img class="qq" src="image/slice.jpg" /> // 2000
			<img class="qq" src="image/photo/d4.jpg" /> // 0
			<img class="qq" src="image/vaycuoi4.jpg" /> // 3000
			<img class="qq" src="image/vaycuoi5.jpg" /> // 4000
		</div>
	</div>
		<div class="container">
			
		<div class="banner">
			<a class="bannerLeft" href="MakeupParty.aspx">				
				<p class="textl">Makeup <strong>Party</strong></p>
				<p class="view1">500.000Đ - 1.000.000Đ</p>
			</a>
			<a class="bannerRight" href="MakeupBridal.aspx">
				<p class="textR">Makeup <br/> <strong>Bridal</strong></p>
				<p class="view2">Price only from:<br/> 1.500.000đ!</p>
			</a>
			
			<a id="bannerbottom" href="Photo.aspx">
				<p class="textB">Photo</p>
			</a>
		</div>
		
		<div class="content">
			<p id="title">Makeup Pridal <strong>Highlights</strong></p>
			<div class="layer1">
				<a class="sp" href="MakeupBridal.aspx">
					<img src="image/sangtrong.jpg" alt="">
				</a>
				<a class="sp" href="MakeupBridal.aspx">
					<img src="image/quyphai.jpg" alt="">
				</a>
				<a class="sp" href="MakeupBridal.aspx">
					<img src="image/aodai.jpg" alt="">
				</a>
				<a class="sp" href="MakeupBridal.aspx">
					<img src="image/diudang.jpg" alt="">
				</a>
			</div>
			<dir class="layer2">
				<dir class="Name">
					<p id="codau">Bride</p>
					<p>Gentle style</p>
				</dir>
				<dir class="Name">
					<p id="codau">Bride</p>
					<p>Noble style</p>
				</dir>
				<dir class="Name">
					<p id="codau">Bride</p>
					<p>Traditional Style</p>
				</dir>
				<dir class="Name">
					<p id="codau">Bridel</p>
					<p>Dreamy style</p>
				</dir>
			</dir>
			<dir class="layer3">
				<p class="gia">1.5<span>00.000đ</span></p>
				<p class="gia">1.7<span>00.000đ</span></p>
				<p class="gia">2.1<span>00.000đ</span></p>
				<p class="gia">1.8<span>00.000đ</span></p>
			</dir>
			
		</div>


		<div class="content"><br />
			<p id="title">Makeup Party <strong>Highlights</strong></p>
			<div class="layer1">
				<a class="sp" href="MakeupParty.aspx">
					<img src="image/left.jpg" alt=""/>
				</a>
				<a class="sp" href="MakeupParty.aspx">
					<img src="image/hoanghau.jpg" alt=""/>
				</a>
				<a class="sp" href="MakeupParty.aspx">
					<img src="image/thomong.jpg" alt=""/>
				</a>
				<a class="sp" href="MakeupParty.aspx">
					<img src="image/catinh.jpg" alt=""/>
				</a>
			</div>
			<dir class="layer2">
				<dir class="Name">
					<p id="codau">Ladies</p>
					<p>luxurious</p>
				</dir>
				<dir class="Name">
					<p id="codau">Queen</p>
					<p>Noble</p>
				</dir>
				<dir class="Name">
					<p id="codau">Princess</p>
					<p>romantic</p>
				</dir>
				<dir class="Name">
					<p id="codau">girl</p>
					<p>personalities</p>
				</dir>
			</dir>
			<dir class="layer3">
				<p class="gia">5<span>00.000đ</span></p>
				<p class="gia">6<span>00.000đ</span></p>
				<p class="gia">8<span>00.000đ</span></p>
				<p class="gia">1<span>000.000đ</span></p>
			</dir>
		</div>
			
		
	</div>
        </div>
		<div class="footer">
			<div class="auto-style5">
				<h2 class="auto-style2">Address :</h2>
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.552415883855!2d106.79163701462318!3d10.845524092274683!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x945a3348cc96bb84!2zS8ONIFTDmkMgWMOBIMSQ4bqgSSBI4buMQyBHSUFPIFRIw5RORyBW4bqsTiBU4bqiSSBQSMOCTiBISeG7hlUgVOG6oEkgVFAuSENN!5e0!3m2!1svi!2s!4v1622129321979!5m2!1svi!2s" 
					style="border:0;" allowfullscreen="" loading="lazy" class="auto-style1"></iframe>
			</div>
			<div class="auto-style4">
				<h2>contact :</h2><br />
				<p><span>Email: </span>2000buivanmanh@gmail.com</p><br />
				<p><span>Tell: </span>036 272 0346</p>
			</div>
			<div class="auto-style6">
				<br /><br />
				<p>Come to us, we will help you keep your happiest moments,</p><br /><br />
				<p>zmisthemes &copy; All right Reserved</p>
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
		<script type="text/javascript" src="scrip/slide.js"></script>
    </form>

</body>
</html>
