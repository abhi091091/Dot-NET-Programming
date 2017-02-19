<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="Ehealth.RegistrationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<center>
<table>

    <tr> <td style="width: 161px"> First Name </td>  <td style="width: 250px"> 
        <asp:TextBox ID="TextBox_fname" runat="server"></asp:TextBox>
        </td> </tr>
    <tr> <td style="width: 161px"> Last Name</td>  <td style="width: 250px"> 
        <asp:TextBox ID="TextBox_lname" runat="server"></asp:TextBox>
        </td> </tr>
    <tr> <td style="width: 161px"> Gender</td>  <td style="width: 250px"> 
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
        
        <asp:ListItem> Male </asp:ListItem>
            <asp:ListItem> Female </asp:ListItem>

        </asp:RadioButtonList>
        </td> </tr>
    <tr> <td style="width: 161px; height: 33px;"> Address</td>  <td style="width: 250px; height: 33px;"> 
        <asp:TextBox ID="TextBox_addr" runat="server"></asp:TextBox>
        </td> </tr>
    <tr> <td style="width: 161px; height: 33px;"> Mobile</td>  <td style="width: 250px; height: 33px;"> 
        <asp:TextBox ID="TextBox_mobile" runat="server"></asp:TextBox>
        </td> </tr>
    <tr> <td style="width: 161px"> Email </td>  <td style="width: 250px"> 
        <asp:TextBox ID="TextBox_email" runat="server"></asp:TextBox>
        </td> </tr>

    <tr> <td> Username</td> <td> 
        <asp:TextBox ID="TextBox_uname" runat="server"></asp:TextBox>
        </td> </tr>

    <tr> <td> Password</td> <td> 
        <asp:TextBox ID="TextBox_pwd" runat="server"></asp:TextBox>
        </td> </tr>
    <tr> <td> ConfirmPassword</td> <td> 
        <asp:TextBox ID="TextBox_cnfrmpwd" runat="server"></asp:TextBox>
        </td> </tr>

    <tr>  <td> </td> <td> 
        <asp:Button ID="Button_register" runat="server" Text="Register" OnClick="Button_register_Click" />
        </td> </tr>

    <tr> <td> 
        <asp:Label ID="Label1" runat="server" Text="Registered Successfully" Visible="False"></asp:Label>
        </td> </tr>

    </table>

    </center>
</asp:Content>
