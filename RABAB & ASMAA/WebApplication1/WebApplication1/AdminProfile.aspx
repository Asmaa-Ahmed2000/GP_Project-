<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="WebApplication1.AdminProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
          <div class="icondiv">  <i class="fas fa-user-edit fa-10x icons" ></i>
        <h1 class="AddEditore">Profile</h1>
       
      <div class=" mainn">
        <div class="input-group input-group-sm mb-3 inp1" >
            <div class="input-group-prepend">
            </div>
<%--            <asp:TextBox ID="txtuser" placeholder="Username" runat="server" CssClass="form-control"></asp:TextBox>--%>
          </div>
          <div class="input-group input-group-sm mb-3 inp1" >
            <div class="input-group-prepend">
            </div>
<%--            <asp:TextBox ID="txtemail" placeholder="Email" TextMode="Email" runat="server" CssClass="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm"></asp:TextBox>--%>

          </div>

          <div class="input-group input-group-sm mb-3 inp1">
            <div class="input-group-prepend">
            </div>
<%--            <asp:TextBox ID="txtpassword" TextMode="Password" placeholder="Password" runat="server" CssClass="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm"></asp:TextBox>--%>

          </div>
          
          <div class="input-group input-group-sm mb-3 inp1">
            <div class="input-group-prepend">
            </div>
<%--              <asp:TextBox ID="txtconfirmpass" TextMode="Password" placeholder="Confirm Password" runat="server" CssClass="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm"></asp:TextBox>--%>

          </div>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Not Match" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpass" Font-Bold="True" Font-Names="Cambria" ForeColor="Red"></asp:CompareValidator>
          <div class="input-group input-group-sm mb-3 inp1">
            <div class="input-group-prepend">
            </div>
<%--              <asp:TextBox ID="txtphone" TextMode="phone" placeholder="Phone Number" runat="server" CssClass="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm"></asp:TextBox>--%>
          </div>

          <div class="input-group input-group-sm mb-3 inp1">
            <div class="input-group-prepend">
            </div>
<%--            <asp:TextBox ID="txtaddress" placeholder="Address" runat="server" CssClass="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm"></asp:TextBox>--%>

          <div class="divbtneditor">
            <div>
<%--                <asp:Button ID="btnUpdate" OnClick="btnUpdate_Click" runat="server" Text="Update Profile" CssClass="btn btn-primary btn1" data-toggle="button" aria-pressed="false" autocomplete="off" />--%>
         
      

        </div>
              <asp:Label ID="lblmsg3" runat="server" Text=""></asp:Label>
        </div>
          </div>
</asp:Content>
