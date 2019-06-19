<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="siparis.aspx.cs" Inherits="OnlineLokanta.pages.siparis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 407px;
        border: 1px solid #000000;
        background-color: #FF9900;
    }
    .auto-style2 {
        width: 241px;
    }
    .auto-style3 {
        width: 241px;
        height: 162px;
    }
    .auto-style4 {
        height: 162px;
    }
    .auto-style5 {
        margin-bottom: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2">Rezervasyon Adı:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="244px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Kaç Kişi:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="243px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Tarih Seç:</td>
        <td>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Saat Seç:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>17:00</asp:ListItem>
                <asp:ListItem>18:00</asp:ListItem>
                <asp:ListItem>19:00</asp:ListItem>
                <asp:ListItem>19:00</asp:ListItem>
                <asp:ListItem>20:00</asp:ListItem>
                <asp:ListItem>21:00</asp:ListItem>
                <asp:ListItem>22:00</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="saatbtn" runat="server" BackColor="Red" Text="Saati Seç:" Width="174px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Masa Seç:</td>
        <td>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="249px">
                <asp:ListItem>masa 1</asp:ListItem>
                <asp:ListItem>masa 2</asp:ListItem>
                <asp:ListItem>masa 3</asp:ListItem>
                <asp:ListItem>masa 4</asp:ListItem>
                <asp:ListItem>masa 5</asp:ListItem>
                <asp:ListItem>masa 6</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="masaknt" runat="server" BackColor="Red" BorderColor="#CCFFCC" Text="Seçimi Kontrol Et:" Width="256px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            <asp:Button ID="ymkbtn" runat="server" BackColor="Red" BorderColor="#CCFF33" Text="Yemek Sayfasına Git" Width="238px" CssClass="auto-style5" />
            <asp:Button ID="yerat" runat="server" BackColor="Lime" BorderColor="Red" BorderStyle="Solid" Text="Yer Ayırt:" Width="142px" OnClick="yerat_Click" />
        </td>
    </tr>
</table>
</asp:Content>
