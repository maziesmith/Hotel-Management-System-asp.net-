<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration_grid.aspx.cs" Inherits="Hotel_Management.Gridview.Registration_grid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <form id="form1" runat="server">


        <asp:TextBox ID="TextBox1" runat="server" Width="194px"></asp:TextBox>
        <asp:Button ID="search" runat="server" Text="Search" Width="91px" />


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="347px" Width="602px" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" ReadOnly="True" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hotel_Client_Management_systemConnectionString %>" DeleteCommand="DELETE FROM [registration] WHERE [id] = @id" InsertCommand="INSERT INTO [registration] ([id], [name], [email], [address], [phone], [password], [author]) VALUES (@id, @name, @email, @address, @phone, @password, @author)" SelectCommand="SELECT * FROM [registration] WHERE ([name] LIKE '%' + @name + '%') ORDER BY [id]" UpdateCommand="UPDATE [registration] SET [name] = @name, [email] = @email, [address] = @address, [phone] = @phone, [password] = @password, [author] = @author WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="phone" Type="Int32" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="author" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="phone" Type="Int32" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</form>
</asp:Content>
