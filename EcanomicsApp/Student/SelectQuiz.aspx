<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="SelectQuiz.aspx.cs" Inherits="SelectQuiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="page-header">
                    <h1>Select Quiz</h1>
                </div>

                <div class="jumbotron">
                    <div class="row">                       

	                    <div class="btn-group-vertical">	                        
                            <asp:Button ID="asLevelQuiz" class="btn btn-default btn-lg" runat="server" Text="Button" OnClick="asLevelQuiz_Click" />
                            <asp:Button ID="aLevelQuiz" class="btn btn-default btn-lg" runat="server" Text="Button" OnClick="aLevelQuiz_Click" />
	                    </div>                        
                    </div>
                </div>
            </div>
        </div>
    </form>

    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
