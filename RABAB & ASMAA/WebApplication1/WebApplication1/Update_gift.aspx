<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeFile="Update_gift.aspx.cs" Inherits="WebApplication1.Update_gift" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <main class="maingift" >
        <div class="container">
        <div class="row rowgift">
            <div class="  col-md-6 col-12">
              
                <div class="bbtn btnuploadimg">
<%--                   <input class="btnupload " placeholder="Upload Image" type="file">--%>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btnupload" />
             </div>
            </div>
            <div class=" col-md-6 col-12">
                <asp:TextBox ID="txtgiftName" runat="server" placeholder=" Gift Name" CssClass="inputname"></asp:TextBox>
<%--                <input type="text" class="inputname" placeholder=" Gift Name">--%>
                <asp:TextBox ID="txtarea" Columns="50" Rows="2" CssClass="Des" runat="server" placeholder=" Add Description Here">

                </asp:TextBox>
<%--                <textarea rows="4" class="inputname" cols="50" class="Des">--%>
          <%--   Add Description Here
                 </textarea>--%>
                <div>
                    <asp:TextBox ID="txtprice" runat="server" CssClass="inputname"></asp:TextBox>
<%--                  <input type="number"  class="inputname" placeholder=" price" >--%>
                </div>
                
                <div>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">Birthday</asp:ListItem>
                        <asp:ListItem Value="2">Valintune</asp:ListItem>
                        <asp:ListItem Value="3">Graduation</asp:ListItem>
                        <asp:ListItem Value="4">Flowers</asp:ListItem>
                        <asp:ListItem Value="5">Friendship</asp:ListItem>
                        <asp:ListItem Value="6">Widding</asp:ListItem>
<%--                        <asp:ListItem Value="7">Birthday</asp:ListItem>--%>
                    </asp:DropDownList>
                
                </div>
                 <div class="btn">
                     <asp:Button ID="btnUpdate" runat="server" CssClass="btnupload" Text="Add" OnClick="btnUpdate_Click" />
                 </div>
              </div>
            </div>

        </div>
         <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>

    </main>
</asp:Content>
