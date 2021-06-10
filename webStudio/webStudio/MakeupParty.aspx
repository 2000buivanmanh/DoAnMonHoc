<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakeupParty.aspx.cs" Inherits="webStudio.MakeupParty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link rel="stylesheet" href="css/StyleParty.css"/>
	<link rel="stylesheet" href="css/StyleHotline.css"/>
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
            margin-left: 47px;
            margin-right: 147px;
        }
        .title{
            color:#CBD44C;
            margin-left:100px;
            font-family:Bookman;
            font-size:50px;
        }
         .auto-style4 {
             
             width: 1217px;
             margin-left: 131px;
         }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
				<header>
					<div class="innerheader container">
						<a href="#"><img src="image/logo.png" class="auto-style1"/></a>
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
						<h2><i>Make up</i> </h2>
						<h1>Party</h1>
						
						
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



		 <div>
    
        <span class="title" ><strong>MakeUp Party<br />
        </strong></span><br />
             <div class="auto-style4">
                 <p>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Một cô gái sau khi trang điểm, xuất hiện trong bữa tiệc với đầy dãy những ánh nhìn ngưỡng mộ,
                     thì sự tự tin khi ấy thực sự vững bước giúp cô ấy bước đến chủ động bắt tay giao tiếp với mọi người.
                     Đó là lúc mà sự tự tin thật sự tồn tại.<br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Bất kỳ phái đẹp nào cũng vậy, khi nét đẹp của mình thu hút ánh nhìn người khác, 
                     thì tự nhiên sự tự tin tự khắc sẽ được củng cố. Thành công của trang điểm chính là biết cách tạo nên cái đẹp từ hình
                     dáng bên ngoài đến nâng cao cái tính chất bên trong của phái đẹp. Gíup các nàng tỏ sáng ở mọi lúc mọi nơi.
                 </p>
             </div><br /><br />
    
    </div>
        <asp:DataList  ID="DataList1" runat="server" DataKeyField="MaDV" DataSourceID="SqlDataSource1" RepeatColumns="4" CssClass="auto-style3" Width="1379px" OnItemCommand="DataList1_ItemCommand1"  >
            <ItemTemplate>
                <table class="auto-style2 ">
                    <tr class="content">
                        <td class="sp">
                            <asp:Image ID="Image1" runat="server" Height="375px" ImageUrl='<%# Eval("HinhAnh") %>' Width="285px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="name" Text='<%# Eval("TenDV") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" CssClass="gia" runat="server" Text='<%# Eval("GiaDV") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Đặt Lịch"  CommandName="Datlich"  CommandArgument='<%# Eval("MaDV") + ";" + Eval("TenDV") + ";" + Eval("GiaDV") + ";" + Eval("HinhAnh")%>' />
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:STUDIOConnectionString %>" DeleteCommand="DELETE FROM [DichVu] WHERE [MaDV] = @MaDV" InsertCommand="INSERT INTO [DichVu] ([MaDV], [MaLDV], [TenDV], [GiaDV], [HinhAnh]) VALUES (@MaDV, @MaLDV, @TenDV, @GiaDV, @HinhAnh)" SelectCommand="SELECT * FROM [DichVu]
WHERE MaLDV='LDV2'" UpdateCommand="UPDATE [DichVu] SET [MaLDV] = @MaLDV, [TenDV] = @TenDV, [GiaDV] = @GiaDV, [HinhAnh] = @HinhAnh WHERE [MaDV] = @MaDV">
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
    </form>
</body>
</html>
