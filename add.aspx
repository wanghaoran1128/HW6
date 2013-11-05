<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="add.aspx.vb" Inherits="add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [bayern] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [bayern] WHERE [Id] = @Id" InsertCommand="INSERT INTO [bayern] ([FirstName], [LastName], [Age], [Country], [Height], [Weight], [Number], [Position], [Marriage], [Education], [Hobbies], [Picture]) VALUES (@FirstName, @LastName, @Age, @Country, @Height, @Weight, @Number, @Position, @Marriage, @Education, @Hobbies, @Picture)" UpdateCommand="UPDATE [bayern] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [Country] = @Country, [Height] = @Height, [Weight] = @Weight, [Number] = @Number, [Position] = @Position, [Marriage] = @Marriage, [Education] = @Education, [Hobbies] = @Hobbies, [Picture] = @Picture WHERE [Id] = @Id">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="125px" DefaultMode="Insert">
        <Fields>
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
            <asp:BoundField DataField="Picture" HeaderText="Picture" SortExpression="Picture" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
    <asp:DataList ID="DataList2" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
             <asp:image ID="Picture" runat="server" ImageURL='<%# Eval("Picture", "~/bayern/{0}")%>' />
        </ItemTemplate>
    </asp:DataList>
    </asp:Content>

