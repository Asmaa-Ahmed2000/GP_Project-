<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeFile="ADD_Gift.aspx.cs" Inherits="WebApplication1.ADD_Gift" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <main class="maingift" >
        <div class="container">
        <div class="row rowgift">
            <div class="  col-md-6 col-12">
              <div class="GFT">
                   <img src="img/Christmas-card-present-shake.gif" height="330px" width="330px" />

                </div>
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

                <div>
                    <asp:TextBox ID="txtprice" runat="server" CssClass="inputname" placeholder=" Price"></asp:TextBox>
                </div>
                
                <div class="DRL">
                                    <asp:DropDownList ID="ddlCategory" runat="server">
                                    </asp:DropDownList>

                </div>
                 <div class="btn">
                     <asp:Button ID="btnADD" runat="server" CssClass="btnupload" Text="Add" OnClick="btnADD_Click" />
                 </div>
              </div>
            </div>

        </div>
         <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>

    </main>
</asp:Content>
