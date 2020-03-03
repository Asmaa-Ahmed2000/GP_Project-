<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" Codefile="View_Categories.aspx.cs" Inherits="WebApplication1.View_Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <%-- <div>
        <asp:GridView ID="GridView1" CssClass="GridView-customer" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
              <Columns>
               <asp:TemplateField  HeaderText="Action">
                    <ItemTemplate>
                       <asp:LinkButton  runat="server" id="icondelcategoyr" OnClick="icondelcategoyr_Click" ><span  class="fas fa-trash-alt "></span> </asp:LinkButton>
                       <asp:LinkButton  runat="server" id="iconeditcategory" OnClick="iconeditcategory_Click"><span class="fas fa-pencil-alt " style="padding-left:20px"></span> </asp:LinkButton>
                       <asp:LinkButton runat="server" ID="iconviewcategory" OnClick="iconviewcategory_Click"><span class="fas fa-eye" style="padding-left:20px"></span></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Image">

                   <ItemTemplate>
                       <asp:Image ID="Image1" ImageUrl='<%# "~/img/"+  Eval("Category_image") %>' Width="50" runat="server" />
                   </ItemTemplate>
                  </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>--%>
    <asp:GridView ID="GridView1" runat="server" CssClass="GridView-customer" DataKeyNames="Category_ID" OnRowDeleting="GridView1_RowDeleting">
         <Columns>
               <asp:TemplateField  HeaderText="Action">
                    <ItemTemplate>
                       <asp:LinkButton  runat="server" CommandName="Delete" id="icondelcategoyr" ><span  class="fas fa-trash-alt "></span> </asp:LinkButton>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "Update_category.aspx.aspx?Category_ID=" + Eval("Category_ID") %>'   runat="server"><span class="fas fa-pencil-alt " style="padding-left:20px"></asp:HyperLink>
                       <asp:LinkButton  runat="server" id="iconeditcategory" OnClick="iconeditcategory_Click"></span> </asp:LinkButton>
                       <asp:LinkButton runat="server" ID="iconviewcategory" OnClick="iconviewcategory_Click"><span class="fas fa-eye" style="padding-left:20px"></span></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Image">
                   <ItemTemplate>
                       <asp:Image ID="Image1" ImageUrl='<%# "~/img/"+  Eval("Category_image") %>' Width="50" runat="server" />
                   </ItemTemplate>
                  </asp:TemplateField>
            </Columns>
    </asp:GridView>
</asp:Content>
