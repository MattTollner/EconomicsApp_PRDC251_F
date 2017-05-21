<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewClass.aspx.cs" Inherits="Teacher_ViewClass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Student_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="451px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField SelectText="View" ShowSelectButton="True" />
                <asp:BoundField DataField="Class_ID" HeaderText="Class_ID" SortExpression="Class_ID" Visible="False" />
                <asp:BoundField DataField="Student_ID" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="Student_ID" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuizAttemptConnectionString %>" SelectCommand="SELECT Class_List.Class_ID, Student.Student_ID, Student.Username, Student.FirstName, Student.LastName, Student.Email FROM Class_List INNER JOIN Student ON Class_List.Student_ID = Student.Student_ID WHERE (Class_List.Class_ID = @Quiz_ID)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="2" Name="Quiz_ID" SessionField="CLASSID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
</body>
</html>
