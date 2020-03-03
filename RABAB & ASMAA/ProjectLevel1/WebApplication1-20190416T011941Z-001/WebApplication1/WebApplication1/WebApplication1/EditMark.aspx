<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditMark.aspx.cs" Inherits="WebApplication1.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="txtmarkfirst"  runat="server" />
        <asp:TextBox ID="txtmarksceand"  runat="server" />
        <asp:TextBox ID="txtmarkfinal"  runat="server" />
        <asp:Button ID="btnupdate" Text="Update" OnClick="btnupdate_Click" runat="server" />
</asp:Content>
