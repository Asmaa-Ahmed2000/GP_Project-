<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" Codefile="View_Orders.aspx.cs" Inherits="WebApplication1.View_Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <div class="divgridcustomer ">
        <asp:GridView ID="GridView1" AutoGenerateColumns="false" CssClass="GridView-customer" runat="server"  DataKeyNames="User_ID" OnRowDeleting="GridView1_RowDeleting">

            <Columns>
                <asp:TemplateField HeaderText="Gift Name">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("User_ID") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>

                   <asp:TemplateField HeaderText=" Cutomer Name">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("User_Name") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>
                <asp:TemplateField HeaderText=" Price">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("User_ID") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>

                   <asp:TemplateField HeaderText=" Quantity">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("User_Name") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>


                   <asp:TemplateField HeaderText="Date ">
                      <ItemTemplate>
                          <asp:Label Text='<%# Eval("Email") %>' runat="server" />
                      </ItemTemplate>
                  </asp:TemplateField>

                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton CommandName="Delete" runat="server" ID="icondeleteorders" ><span class="fas fa-trash-alt"></span></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

              
            </Columns>
        </asp:GridView>
    </div>
    
</asp:Content>
