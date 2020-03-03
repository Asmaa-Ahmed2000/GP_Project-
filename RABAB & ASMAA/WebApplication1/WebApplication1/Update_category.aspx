<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" Codefile="Update_category.aspx.cs" Inherits="WebApplication1.Update_category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="maingift" style="background-color:#F8F9FA" >
        <div class="container">
        <div class=" rowgift">
              <div  class="divfleximg">
                  <asp:Image ID="Image1" ImageUrl="~/imgAdd/Christmas-card-present-shake.gif" style="width:30%" runat="server" />
              </div>
                <div class="divfleximg bbtn btnuploadimg " style="display:flex; flex-direction:column; justify-content:center; align-items:center;">
                     <asp:FileUpload  ID="FileUpload1" class="btnupload " placeholder="Upload Image" runat="server" CssClass="btnupload btnuploadfile" />
                     <asp:Image  ImageUrl='<%# "~/img/"+  Eval("image") %>' Width="50" ID="Image2"  runat="server" />
                     <asp:Label ID="Label2"  runat="server" Text=""></asp:Label>
               
                     </div>
          
            <div class="divfleximg" >
              <asp:TextBox ID="TextBox1" runat="server" class="inputname" placeholder="Category Name"></asp:TextBox>
            </div>
                 <div class="btn divfleximg">
                     <asp:Button ID="Button1" class="btnupload btnadd " OnClick="Button1_Click" runat="server" Text="Edit" />
                 </div>
            <div style="display:flex; align-items:center; justify-content:center">
              <asp:Label ID="Label1" class="lbladd" runat="server" Text=""></asp:Label>
            </div>
              </div>
            </div>
        </div>
    </div>
</asp:Content>
