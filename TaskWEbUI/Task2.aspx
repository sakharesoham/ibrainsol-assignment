<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task2.aspx.cs" Inherits="TaskWEbUI.Task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="PatID" HeaderText="PatID" SortExpression="PatID" />
                        <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                        <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="apptdate" HeaderText="apptdate" SortExpression="apptdate" />
                    </Columns>
                </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaskConnectionString %>" SelectCommand="select p.PatID,p.firstname,p.lastname,p.gender,a.apptdate from patientinfo$ p
join appointmentinfo$ a on p.PatID=a.patid 
where apptdate &lt;= getdate();
"></asp:SqlDataSource>
            </form>
</body>
</html>
