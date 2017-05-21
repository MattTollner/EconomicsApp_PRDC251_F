<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuizArchive.aspx.cs" Inherits="Student_QuizArchive" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Quiz_Attempt_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Quiz_Attempt_ID" HeaderText="Quiz_Attempt_ID" InsertVisible="False" ReadOnly="True" SortExpression="Quiz_Attempt_ID" />
                    <asp:BoundField DataField="Quiz_ID" HeaderText="Quiz_ID" SortExpression="Quiz_ID" />
                    <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" />
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

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuizAttemptConnectionString %>" SelectCommand="SELECT * FROM [Quiz_Attempt] WHERE ([Student_ID] = @Student_ID)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="20" Name="Student_ID" SessionField="USERID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>

    </body>
</html>
