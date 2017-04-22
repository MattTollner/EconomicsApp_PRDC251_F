<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom-Cs.css" rel="stylesheet"/>

    <title>Change Password</title>


</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="center-page">          
           
            <label class="col-xs-11">Current Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbCurrentPassword" runat="server" Class ="form-control" placeholder="Email" TextMode="Password"></asp:TextBox>          
            </div>         

            <label class="col-xs-11">Password</label>
                <div class="col-xs-11">
                <asp:TextBox ID="tbPass" runat="server" Class ="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Confirm Password</label>
                <div class="col-xs-11">
                <asp:TextBox ID="tbCPass" runat="server" Class ="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>          
            </div>  
                  
            <div class="col-xs-11 space-vert">
                <%--<asp:Button ID="btnChangePassword3" runat="server" Class="btn-success" Text="Change Password" OnClick="btnSignUp_Click" />--%>
                <asp:Button ID="btnChangePass" runat="server" OnClick="btnChangePass_Click" Text="Change Password" />

                <asp:Label ID="lblMsg" runat="server"></asp:Label>
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
