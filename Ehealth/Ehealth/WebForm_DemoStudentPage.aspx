<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm_DemoStudentPage.aspx.cs" Inherits="Ehealth.WebForm_DemoStudnetPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 250px;
            height: 25px;
        }
        .auto-style2 {
            width: 400px;
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family:Arial">

        <table cellspacing="15" >

<tr> <td style="width: 250px; height: 25px;">Student ID</td> <td style="width: 400px; height: 25px;">
    <asp:TextBox ID="TextBox_studentid" runat="server" Width="190px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Load" runat="server" Text="Load" OnClick="Load_Click" />
    </td>    </tr>

<tr> <td style="width: 250px; height: 25px;">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> <td style="width: 400px; height: 25px;">
    
    <asp:DropDownList ID="DropDownList_gender" runat="server">

        <asp:ListItem Text = "Select Gender" Value ="-1" > </asp:ListItem>
        <asp:ListItem Text = "male" Value ="male" ></asp:ListItem>
        <asp:ListItem Text = "female" Value ="female" ></asp:ListItem>
    </asp:DropDownList>

    </td>    </tr>

<tr> <td class="auto-style1">Name&nbsp; </td> <td class="auto-style2">
    <asp:TextBox ID="TextBox_name" runat="server" Width="329px"></asp:TextBox>
    </td>    </tr>

<tr> <td style="width: 250px; height: 25px;">Total Marks</td> <td style="width: 400px; height: 25px;">
    <asp:TextBox ID="TextBox_marks" runat="server" Width="329px"></asp:TextBox>
    </td>    </tr>

<tr> <td style="width: 250px; height: 25px;">&nbsp;</td> <td style="width: 400px; height: 25px;">
    <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label_update" runat="server"></asp:Label>
    &nbsp;</td>    </tr>

<tr> <td style="width: 250px; height: 25px;">&nbsp;</td> <td style="width: 400px; height: 25px;">
    &nbsp;</td>    </tr>

            <tr><td> 
                <asp:Button ID="Button_getdatafromdb" runat="server" Text="Get Data from Database" OnClick="Button_getdatafromdb_Click" />
                </td>  <td>  </td> </tr> 
            <tr><td> 
                <asp:GridView ID="GridView_disconnected" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" OnRowCancelingEdit="GridView_disconnected_RowCancelingEdit" OnRowDeleting="GridView_disconnected_RowDeleting" OnRowEditing="GridView_disconnected_RowEditing" OnRowUpdating="GridView_disconnected_RowUpdating">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Totalmarks" HeaderText="Totalmarks" SortExpression="Totalmarks" />
                    </Columns>
                </asp:GridView>
                </td>  <td>  </td> </tr> 
            <tr><td> 
                &nbsp;<asp:Label ID="Label_connected_datasource" runat="server"></asp:Label>
                </td>  <td>  
                    
                </td> </tr> 

    </table>
    
    </div>
    </form>
</body>
</html>
