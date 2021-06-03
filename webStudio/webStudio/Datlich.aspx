<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Datlich.aspx.cs" Inherits="webStudio.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/StyleDatLich.css"
</head>
    <style type="text/css">
        #lblSdt{
            margin-left:33px;
        }
        #lblDiaDiem{
            margin-left:3px;
        }
        #lblGC{
            margin-left:11px;
        }
    </style>

<body>
    <form id="form1" runat="server">
        <div class="khung" style="left:75px; top: 20px;" > 
            <h1>Thông tin đặt lịch</h1>
            <div class="anh">
            <asp:Image runat="server"  ID="imgDV" />
        </div>
        <div>
            <asp:Label runat="server" ID="lblmadv" />
        </div>
        <div><asp:Label runat="server" ID="lbltenDV" /></div>
        <div><asp:Label runat="server" ID="lblgia" /></div>
        <div>
            <asp:Label ID="lblSdt" runat="server" Text="SDT:" />
            <asp:TextBox runat="server" ID="textbox1" CssClass="textbox"/>
        </div>
        <div>
            <asp:Label runat="server" Text="Thời gian:" />
            <asp:TextBox runat="server" ID="textbox2" CssClass="textbox"/>
        </div>
            <div>
            <asp:Label runat="server" Text="Ngày làm:" />
            <asp:TextBox runat="server" ID="textbox5" CssClass="textbox"/>
        </div>
        <div>
            <asp:Label ID="lblDiaDiem" runat="server" Text="Địa điểm:" />
            <asp:TextBox runat="server" ID="textbox3" CssClass="textbox"/>
        </div>
        <div>
            <asp:Label ID="lblGC" runat="server" Text="Ghi chú:" />
            <asp:TextBox runat="server" ID="textbox4" CssClass="textbox" Height="62px"/>
        </div>
        <div>
            <asp:Button runat="server" CssClass="btn" ID="btnadd" Text="Đặt Lịch" OnClick="btnadd_Click" />
        </div>
        
        </div>
        
    </form>
</body>
</html>
