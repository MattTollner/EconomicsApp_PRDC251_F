﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A2MacroRevisionMaterial.aspx.cs" Inherits="A2MacroRevisionMaterial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>A2 Macro Economics Revision Material</title>

    <link href="css/bootstrap.css" rel="stylesheet"/>
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
              <a class="navbar-brand" href="Home.aspx">Economics App</a>
            </div>
                  <!-- Nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li><a href="RevisionMaterial.aspx">Revision Material <span class="sr-only">(current)</span></a></li>
                <li><a href="SelectQuiz.aspx">Quiz</a></li>
                <li><a href="SelectQuizArchive.aspx">Quiz Archive</a></li>
                <li><a href="JoinClass.aspx">Join Class</a></li>
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
	<h1>A2 Macro Revision Material</h1>
	</div>
	
	<div class="jumbotron">
	<div class ="row">
	
 
	<center>
	<div class="btn-group-vertical">
	
		<div class="row">
			<a href="TheEconProbPageOne.html" class="btn btn-default btn-lg hidden-xs">Section One - The National Economy</a>
			<a href="TheEconProbPageOne.html" class="btn btn-default btn-lg hidden-md hidden-lg hidden-sm">Section One</a>
			<!--modal button 1-->
			<a class="btn btn-default glyphicon glyphicon-info-sign" data-toggle="modal" data-target="#myModal1"></a>
			<!-- Modal -->
			  <div class="modal fade" id="myModal1" role="dialog">
				<div class="modal-dialog modal-sm">
				  <!-- Modal content-->
				  <div class="modal-content">
					<div class="modal-header">
					  <button type="button" class="close" data-dismiss="modal">&times;</button>
					  <p class="modal-title">Section One - The National Economy</p>
					</div>
					<div class="modal-body">
					  <p>Some information on the given topic (Place Holder)</p>
					</div>
					<div class="modal-footer">
					  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				  </div>
				</div>
			  </div>
		</div>
	<!--modal ends--><br/>

		<div class="row">
			<a href="TheEconProbPageOne.html" class="btn btn-default btn-lg hidden-xs">Section Two - The Global Economy</a>
			<a href="TheEconProbPageOne.html" class="btn btn-default btn-lg hidden-md hidden-lg hidden-sm">Section Two</a>
			<!--modal button 2-->
			<a class="btn btn-default glyphicon glyphicon-info-sign" data-toggle="modal" data-target="#myModal2"></a>
			<!-- Modal -->
			  <div class="modal fade" id="myModal2" role="dialog">
				<div class="modal-dialog modal-sm">
				  <!-- Modal content-->
				  <div class="modal-content">
					<div class="modal-header">
					  <button type="button" class="close" data-dismiss="modal">&times;</button>
					  <p class="modal-title">Section Two - The Global Economy</p>
					</div>
					<div class="modal-body">
					  <p>Some information on the given topic (Place Holder)</p>
					</div>
					<div class="modal-footer">
					  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				  </div>
				</div>
			  </div>
		</div>
	<!--modal ends--><br/>

		<div class="row">
			<a href="TheEconProbPageOne.html" class="btn btn-default btn-lg hidden-xs">Section Three - Development and Sustainability</a>
			<a href="TheEconProbPageOne.html" class="btn btn-default btn-lg hidden-md hidden-lg hidden-sm">Section Threee</a>
			<!--modal button 3-->
			<a class="btn btn-default glyphicon glyphicon-info-sign" data-toggle="modal" data-target="#myModal3"></a>
			<!-- Modal -->
			  <div class="modal fade" id="myModal3" role="dialog">
				<div class="modal-dialog modal-sm">
				  <!-- Modal content-->
				  <div class="modal-content">
					<div class="modal-header">
					  <button type="button" class="close" data-dismiss="modal">&times;</button>
					  <p class="modal-title">Section Three - Development and Sustainability</p>
					</div>
					<div class="modal-body">
					  <p>Some information on the given topic (Place Holder)</p>
					</div>
					<div class="modal-footer">
					  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				  </div>
				</div>
			  </div>
		</div>
	<!--modal ends--><br/>	
	
	
	
	</div></center>
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
