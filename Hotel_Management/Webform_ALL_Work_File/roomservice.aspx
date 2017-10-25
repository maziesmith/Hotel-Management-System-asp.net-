<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="roomservice.aspx.cs" Inherits="Hotel_Management.Webform_ALL_Work_File.roomservice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Room Service</h1>
    <p>&nbsp;</p>
    <form id="form1" runat="server">
    <table class="style1" style="height: 498px">
        <tr>
            <td class="style3" style="font-size: medium">Room Number ID:</td>
            <td style="width: 405px; font-size: medium;">
                <asp:TextBox ID="roomnoid" runat="server" Width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" style="font-size: medium">Room Number :</td>
            <td style="width: 405px">
                <asp:TextBox ID="Roomnumber" runat="server" Width="210px" style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="font-size: medium">Room Type :</td>
            <td class="style2" style="width: 405px">
                <asp:RadioButtonList ID="Roomtype" runat="server" Width="205px">
                    <asp:ListItem>AC</asp:ListItem>
                    <asp:ListItem>Non-AC</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style3" style="font-size: medium">Room Quantity :</td>
            <td style="width: 405px">
                <asp:TextBox ID="RoomQuantity" runat="server" Width="210px" style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" style="font-size: medium">Coming Date :</td>
            <td style="width: 405px">
                <asp:TextBox ID="Codate" runat="server" Width="207px"></asp:TextBox>
                <asp:Button ID="Comingdate" runat="server" OnClick="Comingdate_Click" Text="Date" Width="92px" />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style3" style="font-size: medium">Realease Date :</td>
            <td style="width: 405px">
                <asp:TextBox ID="Redate" runat="server" Width="211px"></asp:TextBox>
                <asp:Button ID="Rdate" runat="server" OnClick="Rdate_Click" Text="Date" Width="97px" />
                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style3" style="font-size: medium">Quantity of Date :</td>
            <td style="width: 405px">
                <asp:TextBox ID="Quantityofdate" runat="server" Width="210px" style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" style="font-size: medium">Quantity of People :</td>
            <td style="width: 405px">
                <asp:TextBox ID="Quantityofpeople" runat="server" Width="210px" style="font-size: medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" style="font-size: medium">&nbsp;</td>
            <td style="width: 405px">
                <asp:Label ID="Label1" runat="server" style="font-size: medium; color: #009933"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" style="height: 42px"></td>
            <td style="width: 405px; height: 42px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" style="font-size: medium;" Text="Submit" Width="155px" />
            </td>
        </tr>
    </table>
</form>
</asp:Content>
