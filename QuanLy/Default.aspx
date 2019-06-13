<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="QuanLy_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div>
        <nav style ="width200px;float:left;">
            <ul>
                <li><a id="a" href="~/QuanLy/Default.aspx" runat="server">Quản Lý Chung</a></li>
                <li><a id="a1" href="~/QuanLy/DonHang.aspx" runat="server">Quản Lý Đơn Hàng</a></li>
            </ul>
        </nav>
    </div>
</asp:Content>

