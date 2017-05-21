<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateClass.aspx.cs" Inherits="Teacher_CreateClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Class</title>
     <link href="css/bootstrap.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="center-page">
        

                <label class="col-xs-11">Class Name</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbClassName" runat="server" Class="form-control" placeholder="Class Name"></asp:TextBox>
                </div>

                <div class="col-xs-11">                   
                    <asp:Button ID="updateInformation" runat="server" Text="Update" OnClick="updateInformation_Click" />
                </div>

               </div>
                      
    </form>

     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
