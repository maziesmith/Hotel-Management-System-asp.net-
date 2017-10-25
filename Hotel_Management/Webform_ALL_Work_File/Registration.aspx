<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Hotel_Management.Webform_ALL_Work_File.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Registration</h1>

    <form id="form1" runat="server" style="width: 617px; height: 293px">
    <table class="style1">
        <tr>
            <td class="style2" style="font-size: large">ID :&nbsp; </td>
            <td class="style3" style="width: 243px">
                <asp:TextBox ID="id" runat="server" Width="221px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large">Name :</td>
            <td class="style3" style="width: 243px">
                <asp:TextBox ID="TextBoxname" runat="server" Width="222px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large">E-mail :&nbsp;</td>
            <td class="style3" style="width: 243px">
                <asp:TextBox ID="TextBoxemail" runat="server" Width="222px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large">Address :</td>
            <td class="style3" style="width: 243px">
                <asp:TextBox ID="TextBoxaddress" runat="server" Width="222px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large">Phone :</td>
            <td class="style3" style="width: 243px">
                <asp:TextBox ID="TextBoxphone" runat="server" Width="222px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large">Password :</td>
            <td class="style3" style="width: 243px">
                <asp:TextBox ID="TextBoxpassword" runat="server" Width="220px"></asp:TextBox>
               </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large">&nbsp;</td>
            <td class="style3" style="width: 243px">
                <asp:RadioButtonList ID="RadioButtonauthor" runat="server" Width="219px">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Client</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td style="font-size: large">&nbsp;</td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large">&nbsp;</td>
            <td class="style3" style="width: 243px">
                <asp:Label ID="Label1" runat="server" style="font-size: large"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style2" style="font-size: large">&nbsp;</td>
            <td class="style3" style="width: 243px">
                <asp:Button ID="Button1" runat="server" Height="34px" onclick="Button1_Click" style="margin-bottom: 6px" Text="Submit" Width="217px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</form>
</asp:Content>
