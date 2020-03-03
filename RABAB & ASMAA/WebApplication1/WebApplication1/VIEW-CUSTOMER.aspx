<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" Codefile="VIEW-CUSTOMER.aspx.cs" Inherits="WebApplication1.VIEW_CUSTOMER" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
   <nav class="navbar navbar-light bg-light">
  <%--<a class="navbar-brand">Customers</a>--%>
       <div style="display:flex">
  <form class="form-inline">
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
      <asp:TextBox ID="txtsearchcustomer" placeholder="Search" aria-label="Search" class="form-control mr-sm-2 btnsearchcustomer" runat="server"></asp:TextBox>
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" class="btn btn-outline-primary my-2 my-sm-0"  />
     
  </form>
   </div>
        <div class="dropdown">
  <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
 Sort Customers
  </a>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
      <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" class="dropdown-item" runat="server"><span class="fas fa-sort-alpha-up"></span></asp:LinkButton>
      <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click"  class="dropdown-item" runat="server"><span class="fas fa-sort-alpha-up"></span></asp:LinkButton>
  </div>
</div>
</nav>
 </div>
     <div class="divgridcustomer ">
        <asp:GridView ID="GridView1" AutoGenerateColumns="false"  CssClass="GridView-customer" runat="server" DataKeyNames="User_ID" OnRowDeleting="GridView1_RowDeleting">
              <Columns>
                  <asp:TemplateField HeaderText="User ID">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("User_ID") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>

                   <asp:TemplateField HeaderText="User ID">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("User_Name") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>


                   <asp:TemplateField HeaderText="User ID">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Email") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>


                   <asp:TemplateField HeaderText="User ID">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("FullName") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>



                   <asp:TemplateField HeaderText="User ID">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Address") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>


                   <asp:TemplateField HeaderText="User ID">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Phone") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>





                <asp:TemplateField  HeaderText="Delete">
                    <ItemTemplate>
                      <asp:LinkButton CommandName="Delete" runat="server" ID="btndelcustomer" ><span  class="fas fa-trash-alt "></span></asp:LinkButton>
                            </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
         </div>
</asp:Content>
