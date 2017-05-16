<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" />

    <title>Change Password</title>


</head> style="background-color:#2B3A42"
<body>
<form id="form1" runat="server">

     <!--Start of navbar-->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="Home.aspx">Economics App</a>
    </div>
          <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="RevisionMaterial.aspx">Revision Material <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Quiz</a></li>
        <li><a href="#">Quiz Archive</a></li>
		<li><a href="Glossary.aspx">Glossary</a></li>
		<li><a href="NewsOutlet.aspx">News Outlets</a></li>
	  </ul>
     
	
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="UpdateStudentInformation.aspx">Edit Account</a></li>
            <li role="separator" class="divider"></li>
            <li><asp:Button ID="btnLogOut" CssClass="btn bnt-default" runat="server" Text="Log Out" OnClick="btnLogOut_Click"></asp:Button></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav><br/>
<!-- end of navbar-->


    
    <div class="container">
    <div class="page-header">
	<h1>Change Password</h1>
	</div>
	<div class="jumbotron">
	<div class ="row">
        <div class="center-page">          
           
            <label class="col-xs-11">Current Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbCurrentPassword" runat="server" Class ="form-control" placeholder="Email" TextMode="Password"></asp:TextBox>          
            </div>         

            <label class="col-xs-11">Password</label>
                <div class="col-xs-11">
                <asp:TextBox ID="tbPass" runat="server" Class ="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Confirm Password</label>
                <div class="col-xs-11">
                <asp:TextBox ID="tbCPass" runat="server" Class ="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>          
            </div>   
                  
            <div class="col-xs-11 space-vert"><br />
                <%--<asp:Button ID="btnChangePassword3" runat="server" Class="btn-success" Text="Change Password" OnClick="btnSignUp_Click" />--%>
                <asp:Button ID="btnChangePass" runat="server" OnClick="btnChangePass_Click" Text="Change Password" />

                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>       
     </div>
    </div>
        </div>
        </div>
    </form>

     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
