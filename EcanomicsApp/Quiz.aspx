<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Quiz.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom-Cs.css" rel="stylesheet"/>

    <title>Quiz</title>


</head>
<body>
    <form id="form1" runat="server">
        <div>

    <div>
        <form>
            <label id ="questionOneLbl">The Question</label>
            <input type="radio" name="q9" value="0"/><label id ="q2a">A. A rise in unemployment</label><br />
            <input type="radio" name="q9" value="25"/><label id ="q2b">B. A cut in income tax rates</label><br />
            <input type="radio" name="q9" value="0"/><label id ="q2c">C. A fall in the exchange rate</label><br />
            <input type="radio" name="q9" value="0"/><label id ="q2d">D. A rise in the rate of Value Added Tax (VAT)</label><br />
        </form>

        <form>
            <label id ="questionTwoLbl">The Question</label>
            <input type="radio" name="q9" value="0"/><label for="q9a">A. A rise in unemployment</label><br />
            <input type="radio" name="q9" value="25"/><label for="q9b">B. A cut in income tax rates</label><br />
            <input type="radio" name="q9" value="0"/><label for="q9c">C. A fall in the exchange rate</label><br />
            <input type="radio" name="q9" value="0"/><label for="q9d">D. A rise in the rate of Value Added Tax (VAT)</label><br />
        </form>

        <form>
            <label id ="questionThreeLbl">The Question</label>
            <input type="radio" name="q9" value="0"/><label for="q9a">A. A rise in unemployment</label><br />
            <input type="radio" name="q9" value="25"/><label for="q9b">B. A cut in income tax rates</label><br />
            <input type="radio" name="q9" value="0"/><label for="q9c">C. A fall in the exchange rate</label><br />
            <input type="radio" name="q9" value="0"/><label for="q9d">D. A rise in the rate of Value Added Tax (VAT)</label><br />
        </form>

        
    </div>

         <asp:Repeater ID="Repeater1" runat="server">
            
                <%--<div class="question"> <input type="radio" name="q8" value="0"><label for="q8d"></label></div>                 
                <div class="answer"><%# DataBinder.Eval(Container.DataItem,"Question") %></div>--%>
                <ItemTemplate>
          <tr>
              <td >
                <%--<div class="question"> <input type="radio" name="q8" value="0"><label for="q8d"></label></div>                 
                --%>
              </td>
              <td>
                  <div class="answer"><%# DataBinder.Eval(Container.DataItem,"Quiz_Question") %></div>
              </td>
          </tr>
          </ItemTemplate>
            
         </asp:Repeater>
        </div>
    </form>

     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
