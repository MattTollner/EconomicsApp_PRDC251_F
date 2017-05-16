<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TheEconProbPageOne.aspx.cs" Inherits="TheEconProbPageOne" %>

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
	<!--collapsing the nav bar and tings-->
	<nav class="navbar navbar-fixed-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
								data-target="#bs-example-navbar-collapse-1" aria-expanded="false" style="color:white">
								
					<span class="sr-only"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>	
			
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	<!--nav bar and tings-->		
	<ul class="nav navbar-nav">
		<li class="active"><a href="home.aspx">Home<span class="sr-only">(current)</span></a></li>
		<li><a href="RevisionMaterial.aspx">Revision Material</a></li>
		<li><a href="#">Quiz</a></li>
		<li><a href="#">Archive</a></li>
		<li><a href="Glossary.aspx">Glossary</a></li>
		<li><a href="NewsOutlet.aspx">News Outlets</a></li>
		<li style="float:right" class="dropdown"><a href="#" class="dropdown-toggle" 
					data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span>
					<ul class="dropdown-menu">
					<li><a href="#">Edit Details</a></li>
					<li><a href="#">Logout</a></li>
					</ul>
	</ul>
				
			</div>	
				
			
		</div>
	</nav>
	<!--header and tings-->
	<div class="page-header">
	<a href="AsMicroRevisionMaterial.aspx"><h5>-Chapter Page</h5></a>
        <center><h1>Section One - The Economic Problem</h1></center>
	</div>

    <div class="container">
	<ul class="list-inline">
		<li style="float:right"><a href="TheEconProbPageTwo.aspx"><h5>Next Page</h5></a></li>
	</ul><br /><br />
	<!--content and tings-->
	
        <div class="jumbotron">
	<h4>Developed By; Marcus, Matt and Patrick.</h4>
            <h4>Content unavaliable due to Copyright Issues.</h4>
	    </div>
	</div>

	
	
	
	
	
	</div>

	
	
	
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
