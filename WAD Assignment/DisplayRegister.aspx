<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayRegister.aspx.cs" Inherits="WAD_Assignment.DisplayRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" SortExpression="StudentId" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="contacts" HeaderText="contacts" SortExpression="contacts" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [RegisterTable]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
