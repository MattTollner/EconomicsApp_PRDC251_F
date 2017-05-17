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
                    <asp:RadioButton ID="Q1RDa" value ="0" runat="server" /><asp:Label ID="q1a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q1RDb" value ="0" runat="server" /><asp:Label ID="q1b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q1RDc" value ="0" runat="server" /><asp:Label ID="q1c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q1RDd" value ="0" runat="server" /><asp:Label ID="q1d" runat="server" Text="Label"></asp:Label><br />
                     <br />
                    <br />
                </form>


                <form>
                    <asp:Label ID="question2" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q2RDa" value ="0" runat="server" /><asp:Label ID="q2a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q2RDb" value ="0" runat="server" /><asp:Label ID="q2b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q2RDc" value ="0" runat="server" /><asp:Label ID="q2c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q2RDd" value ="0" runat="server" /><asp:Label ID="q2d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question3" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q3RDa" value ="0" runat="server" /><asp:Label ID="q3a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q3RDb" value ="0" runat="server" /><asp:Label ID="q3b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q3RDc" value ="0" runat="server" /><asp:Label ID="q3c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q3RDd" value ="0" runat="server" /><asp:Label ID="q3d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question4" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q4RDa" value ="0" runat="server" /><asp:Label ID="q4a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q4RDb" value ="0" runat="server" /><asp:Label ID="q4b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q4RDc" value ="0" runat="server" /><asp:Label ID="q4c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q4RDd" value ="0" runat="server" /><asp:Label ID="q4d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question5" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q5RDa" value ="0" runat="server" /><asp:Label ID="q5a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q5RDb" value ="0" runat="server" /><asp:Label ID="q5b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q5RDc" value ="0" runat="server" /><asp:Label ID="q5c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q5RDd" value ="0" runat="server" /><asp:Label ID="q5d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question6" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q6RDa" value ="0" runat="server" /><asp:Label ID="q6a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q6RDb" value ="0" runat="server" /><asp:Label ID="q6b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q6RDc" value ="0" runat="server" /><asp:Label ID="q6c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q6RDd" value ="0" runat="server" /><asp:Label ID="q6d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question7" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q7RDa" value ="0" runat="server" /><asp:Label ID="q7a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q7RDb" value ="0" runat="server" /><asp:Label ID="q7b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q7RDc" value ="0" runat="server" /><asp:Label ID="q7c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q7RDd" value ="0" runat="server" /><asp:Label ID="q7d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question8" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q8RDa" value ="0" runat="server" /><asp:Label ID="q8a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q8RDb" value ="0" runat="server" /><asp:Label ID="q8b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q8RDc" value ="0" runat="server" /><asp:Label ID="q8c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q8RDd" value ="0" runat="server" /><asp:Label ID="q8d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question9" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q9RDa" value ="0" runat="server" /><asp:Label ID="q9a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q9RDb" value ="0" runat="server" /><asp:Label ID="q9b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q9RDc" value ="0" runat="server" /><asp:Label ID="q9c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q9RDd" value ="0" runat="server" /><asp:Label ID="q9d" runat="server" Text="Label"></asp:Label><br />
                    <br />
                    <br />
                </form>

                <form>
                    <asp:Label ID="question10" runat="server" Text="Label"></asp:Label> <br />
                    <asp:RadioButton ID="Q10RDa" value ="0" runat="server" /><asp:Label ID="q10a" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q10RDb" value ="0" runat="server" /><asp:Label ID="q10b" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q10RDc" value ="0" runat="server" /><asp:Label ID="q10c" runat="server" Text="Label"></asp:Label><br />
                    <asp:RadioButton ID="Q10RDd" value ="0" runat="server" /><asp:Label ID="q10d" runat="server" Text="Label"></asp:Label><br />
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
