<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="OnlineLokanta.pages.WebService1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <AlternatingItemStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        
        <ItemTemplate>

            kisiAdi:
            <asp:Label ID="kisiAdiLabel" runat="server" Text='<%# Eval("kisiAdi") %>' />
            <br />
            kisiSoyadi:
            <asp:Label ID="kisiSoyadiLabel" runat="server" Text='<%# Eval("kisiSoyadi") %>' />
            <br />
            ePosta:
            <asp:Label ID="ePostaLabel" runat="server" Text='<%# Eval("ePosta") %>' />
            <br />
            telefon:
            <asp:Label ID="telefonLabel" runat="server" Text='<%# Eval("telefon") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <br />
    <br />
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConn %>" SelectCommand="SELECT [kisiAdi], [kisiSoyadi], [ePosta], [telefon] FROM [tblKisi] WHERE ([kisiAdi] = @kisiAdi)">
        <SelectParameters>
            <asp:Parameter DefaultValue="berkan" Name="kisiAdi" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
        <UserNameTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center" colspan="2">Parolanızı Değiştimek istermisiniz?</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">Parolanızı almak için Epostanızı girin.</td>
                            </tr>
                            <tr>
                                <td align="right">Eposta:</td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server" OnTextChanged="UserName_TextChanged"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Kullanıcı Adı gereklidir." ToolTip="Kullanıcı Adı gereklidir." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" OnClick="SubmitButton_Click" Text="Gönder" ValidationGroup="PasswordRecovery1" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </UserNameTemplate>
    </asp:PasswordRecovery>
    <br />
    <br />
    <br />
    <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <AlternatingItemStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        
        <ItemTemplate>

            tarihsaat:
            <asp:Label ID="tarihsaatLabel" runat="server" Text='<%# Eval("tarihsaat") %>' />
            <br />
            masaTercihi:
            <asp:Label ID="masaTercihiLabel" runat="server" Text='<%# Eval("masaTercihi") %>' />
            <br />
            kisiSayisi:
            <asp:Label ID="kisiSayisiLabel" runat="server" Text='<%# Eval("kisiSayisi") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConn %>" SelectCommand="SELECT [tarihsaat], [masaTercihi], [kisiSayisi] FROM [tblRezervasyon] WHERE ([kisiID] = @kisiID)">
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="kisiID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
