<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Quiz.aspx.cs" Inherits="Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />

    <title>Quiz</title>


</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div id="questionDiv">

                 <form>
                    <asp:Label ID="question1" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q1RD1" value ="0" runat="server" /><asp:Label ID="q1a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q1RD2" value ="0" runat="server" /><asp:Label ID="q1b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q1RD3" value ="0" runat="server" /><asp:Label ID="q1c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q1RD4" value ="0" runat="server" /><asp:Label ID="q1d" runat="server" Text="Label"></asp:Label><br />
                     <br />
                    <br />
                </form>


                <form>
                    <asp:Label ID="question2" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q2RD1" value ="0" runat="server" /><asp:Label ID="q2a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q2RD2" value ="0" runat="server" /><asp:Label ID="q2b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q2RD3" value ="0" runat="server" /><asp:Label ID="q2c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q2RD4" value ="0" runat="server" /><asp:Label ID="q2d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question3" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q3RD1" value ="0" runat="server" /><asp:Label ID="q3a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q3RD2" value ="0" runat="server" /><asp:Label ID="q3b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q3RD3" value ="0" runat="server" /><asp:Label ID="q3c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q3RD4" value ="0" runat="server" /><asp:Label ID="q3d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question4" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q4RD1" value ="0" runat="server" /><asp:Label ID="q4a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q4RD2" value ="0" runat="server" /><asp:Label ID="q4b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q4RD3" value ="0" runat="server" /><asp:Label ID="q4c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q4RD4" value ="0" runat="server" /><asp:Label ID="q4d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question5" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q5RD1" value ="0" runat="server" /><asp:Label ID="q5a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q5RD2" value ="0" runat="server" /><asp:Label ID="q5b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q5RD3" value ="0" runat="server" /><asp:Label ID="q5c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q5RD4" value ="0" runat="server" /><asp:Label ID="q5d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question6" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q6RD1" value ="0" runat="server" /><asp:Label ID="q6a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q6RD2" value ="0" runat="server" /><asp:Label ID="q6b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q6RD3" value ="0" runat="server" /><asp:Label ID="q6c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q6RD4" value ="0" runat="server" /><asp:Label ID="q6d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question7" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q7RD1" value ="0" runat="server" /><asp:Label ID="q7a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q7RD2" value ="0" runat="server" /><asp:Label ID="q7b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q7RD3" value ="0" runat="server" /><asp:Label ID="q7c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q7RD4" value ="0" runat="server" /><asp:Label ID="q7d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question8" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q8RD1" value ="0" runat="server" /><asp:Label ID="q8a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q8RD2" value ="0" runat="server" /><asp:Label ID="q8b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q8RD3" value ="0" runat="server" /><asp:Label ID="q8c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q8RD4" value ="0" runat="server" /><asp:Label ID="q8d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question9" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q9RD1" value ="0" runat="server" /><asp:Label ID="q9a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q9RD2" value ="0" runat="server" /><asp:Label ID="q9b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q9RD3" value ="0" runat="server" /><asp:Label ID="q9c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q9RD4" value ="0" runat="server" /><asp:Label ID="q9d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question10" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q10RD1" value ="0" runat="server" /><asp:Label ID="q10a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q10RD2" value ="0" runat="server" /><asp:Label ID="q10b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q10RD3" value ="0" runat="server" /><asp:Label ID="q10c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q10RD4" value ="0" runat="server" /><asp:Label ID="q10d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>








            </div>

        </div>
    </form>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
