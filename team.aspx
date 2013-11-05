<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="team.aspx.vb" Inherits="team" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([FirstName], [LastName], [Age], [Country], [Height], [Weight], [Number], [Position], [Marriage], [Education], [Hobbies], [Picture]) VALUES (@FirstName, @LastName, @Age, @Country, @Height, @Weight, @Number, @Position, @Marriage, @Education, @Hobbies, @Picture)" UpdateCommand="UPDATE [Table] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [Country] = @Country, [Height] = @Height, [Weight] = @Weight, [Number] = @Number, [Position] = @Position, [Marriage] = @Marriage, [Education] = @Education, [Hobbies] = @Hobbies, [Picture] = @Picture WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Height" Type="String" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="Number" Type="Int32" />
            <asp:Parameter Name="Position" Type="String" />
            <asp:Parameter Name="Marriage" Type="String" />
            <asp:Parameter Name="Education" Type="String" />
            <asp:Parameter Name="Hobbies" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Height" Type="String" />
            <asp:Parameter Name="Weight" Type="String" />
            <asp:Parameter Name="Number" Type="Int32" />
            <asp:Parameter Name="Position" Type="String" />
            <asp:Parameter Name="Marriage" Type="String" />
            <asp:Parameter Name="Education" Type="String" />
            <asp:Parameter Name="Hobbies" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="details.aspx?Id={0}" Text="View" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    </asp:Content>

