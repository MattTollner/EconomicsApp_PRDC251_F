<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateStudentInformation.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Update Information</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <div class="center-page">

                <label class="col-xs-11">Email</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                </div>

                <label class="col-xs-11">Username</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbUsername" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
                </div>

                <label class="col-xs-11">First Name</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbFirstName" runat="server" Class="form-control" placeholder="First Name"></asp:TextBox>
                </div>

                <label class="col-xs-11">Last Name</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbLastName" runat="server" Class="form-control" placeholder="Last Name"></asp:TextBox>
                </div>

                <div class="col-xs-11">
                    <%--<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                        Launch demo modal
                    </button>--%>
                    <asp:Button ID="updateInformation" runat="server" Text="Update" OnClick="updateInformation_Click" />
                </div>

                <div class="col-xs-11">
                    <a class="btn btn-large btn-info" href="ChangePassword.aspx">Update Passowrd?</a>
                </div>



                <asp:Label ID="lblMsg" class="col-xs-11" runat="server">HELLLJFDL:KJDL:FSKJL:KSDJFL:KJSDL:FJ:LKF</asp:Label>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <!-- Modal -->
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">Change Password</h4>
                                    </div>
                                    <div class="modal-body">
                                        <label class="col-xs-11">Current Password</label>
                                        <div class="col-xs-11">
                                            <asp:TextBox ID="tbCurrentPassword" runat="server" Class="form-control" placeholder="Current Password" TextMode="Password"></asp:TextBox>

                                            <label class="col-xs-11">Password</label>
                                            <div class="col-xs-11">
                                                <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                            </div>

                                            <label class="col-xs-11">Confirm Password</label>
                                            <div class="col-xs-11">
                                                <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm New Password" TextMode="Password"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">

                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        <%--<button type="button"  class="btn btn-primary">
                                        Save changes</button>--%>
                                        <asp:Button Text="Save" data-dismiss="modal" OnClick="ChangePass" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

            </div>
        </div>
    </form>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
