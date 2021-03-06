﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherHome.aspx.cs" Inherits="TeacherHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>Economics App - Teachers Edition</title>

    <link href="css/teacherBootstrap.css" rel="stylesheet"/>

</head>
<body style="background-color:#413D49">
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
        <li><a href="ViewClasses.aspx">Student Quiz Archive</a></li>
		<li><a href="Glossary.aspx">Glossary</a></li>
		<li><a href="NewsOutlet.aspx">News Outlets</a></li>
	  </ul>
     
	
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="UpdateTeacherInformation.aspx">Edit Account</a></li>
            <li role="separator" class="divider"></li>
            <li><asp:Button ID="btnLogOut" CssClass="btn btn-default" runat="server" Text="Log Out" OnClick="btnLogOut_Click"></asp:Button></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<br/>
<!-- end of navbar-->

    <div class="container">
        <div class="page-header">
	        <h1>Economics App</h1>
	     </div>
	
    <div class="jumbotron">
	    <div class ="row">



    <center>
	<div class="btn-group-vertical">
	
	<a href="RevisionMaterial.aspx" class="btn btn-default btn-lg">Revision Material <span class="glyphicon glyphicon-book"></span></a><br />
	
	<a href="ViewClasses.aspx" class="btn btn-default btn-lg">Student Quiz Archive <span class="glyphicon glyphicon-inbox"></span></a><br />
	
	<a href="Glossary.aspx" class="btn btn-default btn-lg">Glossary <span class="glyphicon glyphicon-th-list"></span></a><br />
	<a href="ViewClasses.aspx" class="btn btn-default btn-lg">View Classes <span class="glyphicon glyphicon-text-background"></span></a><br />
	
        <a href="CreateClass.aspx" class="btn btn-default btn-lg">Create Class <span class="glyphicon glyphicon-text-background"></span></a><br />
    
    <h5><asp:Label ID="successLbl" runat="server"  CssClass="btn bnt-default navbar-btn" Text="Log Out"></asp:Label></h5>    
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
