<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TaskWEbUI._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="clinicid" HeaderText="clinicid" SortExpression="clinicid" />
            <asp:BoundField DataField="Column1" HeaderText="Column1" ReadOnly="True" SortExpression="Column1" />
            <asp:BoundField DataField="Column2" HeaderText="Column2" ReadOnly="True" SortExpression="Column2" />
            <asp:BoundField DataField="Column3" HeaderText="Column3" ReadOnly="True" SortExpression="Column3" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TaskConnectionString %>" SelectCommand="SELECT clinicid,YEAR(a.apptdate),DATENAME(MONTH,a.apptdate), COUNT(*) FROM appointmentinfo$ a
GROUP BY clinicid,YEAR(a.apptdate),DATENAME(MONTH,a.apptdate);
"></asp:SqlDataSource>
    

</asp:Content>
