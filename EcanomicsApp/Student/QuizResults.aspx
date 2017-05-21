<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuizResults.aspx.cs" Inherits="QuizResults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

     
    <title>Quiz Results</title>
      <link href="css/bootstrap.min.css" rel="stylesheet" />
      <link href="css/bootstrap.css" rel="stylesheet"/>

</head>
<body style="background-color: #2B3A42">
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

        <div>
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="ScoreID" runat="server" Text="Result 1/10"></asp:Label><br /><br />
            <div id="question1Div">
                <asp:Label ID="quesiton1" runat="server" Text="Label"></asp:Label><br />
                <br />
                <asp:Label ID="uAnswer1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="answer1" runat="server" Text="Label"></asp:Label>
                <br /><br />
            </div>

            <div id="question2Div">
                <asp:Label ID="quesiton2" runat="server" Text="Label"></asp:Label><br />
                <br />
                <asp:Label ID="uAnswer2" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="answer2" runat="server" Text="Label"></asp:Label>
                <br /><br />
            </div>

            <div id="question3Div">
                <asp:Label ID="quesiton3" runat="server" Text="Label"></asp:Label><br />
                <br />
                <asp:Label ID="uAnswer3" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="answer3" runat="server" Text="Label"></asp:Label>
                <br /><br />
            </div>

            <div id="question4Div">
                <asp:Label ID="quesiton4" runat="server" Text="Label"></asp:Label><br />
                <br />
                <asp:Label ID="uAnswer4" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="answer4" runat="server" Text="Label"></asp:Label>
                <br /><br />
            </div>

            <div id="question5Div">
                <asp:Label ID="quesiton5" runat="server" Text="Label"></asp:Label><br />
                <br />
                <asp:Label ID="uAnswer5" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="answer5" runat="server" Text="Label"></asp:Label>
                <br /><br />
            </div>

            <div id="question6Div">
                <asp:Label ID="quesiton6" runat="server" Text="Label"></asp:Label><br />
                <br />
                <asp:Label ID="uAnswer6" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="answer6" runat="server" Text="Label"></asp:Label>
                <br /><br />
            </div>

            <div id="question7Div">
                <asp:Label ID="quesiton7" runat="server" Text="Label"></asp:Label><br />
                <br />
                <asp:Label ID="uAnswer7" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="answer7" runat="server" Text="Label"></asp:Label>
                <br /><br />
            </div>

            <div id="question8Div">
                <asp:Label ID="quesiton8" runat="server" Text="Label"></asp:Label><br />
                <br />
                <asp:Label ID="uAnswer8" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="answer8" runat="server" Text="Label"></asp:Label>
                <br /><br />
            </div>

            <div id="question9Div">
                <asp:Label ID="quesiton9" runat="server" Text="Label"></asp:Label><br />
                <br />
                <asp:Label ID="uAnswer9" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="answer9" runat="server" Text="Label"></asp:Label>
                <br /><br />
            </div>

            <div id="question10Div">
                <asp:Label ID="quesiton10" runat="server" Text="Label"></asp:Label><br />
                <br />
                <asp:Label ID="uAnswer10" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="answer10" runat="server" Text="Label"></asp:Label>
                <br /><br />
            </div>

        </div>
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
