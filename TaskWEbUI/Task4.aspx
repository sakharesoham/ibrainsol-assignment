<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task4.aspx.cs" Inherits="TaskWEbUI.Task4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaskConnectionString %>" SelectCommand="SELECT t.proceduretype, cl.clinicname AS Clinic, YEAR(ap.apptdate) AS Year, DATENAME(MONTH,ap.apptdate) AS Month, SUM(t.amount) AS Amount
FROM transactioninfo$ t
JOIN clinicinfo$ cl ON t.clinicid = cl.clinicid
JOIN appointmentinfo$ ap ON cl.clinicid = ap.clinicid
GROUP BY proceduretype, cl.clinicname, YEAR(ap.apptdate), DATENAME(MONTH,ap.apptdate);
"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="proceduretype" HeaderText="proceduretype" SortExpression="proceduretype" />
                <asp:BoundField DataField="Clinic" HeaderText="Clinic" SortExpression="Clinic" />
                <asp:BoundField DataField="Year" HeaderText="Year" ReadOnly="True" SortExpression="Year" />
                <asp:BoundField DataField="Month" HeaderText="Month" ReadOnly="True" SortExpression="Month" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" ReadOnly="True" SortExpression="Amount" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
