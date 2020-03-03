<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="./cssLogin/bootstrap.min.css">
    <link rel="stylesheet" href="./cssLogin/styleLogin.css">
    <!-- <link rel="stylesheet" href="css/styleindex.css"> -->
    <link rel="stylesheet" href="./cssLogin/mediaLogin.css">
    <link rel="stylesheet" href="./cssLogin/all.css">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
         <!---------------------End Header--------------------------->
      <div class="container-fluid mycontainer">
          <div class="row">
            <div class="col-md-6 col-12 class1 div1">
              <h4>Login </h4>
          
              <div class="divusername">  
                  <asp:TextBox ID="txtuserlogin" runat="server" CssClass="namelogin" placeholder="username"></asp:TextBox>
                  <%--                <input class="namelogin" type="text"placeholder="username">--%>
                  <br />
                      
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtuserlogin" ErrorMessage="Please fill in the required fields" Font-Names="A Mosalas" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                      
              </div>
              <div class="divpassword">
           <asp:TextBox ID="passwordlogin" runat="server" CssClass="namelogin" placeholder="Password"></asp:TextBox>
                  <%--                <input class="namelogin" type="password"placeholder="Password">--%>
                  <br />
                      
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="passwordlogin" ErrorMessage="Please fill in the required fields" Font-Names="A Mosalas" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                      
              </div>
              <div class="flexforget">
              <div class="logindiv">
                  <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="but btnlogin"  OnClick="btnlogin_Click1"/>
            </div>
            <div class="divforget">
              <a><p class="forget">Forgot Password?</p></a>
            </div>
          </div>
                <div class="divmsg">
                <asp:Label ID="lblmsg1" runat="server" Text=""></asp:Label>
                    </div>
            </div>
     
              <!----part 3-->
                <div class="col-md-6 col-12 class1 div2">
                  <h4> Register Now</h4>
                  <div class="divusernametwo">
                    <asp:TextBox ID="txtuserRegister" placeholder="User name" CssClass="username" runat="server" ></asp:TextBox>

                      <br />
                      
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuserRegister" ErrorMessage="Please fill in the required fields" Font-Names="A Mosalas" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                      
                      </div>
                  <div class="divpasswordtwo">
                    <asp:TextBox ID="txtemail" TextMode="Email" placeholder="Email" CssClass="username" runat="server"  ></asp:TextBox>

                      <br />
<%--                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" ErrorMessage="Fill required Filed" Font-Bold="True" Font-Names="Cambria" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter the date correctly" Font-Names="A Mosalas" ForeColor="Red" ControlToValidate="txtemail" Font-Size="Small"></asp:RequiredFieldValidator>
                  </div>
                  <div class="divpasswordtwo">
                      <asp:TextBox ID="txtpasswordRegister" TextMode="Password" CssClass="passsmall passblock" placeholder="Password" runat="server"></asp:TextBox>
&nbsp;&nbsp;<%--                    <input type="password"placeholder="Password" class="passsmall passblock">--%>
                      <asp:TextBox ID="txtconfirm" runat="server" CssClass="passsmall passpadding" TextMode="Password" placeholder="Confirm Password" ></asp:TextBox>
                      &nbsp;
                      <%--                    <input class="" type="password"placeholder="Confirm Password">--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<%--                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpasswordRegister" ErrorMessage="Fill required Filed" Font-Bold="True" Font-Names="Cambria" ForeColor="Red"></asp:RequiredFieldValidator>--%>
<%--                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtconfirm" ErrorMessage="Fill required Filed" Font-Bold="True" Font-Names="Cambria" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                      
                      &nbsp;&nbsp;&nbsp;
                      
                      <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="White" ControlToCompare="txtpasswordRegister" ControlToValidate="txtconfirm" ErrorMessage="not match" Font-Bold="True" Font-Names="A Mosalas" ForeColor="Red" Font-Italic="True" Font-Size="Small"></asp:CompareValidator>
                      
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpasswordRegister" ErrorMessage="Please fill in the required fields" Font-Names="A Mosalas" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                
                  </div>

                  <div class="divpasswordtwo">
                      <asp:TextBox ID="txtphone" placeholder="Phone"  CssClass="username" runat="server"  TextMode="Phone"></asp:TextBox>
                      <%--                    <input type="text"placeholder="Phone"  class="username">--%>
                      <br />
&nbsp;
<%--                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtphone" ErrorMessage="Fill required Filed" Font-Bold="True" Font-Names="Cambria" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                      
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtphone" ErrorMessage="Please fill in the required fields" Font-Names="A Mosalas" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                      
                  </div>
                     <asp:TextBox ID="txtrollID" placeholder="RollID" CssClass="username" runat="server" Visible="False" ></asp:TextBox>

                  <div class="divbtn">
                     
                      <asp:Button ID="btnRegister" runat="server" Text="Register Now" CssClass="but btnregister" OnClick="btnRegister_Click" />
                      <%--                      <button class="but btnregister">Register Now</button>--%>
              </div>
                   
                     <asp:Label ID="lblmsg2" runat="server" Text=""></asp:Label>
                      
            </div>
            </div>
         
            </div>
          <!----------------------- Start Footer--------------------------->
        <div class="card text-center">
    <div class="card-body foot">
      <h5 class="card-title">Giffty Shop</h5>
      <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
      <a href="#" class="btn ">Go to bove</a>
    </div>
    <div class="card-footer text-muted">
     <p class="smallp"><small>© copyright Giffty 2019</small></p> 
      <a class="asocial" href="#"><span class="fab fa-twitter"></span></a>
      <a class="asocial" href="#"><span class="fab fa-instagram"></span></a>
      <a class="asocial" href="#"><span class="fab fa-facebook-f"></span></a>
    </div>
  </div>

    <script src="js/jQuery.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/functions.js"></script>
    </form>
</body>
</html>
