<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakeupBridal.aspx.cs" Inherits="webStudio.MakeupBridal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Makeup Bridal</title>
	<link rel="stylesheet" href="css/StyleBridal.css">
	<link rel="stylesheet" href="css/StyleHotline.css">

    <style type="text/css">
        .auto-style1 {
            width: 101px;
            height: 70px;
        }
       
        .auto-style1 {
            font-size: 16px;
            font-family:Cambria;
           
        }
        .auto-style2 {
            width: 100%;
        }
        td,input {
            font-family:Cambria;
            font-size:25px;
            text-align:center;
            padding:5px;
            margin:5px;
            vertical-align:top;
        }
        .auto-style3 {
            margin-left: 83px;
            margin-right: 147px;
        }
        #title{
            margin-left:100px;
        }
        .name label{
            font-size:30px;
        }
        .auto-style4 {
            position: absolute;
            left: 244px;
            bottom: 184px;
            font-size: 50px;
            width: 429px;
            height: 59px;
        }
        .auto-style5 {
            position: absolute;
            bottom: 139px;
            left: 305px;
            text-transform: uppercase;
            width: 299px;
            height: 32px;
        }
        .auto-style6 {
            padding-left: 20px;
            position: absolute;
            top: 175px;
            right: 340px;
            bottom: -50px;
            text-transform: uppercase;
            width: 270px;
        }
        
        .auto-style7 {
            position: absolute;
            top: 10px;
            right: 338px;
            bottom: -75px;
            font-size: 60px;
            color: white;
            width: 285px;
            margin-left: 39px;
            padding-left: 20px;
            padding-top: 30px;
        }
        
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div >
				<header>
					<div class="innerheader container">
						<a href="#"><img src="image/logo.png" class="auto-style1" /></a>
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
        <div class="slide">
		            <div class="dieuhuong">
			            <i class="fa fa-chevron-circle-left" onclick="Back();"></i>
			            <i class="fa fa-chevron-circle-right" onclick="Next();"></i>
		            </div>
		            <div class="chuyen-slide">			
			            <img class="bb" src="image/em.jpg" /> // 1000			            
                        <img class="bb" src="image/em2.jpg" /> 
                        <img class="bb" src="image/em3.jpg" />
                        <img class="bb" src="image/em5.jpg" /> 
                        <img class="bb" src="image/em4.jpg" /> 
		            </div>
	            </div>
        <div class="banner">
		        
        <div >
           
				<p class="auto-style4">Makeup and <strong>Dresses</strong></p>
				<p class="auto-style5">5.000.000Đ - 10.000.000Đ</p>
			<a class="bannerRight" href="MakeupBridal.aspx">
				<p class="auto-style7">Makeup <br/> <strong>Bridal</strong></p>
				<p class="auto-style6">Price only from:<br/> 1.500.000đ!</p>
			</a>
			
			<a id="bannerbottom" href="Photo.aspx">
				<p class="textB">Photo</p>
			</a>
		</div>
        </div>

		 <div>
    
        
    
    </div>
        <asp:DataList  ID="DataList1" runat="server" DataKeyField="MaDV" DataSourceID="SqlDataSource1" RepeatColumns="4" CssClass="auto-style3" Width="1379px" OnItemCommand="DataList1_ItemCommand1" >
            <ItemTemplate>
                <table class="auto-style2 ">
                    <tr class="content">
                        <td class="sp">
                            <asp:Image ID="Image1" runat="server" Height="375px" ImageUrl='<%# Eval("HinhAnh") %>' Width="285px" />
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label1" CssClass="name" runat="server" Text='<%# Eval("TenDV") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" CssClass="gia" runat="server" Text='<%# Eval("GiaDV") %>'></asp:Label>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Đặt Lịch"  CommandName="Datlich" OnClick="Button1_Click" CommandArgument='<%# Eval("MaDV") + ";" + Eval("TenDV") + ";" + Eval("GiaDV") + ";" + Eval("HinhAnh")%>' />
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:STUDIOConnectionString %>" DeleteCommand="DELETE FROM [DichVu] WHERE [MaDV] = @MaDV" InsertCommand="INSERT INTO [DichVu] ([MaDV], [MaLDV], [TenDV], [GiaDV], [HinhAnh]) VALUES (@MaDV, @MaLDV, @TenDV, @GiaDV, @HinhAnh)" SelectCommand="SELECT * FROM [DichVu]
WHERE MaLDV='LDV1'" UpdateCommand="UPDATE [DichVu] SET [MaLDV] = @MaLDV, [TenDV] = @TenDV, [GiaDV] = @GiaDV, [HinhAnh] = @HinhAnh WHERE [MaDV] = @MaDV">
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
            <UpdateParameters>
                <asp:Parameter Name="MaLDV" Type="String" />
                <asp:Parameter Name="TenDV" Type="String" />
                <asp:Parameter Name="GiaDV" Type="Double" />
                <asp:Parameter Name="HinhAnh" Type="String" />
                <asp:Parameter Name="MaDV" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>


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
        <script type="text/javascript" src="scrip/slide.js"></script>
    </form>
</body>
</html>
