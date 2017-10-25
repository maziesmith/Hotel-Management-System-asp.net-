<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rent_randomnumber_grid.aspx.cs" Inherits="Hotel_Management.Gridview.Rent_randomnumber_grid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server" Width="201px"></asp:TextBox>
        <asp:Button ID="search" runat="server" Text="Search" Width="86px" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="TransectionID" DataSourceID="SqlDataSource1" ForeColor="Black" Width="660px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TransectionID" HeaderText="TransectionID" SortExpression="TransectionID" ReadOnly="True" />
            <asp:BoundField DataField="gmail" HeaderText="gmail" SortExpression="gmail" />
            <asp:BoundField DataField="rent" HeaderText="rent" SortExpression="rent" />
            <asp:BoundField DataField="transectionno" HeaderText="transectionno" SortExpression="transectionno" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hotel_Client_Management_systemConnectionString %>" DeleteCommand="DELETE FROM [rent_transection] WHERE [TransectionID] = @TransectionID" InsertCommand="INSERT INTO [rent_transection] ([TransectionID], [gmail], [rent], [transectionno]) VALUES (@TransectionID, @gmail, @rent, @transectionno)" SelectCommand="SELECT * FROM [rent_transection] WHERE ([gmail] LIKE '%' + @gmail + '%')" UpdateCommand="UPDATE [rent_transection] SET [gmail] = @gmail, [rent] = @rent, [transectionno] = @transectionno WHERE [TransectionID] = @TransectionID">
        <DeleteParameters>
            <asp:Parameter Name="TransectionID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TransectionID" Type="String" />
            <asp:Parameter Name="gmail" Type="String" />
            <asp:Parameter Name="rent" Type="Double" />
            <asp:Parameter Name="transectionno" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="gmail" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="gmail" Type="String" />
            <asp:Parameter Name="rent" Type="Double" />
            <asp:Parameter Name="transectionno" Type="Int32" />
            <asp:Parameter Name="TransectionID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</form>
</asp:Content>
