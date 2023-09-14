<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="U4_W3_D3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
<form id="form1" runat="server">
<div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-md-4">
            <div class="card border-success" style="min-width: 300px;">
                <div class="card-body">
                    <h2 class="text-center">Login</h2>
                    <asp:Label ID="lblMessage" runat="server" Text="Invalid username or password." ForeColor="Red" Visible="false" /><br /><br />
                    <div class="form-group">
                        <label for="Username">Username:</label>
                        <asp:TextBox ID="Username" runat="server" CssClass="form-control" placeholder="Enter your username" />
                    </div>
                    <br />
                    <div class="form-group">
                        <label for="Password">Password:</label>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter your password" />
                    </div>
                    <br />
                    <div class="form-group">
                        <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" CssClass="btn btn-success btn-block" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    </form>
</body>
</html>
