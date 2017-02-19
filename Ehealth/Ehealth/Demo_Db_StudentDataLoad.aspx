<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo_Db_StudentDataLoad.aspx.cs" Inherits="Ehealth.Demo_Db_StudentDataLoad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <table> 
            
         <tr> <td style="width: 250px; height: 25px;"> Student ID</td> <td style="width: 250px; height: 25px;" >
             <asp:TextBox ID="Demo_Db_StudentDataLoad_ID" runat="server" MaxLength="1000"></asp:TextBox>
             </td> <td style="width: 250px; height: 25px;" >
                 <asp:Button ID="Demo_Db_StudentDataLoad_Load" runat="server" Text="Load" OnClick="Demo_Db_StudentDataLoad_Load_Click" style="height: 35px" />
             </td></tr>
            <tr> <td style="width: 250px; height: 25px;"> Name</td> <td style="width: 250px; height: 25px;"> 
                <asp:TextBox ID="Demo_Db_StudentDataLoad_Name" runat="server"></asp:TextBox>
                </td> </tr>
            <tr> <td style="width: 250px; height: 25px;"> Gender</td> <td style="width: 250px; height: 25px;" >
                <asp:DropDownList ID="Demo_Db_StudentDataLoad_Gender" runat="server">
                    <asp:ListItem Text = "Select Gender" Value ="-1" > </asp:ListItem>
                    <asp:ListItem Text = "Male" Value ="male" > </asp:ListItem>
                    <asp:ListItem Text = "Female" Value ="female" > </asp:ListItem>

                </asp:DropDownList>
                </td> </tr>
            <tr> <td style="width: 250px; height: 25px;"> Total Marks</td> <td style="width: 250px; height: 25px;" >
                <asp:TextBox ID="Demo_Db_StudentDataLoad_TotalMarks" runat="server"></asp:TextBox>
                </td> </tr>
            <tr> <td style="width: 250px; height: 25px;"> </td> <td style="width: 250px; height: 25px;" ></td> </tr>
            <tr> <td style="width: 250px; height: 25px;"> 
                <asp:Button ID="Demo_Db_StudentDataLoad_Update" runat="server" Text="Update" OnClick="Demo_Db_StudentDataLoad_Update_Click" />
                <asp:Button ID="Demo_Db_StudentDataLoad_Clear" runat="server" OnClick="Demo_Db_StudentDataLoad_Clear_Click" Text="Clear" />
                </td> <td style="width: 250px; height: 25px;" >
                    <asp:Label ID="Demo_Db_StudentDataLoad_label" runat="server"></asp:Label>
                </td> </tr>


        </table>

    </div>
    </form>
</body>
</html>
