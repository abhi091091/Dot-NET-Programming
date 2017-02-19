<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="CreatePrescription.aspx.cs" Inherits="Ehealth.CreatePrescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div align="center">
    <h2> Create Prescription </h2>
     </div>

    <table cellspacing="15" >

     <tr> <td style="width: 250px; height: 25px;">Name of the Patient </td> <td style="width: 400px; height: 25px;"> 
         <asp:TextBox ID="TextBox_PatientName_Doc" runat="server" Width="329px"></asp:TextBox>
         </td>  <td style="height: 25px"></td> </tr>
     <tr> <td style="width: 250px; height: 25px;">Date of Visit </td> <td style="width: 400px; height: 25px;"> 
         <asp:Calendar ID="Calendar_Doc" runat="server" Width="329px"></asp:Calendar>
         </td>  <td></td> </tr>
     <tr> <td style="width: 250px; height: 27px;">Issue  </td> <td style="width: 400px; height: 27px;"> 
         <asp:TextBox ID="TextBox_Issue_Doc" runat="server" TextMode="MultiLine" Width="329px"></asp:TextBox>
         </td>  <td style="height: 27px"></td> </tr>
     <tr> <td style="width: 250px; height: 25px;">Medical Drug</td> <td style="width: 400px; height: 25px;"> 
         <asp:TextBox ID="TextBox_Dug_Doc" runat="server" Width="329px" TextMode="MultiLine"></asp:TextBox>
         </td>  <td></td> </tr>
     <tr> <td style="width: 250px; height: 25px;">Dosage </td> <td style="width: 400px; height: 25px;"> 
         <asp:TextBox ID="TextBox_Dosage_Doc" runat="server" Width="329px"></asp:TextBox>
         </td>  <td></td> </tr>
     <tr> <td style="width: 250px; height: 25px;">Total Amount </td> <td style="width: 400px; height: 25px;"> 
         <asp:TextBox ID="TextBox_TotAmount_Doc" runat="server" Width="329px"></asp:TextBox>
         </td>  <td></td> </tr>



    </table>

    <asp:label ID="lbl_result_1" runat="server" text=""></asp:label>
    <br/>

    <div align="center">
    <asp:button  runat="server"  text="Submit" /> <asp:button  runat="server"  text="Cancel" ID="button_cancel" OnClick="button_cancel_Click" />
     </div>
    
</asp:Content>
