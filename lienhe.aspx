<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="lienhe.aspx.cs" Inherits="lienhe" %>

<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="Dat" TagName="ContactForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <Dat:ContactForm runat="server" ID="ContactForm" />
</asp:Content>

