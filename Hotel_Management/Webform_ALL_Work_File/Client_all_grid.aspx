<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Client_all_grid.aspx.cs" Inherits="Hotel_Management.Webform_ALL_Work_File.Client_all_grid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div style="text-align: left">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id,TransectionID,roomnoID" DataSourceID="SqlDataSource1" ForeColor="Black" style="margin-left: 0px">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                    <asp:BoundField DataField="TransectionID" HeaderText="TransectionID" ReadOnly="True" SortExpression="TransectionID" />
                    <asp:BoundField DataField="rent" HeaderText="rent" SortExpression="rent" />
                    <asp:BoundField DataField="transectionno" HeaderText="transectionno" SortExpression="transectionno" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Hotel_Client_Management_systemConnectionString %>" SelectCommand="SELECT registration.*, rent_transection.TransectionID, rent_transection.rent, rent_transection.transectionno, roomservice.* FROM registration CROSS JOIN rent_transection CROSS JOIN roomservice"></asp:SqlDataSource>
        </div>
    </form>
</asp:Content>
