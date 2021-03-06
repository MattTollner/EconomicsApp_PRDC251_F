﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign In</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" />


</head>
<body style="background-color:#2B3A42">
    <!--Start of navbar-->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" href="SignIn.aspx">Economics App</a>
    </div>


  </div><!-- /.container-fluid -->
</nav>
<br/>	
<!-- end of navbar-->
    <form id="form1" runat="server">
    <div class="container">
    
        <div class="form-horizontal">
            <div class="page-header">
                <h1>Sign In</h1>             
            </div>
    <div class="jumbotron">
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Sign in as"></asp:Label>
                    <div class="col-md-3">
                        <select id="SelectType" runat="server">
                            <option>Student</option>
                            <option>Teacher</option>
                            <option>Admin</option>
                        </select>                        
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"></asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="Username required..." ControlToValidate="UserName"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password">Password</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" CssClass="text-danger" runat="server" ErrorMessage="Password required..." ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">                
                    <div class="col-md-6">
                        <div class="col-md-2"></div>
                        <asp:CheckBox ID="chkBxRemember" runat="server"/>  
                        <asp:Label ID="Label4" runat="server" CssClass="control-label" Text="Rembember Me?"></asp:Label>   
                        
                    </div>
                </div>

                <div class="form-group">                
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnLogIn" runat="server" CssClass="btn btn-default" Text="Log In" OnClick="btnLogIn_Click" />  
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class ="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Label ID="lblMsg" CssClass ="text-danger" runat="server" ></asp:Label>
                </div>
            </div>
    </div>
    </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>

        </body>
</html>
