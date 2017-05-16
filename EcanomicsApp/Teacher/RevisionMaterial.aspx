<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RevisionMaterial.aspx.cs" Inherits="RevisionMaterial" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Economics App</title>
	
	<link href="css/bootstrap.css" rel="stylesheet" />
      
	

  </head>
  <body style="background-color:#2B3A42">
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
      <a class="navbar-brand" href="TeacherHome.aspx">Economics App</a>
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
            <li><a href="UpdateStudentInformation.aspx">Edit Account Details</a></li>
            <li role="separator" class="divider"></li>
            <li><asp:Button ID="btnLogOut" CssClass="btn btn-default" runat="server" Text="Log Out" OnClick="btnLogOut_Click"></asp:Button></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav><br/>
<!-- end of navbar-->


	<div class="container">
	<div class="page-header">
	<h1>Revision Material</h1>
	</div>
	
	<div class="jumbotron">
	<div class="row">
	<center>

	<div class="btn-group-vertical">
	
	<a href="AsMicroRevisionMaterial.aspx" class="btn btn-default btn-lg">AS Micro Economics</a><br/>
	
	<a href="AsMacroRevisionMaterial.aspx" class="btn btn-default btn-lg">AS Macro Economics</a><br/>
	
	<a href="A2MicroRevisionMaterial.aspx" class="btn btn-default btn-lg">A2 Micro Economics</a><br/>
	
	<a href="A2MacroRevisionMaterial.aspx" class="btn btn-default btn-lg">A2 Macro Economics</a><br/>
	</div>

	</center>

	</div>
	
	
	</div>
	</div>	
	
	

	
	
	
	
	
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        </form>
  </body>
</html>
