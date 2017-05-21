<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewStudentTests.aspx.cs" Inherits="Teacher_ViewStudentTests" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- Bootstrap -->
    

    <title>View Student Tests</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/teacherBootstrap.css" rel="stylesheet" />

    <!--<style type="text/css"> css is breaking the style sheets css will fix later.
        

* {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
  *,
  *:before,
  *:after {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important;
  }
  *{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*,
    :after,:before{color:#000!important;text-shadow:none!important;background:0 0!important;
                   -webkit-box-shadow:none!important;box-shadow:none!important}

    </style>-->
</head>
<body style="background-color:#413D49">
    <form id="form1" runat="server">
     <!--Start of navbar-->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="TeacherHome.aspx">Economics App</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="RevisionMaterial.aspx">Revision Material <span class="sr-only">(current)</span></a></li>
                        <li><a href="ViewClasses.aspx">Student Quiz Archive</a></li>
                        <li><a href="Glossary.aspx">Glossary</a></li>
                        <li><a href="NewsOutlet.aspx">News Outlets</a></li>
                    </ul>


                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Edit Account</a></li>
                                <li role="separator" class="divider"></li>
                                <li>
                                    <asp:Button ID="btnLogOut" CssClass="btn bnt-default" runat="server" Text="Log Out" OnClick="btnLogOut_Click"></asp:Button></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
        <br />
        <!-- end of navbar-->

            <div class="container">
        <div class="page-header">
	        <h1>View Student Tests</h1>
	     </div>

        <div class="jumbotron">
            <div class="center-page">
                <br />
                <br />

                <div class="col-xs-">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-hover table-striped" CellPadding="4" DataKeyNames="Quiz_Attempt_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Quiz_Attempt_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Quiz_Attempt_ID" />
                            <asp:BoundField DataField="Quiz_ID" HeaderText="Quiz Year" SortExpression="Quiz_ID" />
                            <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" Visible="False" />
                            <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result" />
                            <asp:BoundField DataField="Date" DataFormatString="{0:d}" HeaderText="Date" SortExpression="Date" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </div>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuizAttemptConnectionString %>" SelectCommand="SELECT * FROM [Quiz_Attempt] WHERE ([Student_ID] = @Student_ID)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="20" Name="Student_ID" SessionField="USERID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    



    </div>

     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>

    </form>
</body>
</html>
