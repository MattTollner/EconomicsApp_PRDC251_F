<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Quiz.aspx.cs" Inherits="Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

  <title>Quiz</title>    

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <link href="css/bootstrap.csss" rel="stylesheet" />

  
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


        <div id="questionDiv">
            <br />
            <br />

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />


            <asp:Label ID="question1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" EnableViewState="true" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
            </asp:RadioButtonList>

            <br />
            <br />


            <asp:Label ID="question2" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList2" EnableViewState="true" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
            </asp:RadioButtonList>

            <br />
            <br />


            <asp:Label ID="question3" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
            </asp:RadioButtonList>

            <br />
            <br />


            <asp:Label ID="question4" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
            </asp:RadioButtonList>

            <br />
            <br />


            <asp:Label ID="question5" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
            </asp:RadioButtonList>

            <br />
            <br />


            <asp:Label ID="question6" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
            </asp:RadioButtonList>

            <br />
            <br />


            <asp:Label ID="question7" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
            </asp:RadioButtonList>

            <br />
            <br />


            <asp:Label ID="question8" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
            </asp:RadioButtonList>

            <br />
            <br />



            <asp:Label ID="question9" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
            </asp:RadioButtonList>

            <br />
            <br />


            <asp:Label ID="question10" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
            </asp:RadioButtonList>

            <br />
            <br />


            <asp:Label ID="question11" runat="server" Text="Quwstion 9"></asp:Label>
            <br />
            <asp:RadioButtonList ID="RadioButtonList11" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
            </asp:RadioButtonList>

            <br />
            <br />


        </div>


    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
