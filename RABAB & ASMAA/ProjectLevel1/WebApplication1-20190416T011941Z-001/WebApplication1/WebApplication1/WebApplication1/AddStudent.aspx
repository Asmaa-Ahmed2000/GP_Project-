<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="WebApplication1.insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            margin-left: 120px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form>
       <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label>
                        :</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server"  TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <!--<tr>
                    <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>-->
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="programeid"></asp:Label>
                        :</td>
                    <td>
                       <asp:DropDownList ID="ddlprograme" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <!--<tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="InstructorID"></asp:Label>
                        :</td>
                    <td>
                        <asp:TextBox ID="txtinst" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <<tr>
                    <td>
                        <asp:Label ID="leble" runat="server" Text="hours"></asp:Label>
                        :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txthours" runat="server"></asp:TextBox>
                    </td>
                </tr>-->
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="level"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddllevel" runat="server">
                            <asp:ListItem Value="1">one</asp:ListItem>
                            <asp:ListItem Value="2">two</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <!--<tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:RadioButton ID="male" runat="server" GroupName="Gender" Text="Male" />
                        <asp:RadioButton ID="female" runat="server" GroupName="Gender" Text="Female" />
                    </td>
                </tr>-->
                <tr>
                    <td colspan="2">
                        <asp:Button ID="bt" runat="server" Height="35px" Text="Save" OnClick="bt_Click" Width="239px" />
                    </td>
                </tr>
            </table>
               
        </div>
       
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
     </form>
</asp:Content>
