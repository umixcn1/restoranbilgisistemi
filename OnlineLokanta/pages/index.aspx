<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="OnlineLokanta.pages.anasayfa" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="urunID" DataSourceID="SqlDataSource1" GroupItemCount="3" style="text-align: center">
        <AlternatingItemTemplate>
            <td runat="server" class="auto-style1" style="background-color: #FAFAD2; color: #284775;">&nbsp;Ürün Türü :
                <asp:Label ID="urunTuruLabel" runat="server" Text='<%# Eval("urunTuru") %>'></asp:Label>
                <br />
                Ürün Adı :
                <asp:Label ID="urunAdiLabel" runat="server" Text='<%# Eval("urunAdi") %>'></asp:Label>
                <br />
                Fiyat :
                <asp:Label ID="urunFiyatLabel" runat="server" Text='<%# Eval("urunFiyat", "{0:N}") %>'></asp:Label>
                TL<br />Adet :
                <asp:Label ID="urunAdetLabel" runat="server" Text='<%# Eval("urunAdet") %>'></asp:Label>
                <br />
                <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("urunResim") %>' Width="110px" />
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="+" />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color: #FFCC66;color: #000080;">urunID:
                <asp:Label ID="urunIDLabel1" runat="server" Text='<%# Eval("urunID") %>' />
                <br />
                urunTuru:
                <asp:TextBox ID="urunTuruTextBox" runat="server" Text='<%# Bind("urunTuru") %>' />
                <br />
                urunAdi:
                <asp:TextBox ID="urunAdiTextBox" runat="server" Text='<%# Bind("urunAdi") %>' />
                <br />
                urunFiyat:
                <asp:TextBox ID="urunFiyatTextBox" runat="server" Text='<%# Bind("urunFiyat") %>' />
                <br />
                urunResim:
                <asp:TextBox ID="urunResimTextBox" runat="server" Text='<%# Bind("urunResim") %>' />
                <br />
                urunAdet:
                <asp:TextBox ID="urunAdetTextBox" runat="server" Text='<%# Bind("urunAdet") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">urunTuru:
                <asp:TextBox ID="urunTuruTextBox" runat="server" Text='<%# Bind("urunTuru") %>' />
                <br />
                urunAdi:
                <asp:TextBox ID="urunAdiTextBox" runat="server" Text='<%# Bind("urunAdi") %>' />
                <br />
                urunFiyat:
                <asp:TextBox ID="urunFiyatTextBox" runat="server" Text='<%# Bind("urunFiyat") %>' />
                <br />
                urunResim:
                <asp:TextBox ID="urunResimTextBox" runat="server" Text='<%# Bind("urunResim") %>' />
                <br />
                urunAdet:
                <asp:TextBox ID="urunAdetTextBox" runat="server" Text='<%# Bind("urunAdet") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" class="auto-style1" style="background-color: #FFFBD6;color: #333333;">&nbsp;Ürün Türü :
                <asp:Label ID="urunTuruLabel" runat="server" Text='<%# Eval("urunTuru") %>' />
                <br />
                Ürün Adı :
                <asp:Label ID="urunAdiLabel" runat="server" Text='<%# Eval("urunAdi") %>' />
                <br />
                Fiyat :
                <asp:Label ID="urunFiyatLabel" runat="server" Text='<%# Eval("urunFiyat", "{0:N}") %>' />
                TL<br />Adet :
                <asp:Label ID="urunAdetLabel" runat="server" Text='<%# Eval("urunAdet") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("urunResim") %>' Width="110px" />
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="+" />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">urunID:
                <asp:Label ID="urunIDLabel" runat="server" Text='<%# Eval("urunID") %>' />
                <br />
                urunTuru:
                <asp:Label ID="urunTuruLabel" runat="server" Text='<%# Eval("urunTuru") %>' />
                <br />
                urunAdi:
                <asp:Label ID="urunAdiLabel" runat="server" Text='<%# Eval("urunAdi") %>' />
                <br />
                urunFiyat:
                <asp:Label ID="urunFiyatLabel" runat="server" Text='<%# Eval("urunFiyat") %>' />
                <br />
                urunResim:
                <asp:Label ID="urunResimLabel" runat="server" Text='<%# Eval("urunResim") %>' />
                <br />
                urunAdet:
                <asp:Label ID="urunAdetLabel" runat="server" Text='<%# Eval("urunAdet") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConn %>" SelectCommand="SELECT * FROM [tblUrun]"></asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>


