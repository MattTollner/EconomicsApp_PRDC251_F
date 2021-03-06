﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateTeacherInformation.aspx.cs" Inherits="UpdateTeacherInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Edit Account Details</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
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
      <a class="navbar-brand" href="Home.aspx">Economics App</a>
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
	<h1>Update Information</h1>
	</div>

    <div class="jumbotron">
	<div class ="row">

    <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>

        <div class="center-page">
            
            <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="email" TextMode="Email"></asp:TextBox>
            </div>

            <label class="col-xs-11">Username</label>
            <div class="col-xs-11">
                    <asp:TextBox ID="txtUsername" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
            </div>

            <label class="col-xs-11">First Name</label>
            <div class="col-xs-11">
                    <asp:TextBox ID="txtFirstName" runat="server" Class="form-control" placeholder="First Name"></asp:TextBox>
            </div>

            <label class="col-xs-11">Last Name</label>
            <div class="col-xs-11">
                    <asp:TextBox ID="txtLastName" runat="server" Class="form-control" placeholder="Last Name"></asp:TextBox>
            </div>

            <div class="col-xs-11">
            <asp:Button ID="updateInfo" runat="server" Text="Update Informaion" OnClick="updateInfo_Click"/>
            </div>        

            <div>
                <a class="btn btn-large btn-info" href="ChangeTeacherPassword.aspx">Change Passowrd</a>
            </div>

            <asp:Label ID="lblMsg" class="col-xs-11" runat="server"><!--HELLLJFDL:KJDL:FSKJL:KSDJFL:KJSDL:FJ:LKF--></asp:Label>
            
        </div>

    </div>
    </div>
    </div>


            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
