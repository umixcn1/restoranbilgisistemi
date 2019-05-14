<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="uyeGiris.aspx.cs" Inherits="OnlineLokanta.pages.uyeGiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style5 {
            width: 125px;
        }
        .auto-style-100{
            margin-top:50%;
            color:white;
            font-weight:bold;
        }
        .auto-style7 {
            width: 125px;
            height: 26px;
        }
        .auto-style8 {
            width: 5px;
            height: 26px;
        }
        .auto-style9 {
            width: 157px;
            height: 26px;
        }
        .auto-style15 {
            width: 5px;
        }
        .auto-style16 {
            width: 157px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>  <table class"auto-style-100">
                        <tr>
                            <td class="auto-style7">E-posta:</td>
                            <td class="auto-style8">:</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="TextBoxEposta" runat="server" TextMode="Email"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Şifre:</td>
                            <td class="auto-style15">:</td>
                            <td class="auto-style16">
                                <asp:TextBox ID="TextBoxSifre" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style16">
                                <asp:Button ID="btnGiris" runat="server" Text="Giriş" Width="69px" OnClick="ButtonGiris_Click" />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConn %>" SelectCommand="SELECT * FROM [tblKisi]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style16">
                                <asp:Label ID="LabelMsj" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table> </center>
</asp:Content>
