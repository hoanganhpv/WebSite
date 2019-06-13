<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 30px;
    }
    .auto-style4 {
        width: 290px;
    }
    .auto-style6 {
        height: 30px;
    }
    .auto-style7 {
        width: 261px;
    }
    .auto-style9 {
        height: 30px;
        width: 261px;
    }
    .auto-style10 {
        width: 290px;
        height: 26px;
    }
    .auto-style11 {
        width: 261px;
        height: 26px;
    }
    .auto-style12 {
        height: 26px;
    }
</style>
<script type="text/javascript">
    function validatePhoneNumbers(source, args)
    {
    }
    $(function () {
        $('form').bind('submit', function () {
            if (Page_IsValid) {
                $('#TableWrapper').slideUp(3000);
            }
        });
    });
    function pageLoad() {
        $('.Attention').animate({ width: '600px' }, 3000).animate({ width: '100px' }, 3000).fadeOut('slow');
    }
</script>
<%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>--%>
        <div id="TableWrapper">
            <table class="auto-style1" runat="server" id="FormTable">
        <tr>
            <td colspan="3">Thông Tin Mua Hàng:</td>
        </tr>
        <tr>
            <td class="auto-style4">Tên</td>
            <td class="auto-style7">
                <asp:TextBox ID="Name" runat="server" Width="279px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Địa chỉ Email</td>
            <td class="auto-style11">
                <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email" Width="279px"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập địa chỉ Email">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
     
        <tr>
            <td class="auto-style4">Số điện thoại</td>
            <td class="auto-style7">
                <asp:TextBox ID="PhoneHome" runat="server" Width="279px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Loại Giày:</td>
            <td class="auto-style9">
               <asp:DropDownList ID="Loaigiay" runat="server" Width="100px" DataSourceID="SqlDataSourceLoaigiay" DataTextField="TenNSX" DataValueField="MaNSX" AutoPostBack="True">
                   <asp:ListItem></asp:ListItem>
                </asp:DropDownList> 
                <asp:SqlDataSource ID="SqlDataSourceLoaigiay" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MaNSX], [TenNSX] FROM [NSX]"></asp:SqlDataSource>
            </td>
            <td class="auto-style2"></td>
        </tr>
                 <tr>
            <td class="auto-style6">Mã Giày:</td>
            <td class="auto-style9">
               <asp:DropDownList ID="Magiay" runat="server" Width="100px" AutoPostBack="True" DataSourceID="SqlDataSourceMagiay" DataTextField="Magiay" DataValueField="Magiay"></asp:DropDownList> 
                <asp:SqlDataSource ID="SqlDataSourceMagiay" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Magiay] FROM [Giay] WHERE ([MaNSX] = @MaNSX)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Loaigiay" Name="MaNSX" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style2"></td>
        </tr>
      
        <tr>
            <td class="auto-style6">Số lượng</td>
            <td class="auto-style9">
                <asp:TextBox ID="Soluong" runat="server" ></asp:TextBox>
            </td>
            <%--<td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Nhập một chú thích">*</asp:RequiredFieldValidator>
            </td>--%>
        </tr>
        <tr>
            <td class="auto-style6" colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Xin hãy nhập đầy đủ thông tin bên dưới:" ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style9">
                <asp:Button ID="SendButton" runat="server" Text="ĐẶT MUA" OnClick="SendButton_Click" Width="81px" />
            </td>
            <td class="auto-style2"></td>
        </tr>
    </table>
            <asp:Label ID="Label1" runat="server" Text="Message Sent" Visible="false" CssClass="Attention" />
</div>
<asp:Label ID="Message" runat="server" Text="Message Sent" Visible="false" CssClass="Attention" />
        <p runat="server" id="MessageSentPara" visible="false">
            Cảm ơn thông tin của bạn. Chúng tôi sẽ liên hệ lại bạn nếu cần thiết.
        </p>
<%--    </ContentTemplate>
</asp:UpdatePanel>--%>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" >
    <ProgressTemplate>
        <div class="AJAX">
            &nbsp &nbsp Xin vui lòng chờ...
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>



