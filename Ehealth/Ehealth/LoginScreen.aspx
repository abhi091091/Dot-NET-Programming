<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginScreen.aspx.cs" Inherits="Ehealth.LoginScreen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Login Screen </title>
    <style type="text/css">
        .auto-style1 {
            width: 235px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
         <table>

             <tr> <td style="width: 250px; height: 25px;"> User Id </td> <td style="width: 400px; height: 25px;"> 
                 <asp:TextBox ID="TextBox_userid" runat="server" Width="375px"></asp:TextBox> </td> </tr>
             <tr> <td style="width: 250px; height: 25px;"> Password </td> <td style="width: 400px; height: 25px;"> 



                 <asp:TextBox ID="TextBox_pwd" runat="server" TextMode="Password" Width="372px"></asp:TextBox> </td> </tr>

             <tr> <td style="width: 250px; height: 25px;"> &nbsp;</td> <td style="width: 400px; height: 25px;"> 

                 &nbsp;</td> </tr>
        
           <tr> <td> 

               <div align="center" class="auto-style1">
               
                   <asp:Button ID="Button_submit" runat="server" Text="Submit" OnClick="Button_submit_Click" />
                   <br />
                   <br />
             </div>  
               </td> </tr>  
             <tr> <td></td>  <td>
                 <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                     <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                     <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                     <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                     <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                     <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                     <SortedAscendingCellStyle BackColor="#F1F1F1" />
                     <SortedAscendingHeaderStyle BackColor="#594B9C" />
                     <SortedDescendingCellStyle BackColor="#CAC9C9" />
                     <SortedDescendingHeaderStyle BackColor="#33276A" />
                 </asp:GridView>
                 </td> </tr>
                      
         </table>




    </div>
    </form>
</body>
</html>
