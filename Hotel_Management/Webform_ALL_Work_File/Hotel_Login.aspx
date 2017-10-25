<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hotel_Login.aspx.cs" Inherits="Hotel_Management.Webform_ALL_Work_File.Hotel_Login" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

    <h1>Login</h1>
    <form id="form1" runat="server" style="background-color: #333333">
    <table align="center" class="style1" style="border-radius:20px;">
        <tr>
            <td class="style7" style="font-size: large; color: #99FFCC; height: 56px"><strong>E-mail :</strong></td>
            <td class="style6" style="width: 290px; height: 56px">
                <asp:TextBox ID="Email" runat="server" Width="198px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14" style="height: 60px; font-size: large; color: #FFCCCC;">Password :</td>
            <td class="style9" style="width: 290px; height: 60px">
                <asp:TextBox ID="Passsword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15" style="height: 80px"></td>
            <td class="style16" style="width: 290px; height: 80px"><b>
                <asp:RadioButtonList ID="RadioButtonAuthor" runat="server" style="text-align: left; margin-left: 0px; font-size: large;" Width="207px">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Client</asp:ListItem>
                </asp:RadioButtonList>
                </b></td>
        </tr>
        <tr>
            <td class="style12" style="height: 33px"></td>
            <td class="style13" style="width: 290px; height: 33px"><b>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                </b></td>
        </tr>
        <tr>
            <td class="style2" style="height: 54px">
                &nbsp;</td>
            <td class="style5" style="width: 290px; height: 54px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" style="height: 26px" Text="Login" Width="197px" />
            </td>
        </tr>
    </table>
</form>
</asp:Content>

