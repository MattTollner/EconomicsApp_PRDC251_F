<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TempQuizPage.aspx.cs" Inherits="TempQuizPage" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <script src="js/Quiz.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Economics App</title>
    <style>
        #main {
            width: 80%;
            max-width: 950px;
            border: 1px gray solid;
            margin: auto;
            padding: 10px;
            background-color: white;
            border-radius: 10px;
        }

        #header {
            margin-top: 0;
            border: 2px solid black;
            padding: 5px;
            height: 250px;
            background: beige;
            background-image: url("");
            color: white;
        }
        label {
            color: white;
        }

        p {
            color: wheat;
        }
    </style>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <div class="container">
        <div class="row">
        </div>
    </div>
</head>
<body style="background-color: #2B3A42" >
    <div class="container">
        <ul class="list-inline">
            <li><a href="Home.html">Home</a></li>
            <li><a href="RevisionMaterial.html">Revision Material</a></li>
            <li><a href="Quiz.html">Quiz</a></li>
            <li><a href="#">Quiz Archive</a></li>
            <li><a href="Glossary.html">Glossary</a></li>
            <li><a href="NewsOutlet.html">News Outlets</a></li>
            <li style="float: right"><a href="#">Account Details</a></li>
        </ul>

        <div class="page-header">
            <h1>Quiz</h1>
        </div>

        <p><b>Question:</b> Which one of the following is an example of an contractionary fiscal policy designed to reduce inflationary pressures?</p>

        <form action="">
            <input type="radio" name="q1" value="0" id="q1a"><label for="q1a">A. Higher interest rates</label><br>
            <input type="radio" name="q1" value="25" id="q1b"><label for="q1b">B. An increase in the government budget surplus</label><br>
            <input type="radio" name="q1" value="0" id="q1c"><label for="q1c">C. A reduction in the exchange rate</label><br>
            <input type="radio" name="q1" value="0" id="q1d"><label for="q1d">D. A reduction in the supply of money to banks for lending purposes</label><br>
        </form>

        <form action="">
            <p><b>Question:</b>Starting from an initial position of equilibrium on a vertical long-run aggregate supply curve, a reduction in the level of aggregate demand will lead to a new long-run equilibrium position with a lower</p>
            <input type="radio" name="q2" value="0" id="q2a"><label for="q2a">A. Level of output.</label><br>
            <input type="radio" name="q2" value="25" id="q2b"><label for="q2b">B. Price level.</label><br>
            <input type="radio" name="q2" value="0" id="q2c"><label for="q2c">C. Level of real income.</label><br>
            <input type="radio" name="q2" value="0" id="q2d"><label for="q2d">D. Employment level.</label><br>
        </form>

        <form action="">
            <p><b>Question:</b>The annual rate of inflation in an economy falls from 5 per cent to 2 per cent but the annual rate of inflation of its main trading partners remains at 5 per cent. As a result, all other things being equal, it is likely that in the long term for this economy</p>
            <input type="radio" name="q3" value="0" id="q3a"><label for="q3a">A. Withdrawals from the circular flow of income will increase.</label><br>
            <input type="radio" name="q3" value="25" id="q3b"><label for="q3b">B. Exports will increase.</label><br>
            <input type="radio" name="q3" value="0" id="q3c"><label for="q3c">C. Imports will increase.</label><br>
            <input type="radio" name="q3" value="0" id="q3d"><label for="q3d">D. The current account balance will deteriorate.</label><br>
        </form>

        <form action="">
            <p><b>Question:</b>All other things being equal, a significant cut in the rate of tax on a company’s profits is most likely to</p>
            <input type="radio" name="q4" value="0" id="q4a"><label for="q4a">A. Increase long-run aggregate supply but not aggregate demand.</label><br>
            <input type="radio" name="q4" value="0" id="q4b"><label for="q4b">B. Increase neither aggregate demand nor long-run aggregate supply.</label><br>
            <input type="radio" name="q4" value="25" id="q4c"><label for="q4c">C. Increase both aggregate demand and long-run aggregate supply.</label><br>
            <input type="radio" name="q4" value="0" id="q4d"><label for="q4d">D. Increase aggregate demand but not long-run aggregate supply.</label><br>
        </form>

        <form action="">
            <p><b>Question:</b>All other things being equal, when an increase in exports leads to a larger increase in national income, this illustrates</p>
            <input type="radio" name="q5" value="0"><label for="q5a">A. An increase in long-run aggregate supply.</label><br>
            <input type="radio" name="q5" value="25"><label for="q5b">B. The operation of the multiplier.</label><br>
            <input type="radio" name="q5" value="0"><label for="q5c">C. An improvement in the balance of payments.</label><br>
            <input type="radio" name="q5" value="0"><label for="q5d">D. Demand-pull inflation.</label><br>
        </form>

        <form action="">
            <p>
                <b>Question:</b>
            <p>The diagram below shows two aggregate demand (AD) curves and the short-run aggregate supply (SRAS) curve for an economy</p>
            <p>The shift in the aggregate demand curve from AD1 to AD2 could have been caused by a decrease in</p>
            <input type="radio" name="q6" value="25"><label for="q6a">A. The government budget deficit.</label><br>
            <input type="radio" name="q6" value="0"><label for="q6b">B. Household savings.</label><br>
            <input type="radio" name="q6" value="0"><label for="q6c">C. Labour productivity.</label><br>
            <input type="radio" name="q6" value="0"><label for="q6d">D. Imports.</label><br>
        </form>

        <form action="">
            <p><b>Question:</b>All other things being equal, a large increase in interest rates in the UK is most likely to</p>
            <input type="radio" name="q7" value="0"><label for="q7a">A. Increase aggregate investment.</label><br>
            <input type="radio" name="q7" value="0"><label for="q7b">B. Decrease the size of the government budget deficit.</label><br>
            <input type="radio" name="q7" value="25"><label for="q7c">C. Decrease house prices.</label><br>
            <input type="radio" name="q7" value="0"><label for="q7d">D. Lead to an increase in bank lending</label><br>
        </form>

        <form action="">
            <p><b>Question:</b>A country is experiencing a balance of payments surplus but growing inflationary pressures. Which one of the following measures is most likely to reduce both a balance of payments surplus on the current account and the inflation rate?</p>
            <input type="radio" name="q8" value="25"><label for="q8a">A. An appreciation of the exchange rate</label><br>
            <input type="radio" name="q8" value="0"><label for="q8b">B. A rise in the budget deficit</label><br>
            <input type="radio" name="q8" value="0"><label for="q8c">C. An appreciation of the exchange rate</label><br>
            <input type="radio" name="q8" value="0"><label for="q8d">D. A cut in interest rates</label><br>
        </form>

        <form action="">
            <p><b>Question:</b>Which one of the following is most likely to lead to an increase in spending on imports?</p>
            <input type="radio" name="q9" value="0"><label for="q9a">A. A rise in unemployment</label><br>
            <input type="radio" name="q9" value="25"><label for="q9b">B. A cut in income tax rates</label><br>
            <input type="radio" name="q9" value="0"><label for="q9c">C. A fall in the exchange rate</label><br>
            <input type="radio" name="q9" value="0"><label for="q9d">D. A rise in the rate of Value Added Tax (VAT)</label><br>
        </form>

        <form action="">
            <p><b>Question:</b>All other things being equal, a large increase in interest rates in the UK is most likely to</p>
            <input type="radio" name="q10" value="0"><label for="q10a">A. Assuming constant money incomes, real income has risen.</label><br>
            <input type="radio" name="q11" value="0"><label for="q10b">B. The purchasing power of money has increased.</label><br>
            <input type="radio" name="q12" value="0"><label for="q10c">C. Prices of goods and services have fallen.</label><br>
            <input type="radio" name="q13" value="25"><label for="q10c">D. The average price level has risen.</label><br>
        </form>

        <br>
        <button type="button" id="results">
            Check Score > 
        </button>


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        </form>

</body>
</html>
