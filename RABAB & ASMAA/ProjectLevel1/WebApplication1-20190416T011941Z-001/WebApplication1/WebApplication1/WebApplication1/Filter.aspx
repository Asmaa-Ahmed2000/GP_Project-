<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Filter.aspx.cs" Inherits="WebApplication1.Filter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="rightside">
        <div class="set" >
              <div class="programid">
    <asp:Label ID="Label1" class="leble" runat="server" Text="ProramID: "></asp:Label>
                        <asp:TextBox ID="txtproid" class="vvv" placeholder="Enter your ProgramID"  runat="server"></asp:TextBox>
                   </div>
              <div class="level">
    <asp:Label ID="Label2" class="leble"  runat="server" Text="Level:"></asp:Label><asp:TextBox ID="txtlevel" class="inputlevel" runat="server" placeholder="Enter your level">  
             </asp:TextBox> 

              </div> 
    <asp:Button ID="bt" runat="server" Text="Filter" OnClick="bt_Click"  class="btn"/>
                        </div>
</div>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
</asp:Content>

                
             
        
                        
