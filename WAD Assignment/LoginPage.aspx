<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WAD_Assignment.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/Login.css" rel="stylesheet" type="text/css" />
</head>
<body>
   <div class="wrapper">
        <form id="form1" runat="server">
            <h1>Login</h1>
            <div class="input-box">
                StudentId
                &nbsp;<asp:TextBox ID="studentIdTextBox" runat="server"></asp:TextBox>
               
            </div>
            <div class="input-box">
                Password:
                &nbsp;<asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox>
                
            </div>

            <div class="remember-forgot">
                <label><input type="checkbox">Remember me</label>
                <a href="#">Forgot password</a>
            </div>

            <asp:Button ID="LoginButton" runat="server" Text="Login" class="btn" OnClick="LoginButton_Click" />

            <div class="register-link">
                <p>Don't have an account?<asp:HyperLink ID="registerHyperLink" runat="server" NavigateUrl="~/RegisterPage.aspx">Register</asp:HyperLink></p> 
            </div>
            <div>
                <asp:Label ID="lblErrorMessage" runat="server" Text="Invalid User"></asp:Label>
            </div>

        </form>
    </div>
</body>
</html>
