<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Quiz.aspx.cs" Inherits="Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />

    <title>Quiz</title>

    <script type="text/javascript">
        $(document).ready(function () {


            $("input:radio").click(function () {
                $("input:radio").each(function () {
                    $(this).attr("checked", "")
                });
                $(this).attr("checked", "checked");
            });


        });
    </script>


</head>
<body>
    <form id="form1" runat="server">

        <div id="questionDiv">

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
