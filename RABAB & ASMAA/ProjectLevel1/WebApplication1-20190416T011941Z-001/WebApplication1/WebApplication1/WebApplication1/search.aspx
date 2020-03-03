<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="WebApplication1.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:TextBox ID="txtsearch"  runat="server"></asp:TextBox><asp:Button class="bb" ID="btnsearch" runat="server" Text="search" OnClick="btnsearch_Click"/>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
