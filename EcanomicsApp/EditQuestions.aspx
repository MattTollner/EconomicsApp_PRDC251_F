﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditQuestions.aspx.cs" Inherits="EditQuestions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="form-horizontal">
            <div class="page-header">
                <h1>Edit Question</h1>             
        </div>

           

            <label class="col-xs-11"><h5 style="color:#ACCFCC;">Question</h5></label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbQuestion" runat="server" Class ="form-control" placeholder="Question" TextMode="Email"></asp:TextBox>          
            </div>

            <label class="col-xs-11"><h5 style="color:#ACCFCC;"> Answer </h5></label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbAnswer" runat="server" Class ="form-control" placeholder="Answer"></asp:TextBox>
            </div>

            <label class="col-xs-11"><h5 style="color:#ACCFCC;"> Dummy Answer 1 </h5></label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbDummy1" runat="server" Class ="form-control" placeholder="Dummy Answer"></asp:TextBox>
            </div>

            <label class="col-xs-11"><h5 style="color:#ACCFCC;"> Dummy Answer 2 </h5></label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbDummy2" runat="server" Class ="form-control" placeholder="Dummy Answer"></asp:TextBox>
            </div>

            <label class="col-xs-11"><h5 style="color:#ACCFCC;"> Dummy Answer 3 </h5></label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbDummy3" runat="server" Class ="form-control" placeholder="Dummy Answer"></asp:TextBox>
            </div>            
             
    </form>
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
</body>
</html>
