<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="uyeKayit.aspx.cs" Inherits="OnlineLokanta.pages.uyeKayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }

        .auto-style2 {
            font-size: 15pt;
        }

        .auto-style17 {
            width: 589px;
            color:white;
            background-color:#8f7a7a;
            margin-top:10%;
        }

        .auto-style18 {
            text-align: left;
            width: 139px;
        }

        .auto-style20 {
            width: 139px;
        }

        .auto-style21 {
            width: 426px;
            text-align: left;
        }

        .auto-style22 {
            width: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    
                <table class="auto-style17" __designer:mapid="ea">
                    <tr __designer:mapid="eb">
                        <td class="auto-style2" colspan="3" __designer:mapid="ec"><strong __designer:mapid="ed">ÜYE BİLGİLERİ</strong></td>
                    </tr>
                    <tr __designer:mapid="ee">
                        <td class="auto-style18" __designer:mapid="ef">Ad</td>
                        <td class="auto-style13" __designer:mapid="f0">:</td>
                        <td class="auto-style21" __designer:mapid="f1">
                            <asp:TextBox ID="TextBoxAd" runat="server" CssClass="textRegister " MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr __designer:mapid="f3">
                        <td class="auto-style18" __designer:mapid="f4">Soyad</td>
                        <td class="auto-style22" __designer:mapid="f5">:</td>
                        <td class="auto-style21" __designer:mapid="f6">
                            <asp:TextBox ID="TextBoxSoyad" runat="server" CssClass="textRegister" MaxLength="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr __designer:mapid="f8">
                        <td class="auto-style18" __designer:mapid="f9">E-Posta</td>
                        <td class="auto-style13" __designer:mapid="fa">:</td>
                        <td class="auto-style21" __designer:mapid="fb">
                            <asp:TextBox ID="TextBoxEposta" runat="server" CssClass="textRegister" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr __designer:mapid="fd">
                        <td class="auto-style18" __designer:mapid="fe">Şifre</td>
                        <td class="auto-style13" __designer:mapid="ff">:</td>
                        <td class="auto-style21" __designer:mapid="100">
                            <asp:TextBox ID="TextBoxSifre" runat="server" CssClass="textRegister" MaxLength="15" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr __designer:mapid="102">
                        <td class="auto-style18" __designer:mapid="103">Şifre Tekrar</td>
                        <td class="auto-style22" __designer:mapid="104">:</td>
                        <td class="auto-style21" __designer:mapid="105">
                            <asp:TextBox ID="TextBoxSifreTekrar" runat="server" CssClass="textRegister" MaxLength="15" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr __designer:mapid="107">
                        <td class="auto-style18" __designer:mapid="108">Doğum Tarihi</td>
                        <td class="auto-style40" __designer:mapid="109">:</td>
                        <td class="auto-style21" __designer:mapid="10a">
                            <asp:TextBox ID="TextBoxDogumTarihi" runat="server" CssClass="textRegister" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr __designer:mapid="10c">
                        <td class="auto-style18" __designer:mapid="10d">Cinsiyet</td>
                        <td __designer:mapid="10e">:</td>
                        <td style="text-align: left" class="auto-style21" __designer:mapid="10f">
                            <asp:RadioButtonList ID="RadioButtonListCinsiyet" runat="server" CssClass="auto-style1" Height="42px" RepeatLayout="Flow" Width="206px">
                                <asp:ListItem Value="1">Erkek</asp:ListItem>
                                <asp:ListItem Value="0">Kadın</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr __designer:mapid="113">
                        <td class="auto-style18" __designer:mapid="114">Şehir</td>
                        <td class="auto-style13" __designer:mapid="115">:</td>
                        <td class="auto-style21" __designer:mapid="116">
                            <asp:DropDownList ID="DropDownListSehir" runat="server" CssClass="textRegister">
                                <asp:ListItem Value="01">Adana</asp:ListItem>
                                <asp:ListItem Value="06">Ankara</asp:ListItem>
                                <asp:ListItem Value="34">İstanbul</asp:ListItem>
                                <asp:ListItem Value="55">Samsun</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr __designer:mapid="113">
                        <td class="auto-style18" __designer:mapid="114">Telefon
                        </td>
                        <td class="auto-style13" __designer:mapid="115">:</td>
                        <td class="auto-style21" __designer:mapid="116">
                            <asp:TextBox ID="txtTelefon" runat="server" CssClass="textRegister" MaxLength="11" ></asp:TextBox>
                            
                        </td>
                    </tr>
                    <tr __designer:mapid="11c">
                        <td class="auto-style18" __designer:mapid="11d">Profil Resmi</td>
                        <td class="auto-style13" __designer:mapid="11e">:</td>
                        <td class="auto-style21" __designer:mapid="11f">
                            <asp:FileUpload ID="FileUploadProfil" runat="server" />
                        </td>
                    </tr>
                    <tr __designer:mapid="121">
                        <td class="auto-style20" __designer:mapid="122"></td>
                        <td class="auto-style10" __designer:mapid="123"></td>
                        <td class="auto-style21" __designer:mapid="124">
                            <asp:Button ID="btnKayitOl" runat="server" CssClass="myButton" Text="KAYIT OL" OnClick="btnKayitOl_Click" />
                        </td>
                    </tr>
                    <tr __designer:mapid="126">
                        <td class="auto-style20" __designer:mapid="127"></td>
                        <td class="auto-style10" __designer:mapid="128"></td>
                        <td class="auto-style21" __designer:mapid="129">
                            <asp:Label ID="lblMsj" runat="server"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConn %>" SelectCommand="SELECT * FROM [tblKisi]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr __designer:mapid="12b">
                        <td class="auto-style20" __designer:mapid="12c">&nbsp;</td>
                        <td class="auto-style13" __designer:mapid="12d">&nbsp;</td>
                        <td class="auto-style21" __designer:mapid="12e">
                            &quot;</td>
                    </tr>
                </table>
    
    </center> 
</asp:Content>
