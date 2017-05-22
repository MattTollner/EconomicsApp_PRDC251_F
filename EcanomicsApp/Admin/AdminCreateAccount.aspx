<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminCreateAccount.aspx.cs" Inherits="Admin_AdminCreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <!-- Bootstrap -->
    <link href="~/Admin/css/bootstrap.min.css" rel="stylesheet" />
    <link href="~/Admin/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="form-horizontal">
                <div class="page-header">
                    <h1>Create Admin Account</h1>
                </div>


                <label class="col-xs-11">
                    <h5 style="color: #ACCFCC;">Username</h5>
                </label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbUsername" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
                </div>

               

                <label class="col-xs-11">
                    <h5 style="color: #ACCFCC;">Password </h5>
                </label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                </div>

                <label class="col-xs-11">
                    <h5 style="color: #ACCFCC;">Confirm Password </h5>
                </label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox> <br />
                </div>



                <div class="col-xs-11 control-group">
                    <asp:Button ID="btnSignUp" runat="server" Class="btn btn-default" Text="Sign Up" OnClick="btnSignUp_Click" />
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </div>
            </div>
    </form>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="~/Admin/js/bootstrap.min.js"></script>
</body>
</html>
