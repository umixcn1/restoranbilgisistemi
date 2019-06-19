<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="yemekler.aspx.cs" Inherits="OnlineLokanta.pages.yemekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/yemekcss.css" rel="stylesheet" type="text/css" />
    <link href="../css/yemekcss.css" rel="stylesheet" type="text/css" />
    <link href="../css/yemekcss.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:ImageButton ID="ıckbtn" runat="server" BorderColor="Red" BorderStyle="Solid" Height="378px" ImageUrl="~/img/urun_resimleri/1.jpg" OnClick="ImageButton1_Click" Width="511px" />
        <asp:ImageButton ID="crbbtn" runat="server" BorderColor="Red" BorderStyle="Solid" Height="389px" ImageUrl="~/img/urun_resimleri/2.jpg" Width="483px" />
    </p>
    <p>
        <asp:ImageButton ID="menubtn" runat="server" BorderColor="Red" BorderStyle="Solid" Height="500px" ImageUrl="~/img/urun_resimleri/3.jpg" Width="500px" OnClick="menubtn_Click" />
        <asp:ImageButton ID="ttlbtn" runat="server" BackColor="Black" BorderColor="Red" BorderStyle="Solid" Height="500px" ImageUrl="~/img/urun_resimleri/4.jpg" Width="500px" />
    </p>
</asp:Content>
