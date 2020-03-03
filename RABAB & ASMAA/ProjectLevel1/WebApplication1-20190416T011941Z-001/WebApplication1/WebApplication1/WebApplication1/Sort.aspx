<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sort.aspx.cs" Inherits="WebApplication1.Sort" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label class="ll
            
            
            
            
            
            
   " ID="lblsort" runat="server" Text="You Can Sort the student from  A  to Z by click on this button"></asp:Label>
        <asp:Button class="btn" ID="sort" runat="server" Text="Sort" OnClick="sort_Click" Width="77px" />
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
