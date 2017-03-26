<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Economics App</title>
	
	<link href="css/bootstrap.css" rel="stylesheet">
	

  </head>
  <body style="background-color:#2B3A42">
	<div class="container">
	<ul class="list-inline">
		<li><a href="Home.aspx">Home</a></li>
		<li><a href="RevisionMaterial.aspx">Revision Material</a></li>
		<li><a href="#">Quiz</a></li>
		<li><a href="#">Archive</a></li>
		<li><a href="Glossary.aspx">Glossary</a></li>
		<li><a href="NewsOutlet.aspx">News Outlets</a></li>
		<li style="float:right" class="dropdown"><a href="#" class="dropdown-toggle" 
					data-toggle="dropdown">Account<span class="caret"></span>
					<ul class="dropdown-menu">
					<li><a href="#">Edit Details</a></li>
					<li><button id="btnLogOut">Logout</button></li>
					</ul>
	</ul>
	
	<div class="page-header">
	<h1>A-level Economics</h1>
	</div>
	
	<div class="jumbotron">
	<div class ="row">
	
	
	<center>
	<div class="btn-group-vertical">
	
	<a href="RevisionMaterial.aspx" class="btn btn-default btn-lg">Revision Material</a><br />
	
	<a href="#" class="btn btn-default btn-lg">Quiz</a><br />
	
	<a href="#" class="btn btn-default btn-lg">Quiz Archive</a><br />
	
	<a href="Glossary.aspx" class="btn btn-default btn-lg">Glossary</a><br />
	
	<a href="NewsOutlet.aspx" class="btn btn-default btn-lg">News Outlets</a><br />
	
	</center>
	</div>
	</div>	
	
	
	</div>

	</div>
	
	
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
