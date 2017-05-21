<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsOutlet.aspx.cs" Inherits="NewsOutlet" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Economics App</title>
	
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
          <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="RevisionMaterial.aspx">Revision Material <span class="sr-only">(current)</span></a></li>
        <li><a href="SelectQuiz.aspx">Quiz</a></li>
        <li><a href="SelectQuizArchive.aspx">Quiz Archive</a></li>
		<li><a href="Glossary.aspx">Glossary</a></li>
		<li><a href="NewsOutlet.aspx">News Outlets</a></li>
	  </ul>
     
	
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Edit Account</a></li>
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
	<h1>News Outlets</h1>
	</div>
	
	<div class="jumbotron">
	<div class ="row">
	
	
	<center>
	
	
	<a href="http://www.bbc.co.uk/news/business/economy" target="_blank"><img class="img-responsive" src="images/bbcnews.png" style="width:375px;height:210px;"></a><br/>
	
	<a href="http://www.economist.com/" target="_blank"><img class="img-responsive" src="images/economist.png" style="width:375px;height:210px;"></a><br/>
	
	<a href="https://www.ft.com/?edition=uk"  target="_blank"><img class="img-responsive" src="images/financialtimes.png" style="width:375px;"></a><br/>
	
	<a href="https://www.theguardian.com/business/economics" target="_blank"><img class="img-responsive" src="images/guardian.png" style="width:375px;"></a><br/>
	
	<a href="https://www.tutor2u.net/economics"  target="_blank"><img class="img-responsive" src="images/tutor2u.png" style="width:340px;height:210px;"></a><br/>
	
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
