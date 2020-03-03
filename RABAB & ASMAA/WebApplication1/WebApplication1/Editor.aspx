<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" Codefile="Editor.aspx.cs" Inherits="WebApplication1.Editor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <asp:GridView ID="GridView1" CssClass="GridView-customer" runat="server">
            <Columns>
                <asp:TemplateField  HeaderText="Delete">
                    <ItemTemplate>
                         <asp:LinkButton  runat="server" id="icondelete" OnClick="icondelete_Click"><span  class="fas fa-trash-alt"></span> </asp:LinkButton>
                        <asp:LinkButton  runat="server" id="LinkButton1" OnClick="LinkButton1_Click"><span class="fas fa-pencil-alt" style="padding-left:20px"></span> </asp:LinkButton>
                          </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
