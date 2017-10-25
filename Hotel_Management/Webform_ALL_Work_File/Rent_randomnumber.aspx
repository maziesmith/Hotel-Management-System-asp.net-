<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rent_randomnumber.aspx.cs" Inherits="Hotel_Management.Webform_ALL_Work_File.Rent_randomnumber" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Rent Submission</h1>

    <form id="form1" runat="server" style="height: 328px; width: 599px">
    <table aria-required="False" class="style1">
        <tr>
            <td class="style12">&nbsp;Transection ID </td>
            <td class="style4">
                <asp:TextBox ID="TransectionID" runat="server" Width="265px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;Rent :</td>
            <td class="style4">
                <asp:TextBox ID="Rent" runat="server" Height="44px"  Width="264px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" style="height: 69px"></td>
            <td class="style6" style="height: 69px"><span class="style9">If you payment for your service .You have a transection ID. </span>
                <br class="style9" />
                <span class="style9">If you have this ID. Please input below this Textbox .</span></td>
        </tr>
        <tr>
            <td class="auto-style2">Transection No :</td>
            <td class="style11">
                <asp:TextBox ID="TransectionNo" runat="server" Height="35px" Width="264px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" style="height: 39px"></td>
            <td class="style11" style="height: 39px">
                <asp:Label ID="Label2" runat="server" style="font-size: x-large; font-family: 'Berlin Sans FB'"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" style="height: 83px">
                <asp:Button ID="Client" runat="server" Height="30px" onclick="Button1_Click" Text="Client Data" Width="172px" />
            </td>
            <td style="height: 83px">
                <asp:Button ID="SUBMIT" runat="server" Height="30px" onclick="Sumbit_Click" Text="Submit" Width="262px" />
            </td>
        </tr>
    </table>
</form>
</asp:Content>
