<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [bayern]"></asp:SqlDataSource>
        <%If Not IsPostBack Then%>
        Search:<asp:TextBox ID="tbSearch1" runat="server"></asp:TextBox>
        <br />
        <%Else%>
        Search:<asp:TextBox ID="tbSearch2" runat="server"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="1286px">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Marriage" HeaderText="Marriage" SortExpression="Marriage" />
                <asp:BoundField DataField="Education" HeaderText="Education" SortExpression="Education" />
                <asp:BoundField DataField="Hobbies" HeaderText="Hobbies" SortExpression="Hobbies" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="details.aspx?Id={0}" Text="Picture" />
            </Columns>
        </asp:GridView>
        <%End If%>
    </p>

    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>

</asp:Content>

