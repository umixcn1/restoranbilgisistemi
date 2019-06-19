<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="adisyon.aspx.cs" Inherits="OnlineLokanta.pages.adisyon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 141%;
            height: 200px;
        }
        .auto-style2 {
            width: 127px;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            width: 104px;
            background-color: #FFFFFF;
        }

        .auto-style4 {
            width: 127px;
            background-color: #FFFFFF;
            height: 39px;
        }
        .auto-style5 {
            width: 104px;
            background-color: #FFFFFF;
            height: 39px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="adisyon"> 
       <table class="auto-style1">
           <tr>
               <td class="auto-style2">Kredi Kart Sahibi:</td>
               <td class="auto-style3">
                   <asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="White" BorderStyle="Solid" Width="212px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style4">Kredi Kart No:</td>
               <td class="auto-style5">
                   <asp:TextBox ID="TextBox3" runat="server" BorderColor="White" BorderStyle="Solid" Width="212px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style2">CVC No:</td>
               <td class="auto-style3">
                   <asp:TextBox ID="TextBox4" runat="server" BorderColor="White" BorderStyle="Solid" Width="196px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="auto-style2">
                   <asp:Button ID="Button1" runat="server" BackColor="#66FFFF" BorderColor="#FF3300" BorderStyle="Solid" Text="Ödeme Yap" Width="113px" />
               </td>
               <td class="auto-style3">
                   <asp:Button ID="Button2" runat="server" BackColor="#66FFFF" BorderColor="#FF3300" BorderStyle="Solid" Text="Yemekleri Değiştir" Width="140px" />
               </td>
           </tr>
           <tr>
               <td class="auto-style2">&nbsp;</td>
               <td class="auto-style3">&nbsp;</td>
           </tr>
       </table>
    </div>
    
    <asp:TextBox ID="TextBox1" runat="server" Height="191px" TextMode="MultiLine" Width="418px">İçecek : Kola Fiyat : 10TL
Çorba : Mercimek Fiyat : 10TL
Ana Yemek : Cag Kebab Fiyat : 30TL
Tatlı : Tirileçe Fiyat : 15Tl
</asp:TextBox>
    
</asp:Content>
