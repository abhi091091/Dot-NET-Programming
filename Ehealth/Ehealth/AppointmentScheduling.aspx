<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="AppointmentScheduling.aspx.cs" Inherits="Ehealth.Appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div align="center">
    <h2> Request New Appointment </h2>
     </div>

    <table cellspacing="15" >

<tr> <td style="width: 250px; height: 25px;">Name of the Patient </td> <td style="width: 400px; height: 25px;">
    <asp:TextBox ID="TextBox_name" runat="server" Width="329px"></asp:TextBox>
    </td>    </tr>

<tr> <td style="width: 250px; height: 25px;">Level of Priority&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> <td style="width: 400px; height: 25px;">
    <asp:DropDownList ID="DropDownList_Priority" runat="server">

        <asp:ListItem> High Priority  </asp:ListItem>
        <asp:ListItem> Medium Priority</asp:ListItem>
        <asp:ListItem> Normal         </asp:ListItem>
    </asp:DropDownList>
    </td>    </tr>

<tr> <td style="width: 250px; height: 25px;">Date of Appointment </td> <td style="width: 400px; height: 25px;">
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    </td>    </tr>

<tr> <td style="width: 250px; height: 25px;">Name of the Doctor</td> <td style="width: 400px; height: 25px;">
    <asp:DropDownList ID="DropDownList_DoctorName" runat="server">
    </asp:DropDownList>
    </td>    </tr>

<tr> <td style="width: 250px; height: 25px;">Name of the Clinic</td> <td style="width: 400px; height: 25px;"></td>    </tr>

<tr> <td style="width: 250px; height: 25px;">Medical Issue</td> <td style="width: 400px; height: 25px;">
    <asp:TextBox ID="TextBox_ISuue" runat="server" TextMode="MultiLine" Width="329px"></asp:TextBox>
    </td>    </tr>



    </table>

    <asp:label ID="lbl_result" runat="server" text=""></asp:label>
    <br/>

    <div align="center">
    <asp:button  runat="server"  text="Submit" /> <asp:button  runat="server"  text="Cancel" ID="button_cancel" OnClick="button_cancel_Click" />
     </div>
    

</asp:Content>
