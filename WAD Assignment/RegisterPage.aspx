<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="WAD_Assignment.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/Login.css" rel="stylesheet" type="text/css" />
</head>
<body>
   <div class="wrapper">
        <form id="form1" runat="server">
            <h1>Register</h1>
            <div class="input-box">
                First name:
                &nbsp;<asp:TextBox ID="firstNameTextBox" runat="server"></asp:TextBox>
            </div>
            <div class="input-box">
                Last Name:
                &nbsp;<asp:TextBox ID="lastNameTextBox" runat="server"></asp:TextBox>
            </div>
            <div class="input-box">
                Email:
                &nbsp;<asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
            </div>
            <div class="input-box">
                Password:
                &nbsp;<asp:TextBox ID="passwordTextBox" runat="server"></asp:TextBox>
            </div>
            <div class="input-box">
                Phone Number:
                &nbsp;<asp:TextBox ID="phoneNumberTextBox" runat="server"></asp:TextBox>
                
            </div>

            <asp:Button ID="Register" runat="server" Text="Register" class="btn" OnClick="Register_Click" />

            

            

        </form>
    </div>
</body>
</html>
