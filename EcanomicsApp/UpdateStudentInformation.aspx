<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateStudentInformation.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Update Information</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
</head>
<body style="background-color:#2B3A42">

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
            <li><a href="#">Edit Account</a></li>
            <li role="separator" class="divider"></li>
            <li><asp:Button ID="btnLogOut" CssClass="btn bnt-default" runat="server" Text="Log Out" OnClick="btnLogOut_Click"></asp:Button></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav></br>
<!-- end of navbar-->

    <div class="container">
	<div class="page-header">
	<h1>Update Information</h1>
	</div>
	
	<div class="jumbotron">
	<div class ="row">

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <div class="center-page">

                <label class="col-xs-11">Email</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                </div>

                <label class="col-xs-11">Username</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbUsername" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
                </div>

                <label class="col-xs-11">First Name</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbFirstName" runat="server" Class="form-control" placeholder="First Name"></asp:TextBox>
                </div>

                <label class="col-xs-11">Last Name</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbLastName" runat="server" Class="form-control" placeholder="Last Name"></asp:TextBox>
                </div>

                <div class="col-xs-11">
                    <%--<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                        Launch demo modal
                    </button>--%>
                    <asp:Button ID="updateInformation" runat="server" Text="Update" OnClick="updateInformation_Click" />
                </div>

                <div class="col-xs-11">
                    <a class="btn btn-large btn-info" href="ChangePassword.aspx">Update Passowrd?</a>
                </div>



                <asp:Label ID="lblMsg" class="col-xs-11" runat="server">HELLLJFDL:KJDL:FSKJL:KSDJFL:KJSDL:FJ:LKF</asp:Label>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <!-- Modal -->
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">Change Password</h4>
                                    </div>
                                    <div class="modal-body">
                                        <label class="col-xs-11">Current Password</label>
                                        <div class="col-xs-11">
                                            <asp:TextBox ID="tbCurrentPassword" runat="server" Class="form-control" placeholder="Current Password" TextMode="Password"></asp:TextBox>

                                            <label class="col-xs-11">Password</label>
                                            <div class="col-xs-11">
                                                <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                            </div>

                                            <label class="col-xs-11">Confirm Password</label>
                                            <div class="col-xs-11">
                                                <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm New Password" TextMode="Password"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">

                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        <%--<button type="button"  class="btn btn-primary">
                                        Save changes</button>--%>
                                        <asp:Button Text="Save" data-dismiss="modal" OnClick="ChangePass" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

            </div>
        </div>
    </form>
    </div>
    </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
