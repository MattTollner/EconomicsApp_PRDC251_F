<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign Up</title>

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
                <h1>Sign Up</h1>             
        </div>

    
            <label class="col-xs-11"><h5 style="color:#ACCFCC;"> User Type </h5></label>
            <div class="col-xs-11">
                <select id="SelectType" runat="server">
                            <option>Student</option>
                            <option>Teacher</option>
                        </select>            
            </div>

            <label class="col-xs-11"><h5 style="color:#ACCFCC;">Email</h5></label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbEmail" runat="server" Class ="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>          
            </div>

            <label class="col-xs-11"><h5 style="color:#ACCFCC;"> Username </h5></label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbUsername" runat="server" Class ="form-control" placeholder="Username"></asp:TextBox>
            </div>

            <label class="col-xs-11"><h5 style="color:#ACCFCC;"> First Name </h5></label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbFirstName" runat="server" Class ="form-control" placeholder="Username"></asp:TextBox>
            </div>

            <label class="col-xs-11"><h5 style="color:#ACCFCC;"> Last Name </h5></label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbLastName" runat="server" Class ="form-control" placeholder="Username"></asp:TextBox>
            </div>

            <label class="col-xs-11"><h5 style="color:#ACCFCC;"> Password </h5></label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbPass" runat="server" Class ="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>
            
            <label class="col-xs-11"><h5 style="color:#ACCFCC;"> Confirm Password </h5></label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbCPass" runat="server" Class ="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>          
            </div>        
             
            
       
            <div class="col-xs-11 control-group">
                <asp:Button ID="btnSignUp" runat="server" Class="btn btn-default" Text="Sign Up" OnClick="btnSignUp_Click"/>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>       
     </div>
   
    </div>
    </form>

      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
