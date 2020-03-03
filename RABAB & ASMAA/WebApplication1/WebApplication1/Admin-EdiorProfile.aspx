<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" Codefile="Admin-EdiorProfile.aspx.cs" Inherits="WebApplication1.Admin_EdiorProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <div class="mainprofile">

            <div  class=" Profilemain">
                <div class="icondiv">  
                    <span class="fas fa-user-edit  icons" ></span>
                    <h1 class="H11">Profile</h1>
                </div>
              
                <div> 
                    <asp:TextBox ID="txtuser" runat="server" placeholder="Username" class="in" ></asp:TextBox>
<%--                    <input type="text" placeholder="Username" class="in">--%>
                </div>
                <div>
                    <asp:TextBox ID="txtemail" runat="server"  placeholder="Email" CssClass="in" TextMode="Email"></asp:TextBox>
<%--                    <input type="text" placeholder="Email" class="in">--%>
                </div>
                <div>
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" placeholder="passwred" CssClass="in"></asp:TextBox>
<%--                    <input type="text" placeholder="passwred" class="in">--%>
                </div>
                <div>
                    <asp:TextBox ID="txtconfirm" runat="server"  placeholder=" confirm passwred" TextMode="Password" CssClass="in"></asp:TextBox>
<%--                    <input type="text" placeholder=" confirm passwred" class="in">--%>
                </div>
                <div>
                    <asp:TextBox ID="txtphone" runat="server" TextMode="Phone" CssClass="in"  placeholder="phone number"></asp:TextBox>
<%--                    <input type="text" placeholder="phone number" class="in">--%>
                </div>
                <div>
                    <asp:TextBox ID="txtaddress" runat="server" placeholder="Address" CssClass="in"></asp:TextBox>
<%--                    <input type="text" placeholder="state" class="in">--%>
                </div>
                <div class=" ADMIN_PR">
                   <%-- <button>Edite Profile </button>--%>
                    <asp:Button ID="btnprofile" runat="server" Text="Edite" OnClick="btnprofile_Click" CssClass="Edit-admin"  />
                </div>
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
            </div>
        </div>
</asp:Content>
