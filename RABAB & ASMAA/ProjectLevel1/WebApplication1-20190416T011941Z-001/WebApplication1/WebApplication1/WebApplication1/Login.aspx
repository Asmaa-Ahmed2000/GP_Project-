<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="design/css/style.css" rel="stylesheet" />
    <link href="design/css/all.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="login">
                <div class="log">
                    <div class="login">
                                <header class="head">  
                                    <div class="h1"> 
                                    <h1>System Management Mark</h1>
                                    </div> 
                                    <div class="nurwa">
                                   <img src="design/img/unrwa.png" class="un">
                                    </div>
                                </header>
                            <span class="fas fa-user student"></span> <asp:TextBox ID="txtusername" class="input ee" type="text" placeholder="Student name" runat="server"> </asp:TextBox>
                            <span class="fas fa-unlock-alt student"></span>  <asp:TextBox ID="txtpassword" TextMode="Password" runat="server" class="input" type="password" placeholder="Password"></asp:TextBox>                   
                             <asp:Button ID="btnlogin" class="btnlogin"  OnClick="btnlogin_Click"  runat="server" Text="Login" />
                             <asp:Label ID="lblmesg" class="mas1"  runat="server" Text="" ></asp:Label>
                        </div>
                </div>
        </div>
    </form>
    
</body>
</html>
