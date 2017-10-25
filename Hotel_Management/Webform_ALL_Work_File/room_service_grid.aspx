<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="room_service_grid.aspx.cs" Inherits="Hotel_Management.Gridview.room_service_grid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server" Width="215px"></asp:TextBox>
        <asp:Button ID="search" runat="server" Text="Search" Width="105px" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="roomnoID" DataSourceID="SqlDataSource1" ForeColor="Black" Width="642px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="roomnoID" HeaderText="roomnoID" ReadOnly="True" SortExpression="roomnoID" />
            <asp:BoundField DataField="roomno" HeaderText="roomno" SortExpression="roomno" />
            <asp:BoundField DataField="roomtype" HeaderText="roomtype" SortExpression="roomtype" />
            <asp:BoundField DataField="roomquantity" HeaderText="roomquantity" SortExpression="roomquantity" />
            <asp:BoundField DataField="comingdate" HeaderText="comingdate" SortExpression="comingdate" />
            <asp:BoundField DataField="realeasedate" HeaderText="realeasedate" SortExpression="realeasedate" />
            <asp:BoundField DataField="quantityofdate" HeaderText="quantityofdate" SortExpression="quantityofdate" />
            <asp:BoundField DataField="quantityofpeople" HeaderText="quantityofpeople" SortExpression="quantityofpeople" />
            <asp:BoundField DataField="gmail_transectionno" HeaderText="gmail_transectionno" SortExpression="gmail_transectionno" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hotel_Client_Management_systemConnectionString %>" DeleteCommand="DELETE FROM [roomservice] WHERE [roomnoID] = @roomnoID" InsertCommand="INSERT INTO [roomservice] ([roomnoID], [roomno], [roomtype], [roomquantity], [comingdate], [realeasedate], [quantityofdate], [quantityofpeople], [gmail_transectionno]) VALUES (@roomnoID, @roomno, @roomtype, @roomquantity, @comingdate, @realeasedate, @quantityofdate, @quantityofpeople, @gmail_transectionno)" SelectCommand="SELECT * FROM [roomservice] WHERE ([roomno] LIKE '%' + @roomno + '%') ORDER BY [roomnoID]" UpdateCommand="UPDATE [roomservice] SET [roomno] = @roomno, [roomtype] = @roomtype, [roomquantity] = @roomquantity, [comingdate] = @comingdate, [realeasedate] = @realeasedate, [quantityofdate] = @quantityofdate, [quantityofpeople] = @quantityofpeople, [gmail_transectionno] = @gmail_transectionno WHERE [roomnoID] = @roomnoID">
        <DeleteParameters>
            <asp:Parameter Name="roomnoID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="roomnoID" Type="String" />
            <asp:Parameter Name="roomno" Type="String" />
            <asp:Parameter Name="roomtype" Type="String" />
            <asp:Parameter Name="roomquantity" Type="Int32" />
            <asp:Parameter Name="comingdate" DbType="Date" />
            <asp:Parameter Name="realeasedate" DbType="Date" />
            <asp:Parameter Name="quantityofdate" Type="Int32" />
            <asp:Parameter Name="quantityofpeople" Type="Int32" />
            <asp:Parameter Name="gmail_transectionno" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="roomno" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="roomno" Type="String" />
            <asp:Parameter Name="roomtype" Type="String" />
            <asp:Parameter Name="roomquantity" Type="Int32" />
            <asp:Parameter Name="comingdate" DbType="Date" />
            <asp:Parameter Name="realeasedate" DbType="Date" />
            <asp:Parameter Name="quantityofdate" Type="Int32" />
            <asp:Parameter Name="quantityofpeople" Type="Int32" />
            <asp:Parameter Name="gmail_transectionno" Type="Int32" />
            <asp:Parameter Name="roomnoID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</form>
</asp:Content>
