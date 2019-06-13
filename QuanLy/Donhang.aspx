<%@ Page Title="QLDonHang" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Donhang.aspx.cs" Inherits="QuanLy_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
            <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="MaNSX" HeaderText="MaNSX" SortExpression="MaNSX" />
            <asp:BoundField DataField="Magiay" HeaderText="Magiay" SortExpression="Magiay" />
            <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [DonHang] WHERE [ID] = @ID" InsertCommand="INSERT INTO [DonHang] ([TenKH], [SDT], [Email], [MaNSX], [Magiay], [Soluong]) VALUES (@TenKH, @SDT, @Email, @MaNSX, @Magiay, @Soluong)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ID], [TenKH], [SDT], [Email], [MaNSX], [Magiay], [Soluong] FROM [DonHang]" UpdateCommand="UPDATE [DonHang] SET [TenKH] = @TenKH, [SDT] = @SDT, [Email] = @Email, [MaNSX] = @MaNSX, [Magiay] = @Magiay, [Soluong] = @Soluong WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="MaNSX" Type="String" />
            <asp:Parameter Name="Magiay" Type="String" />
            <asp:Parameter Name="Soluong" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenKH" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="MaNSX" Type="String" />
            <asp:Parameter Name="Magiay" Type="String" />
            <asp:Parameter Name="Soluong" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

