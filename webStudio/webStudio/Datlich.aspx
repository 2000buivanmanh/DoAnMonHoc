<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Datlich.aspx.cs" Inherits="webStudio.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/StyleDatLich.css" />
</head>
    <style type="text/css">
        
        h1{
            color:brown;
            padding-left:170px;
        }
        .auto-style1 {
            
            width: 338px;
        }
    </style>

<body>
    <form id="form1" runat="server">
        <div class="khung"> 
            <h1>Thông tin đặt lịch</h1>
            <table>
                <tr>
                    <td>
                        <div class="anh">
                            <asp:Image runat="server"  ID="imgDV" Height="400px" Width="300px" />
                        </div>
                    </td>
                    <td class="noidung">
                        <div class="lb">
                            <asp:Label runat="server" ID="lblmadv" />
                        </div>
                        <div class="lb"><asp:Label runat="server" ID="lbltenDV" /></div>
                        <div class="lb"><asp:Label runat="server" ID="lblgia" /></div>
                        
                        <table class="auto-style1">
                            <tr>
                                <td class="ten">
                                                              
                            <asp:Label ID="lblSdt" runat="server" Text="SDT:" />                            
                       
                                </td>
                                <td>
                                    <asp:TextBox runat="server" ID="textbox1" CssClass="textbox"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="ten">
                                    
                            <asp:Label runat="server" Text="Thời gian:" />
                            
                       
                                </td>
                                <td>
                                    <asp:TextBox runat="server" ID="textbox2" CssClass="textbox"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="ten">
                                    
                            <asp:Label runat="server" Text="Ngày làm:" />
                           
                        
                                </td>
                                <td>
                                     <asp:TextBox runat="server" ID="textbox5" CssClass="textbox"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="ten">
                                   
                            <asp:Label ID="lblDiaDiem" runat="server" Text="Địa điểm:" />
                           
                       
                                </td>
                                <td>
                                     <asp:TextBox runat="server" ID="textbox3" CssClass="textbox"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="ten">
                            <asp:Label ID="lblGC" runat="server" Text="Ghi chú:" />
                            
                        </td>
                                <td><asp:TextBox runat="server" ID="textbox4" CssClass="textbox" Height="62px"/></td>
                            </tr>
                        </table>                  
                        <div>
                            <asp:Button runat="server" CssClass="btn" ID="btnadd" Text="Đặt Lịch" OnClick="btnadd_Click" />
                        </div>
                    </td>
                </tr>
            </table>       
        </div>
        
    </form>
</body>
</html>
