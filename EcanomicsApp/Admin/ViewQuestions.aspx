<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewQuestions.aspx.cs" Inherits="ViewQuestions" %>

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
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="table table-striped table-bordered table-hover" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Question_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField SelectText="View" ShowSelectButton="True" />
                <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
                <asp:BoundField DataField="Question_ID" HeaderText="Question_ID" SortExpression="Question_ID" InsertVisible="False" ReadOnly="True" />
                <asp:CommandField ShowDeleteButton="True" />
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

        <div>
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        </div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuizAttemptConnectionString %>" SelectCommand="SELECT Questions.Question, Answers.Answer, Questions.Question_ID FROM Questions INNER JOIN Answers ON Questions.Question_ID = Answers.Question_ID" DeleteCommand="DELETE FROM Questions FROM Questions INNER JOIN [Dummy] ON Questions.Question_ID = [Dummy].Question_ID INNER JOIN Answers ON Questions.Question_ID = Answers.Question_ID WHERE (Questions.Question_ID = @Question_ID)">
            <DeleteParameters>
                <asp:Parameter Name="Question_ID" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </form>

     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
</body>
</html>
