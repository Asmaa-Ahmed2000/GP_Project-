<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddMark.aspx.cs" Inherits="WebApplication1.AddMark" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 60px;
        }
        .auto-style2 {
            height: 114px;
        }
        .auto-style3 {
            width: 328px;
        }
        .auto-style4 {
            height: 60px;
            width: 328px;
        }
        .auto-style5 {
            height: 114px;
            width: 328px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="rightside">
        <div class="set" >
    <table class="insert">
       
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="StudentName"></asp:Label>
            </td>
            <td class="auto-style3">
              
                <h2 id="lblstudent" runat="server"></h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="CourseName"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList class="vvv" ID="ddlCourses" runat="server">
               
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label11" runat="server" Text="First_Exam"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtfirst" class="vvv" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtfirst" EnableClientScript="False" ErrorMessage="The Mark should be between  1 to 100" Font-Size="11pt" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label12" runat="server" Text="Sceand_Exam"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtsceand" class="vvv" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtsceand" EnableClientScript="False" EnableViewState="False" ErrorMessage="The mark should be between 1 to 100" Font-Size="11pt" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Final_Exam"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtfinal" class="vvv" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtfinal" EnableClientScript="False" ErrorMessage="The mark should be between 1 to 100" Font-Size="11pt" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnadd" runat="server" class="btn" Text="AddMark" Width="173px" OnClick="btnadd_Click" />
            </td>
        </tr>
    </table>
      <asp:Label ID="lblmsg" runat="server"></asp:Label>
      <asp:Label ID="lblerror" runat="server"></asp:Label>
    
</asp:Content>
