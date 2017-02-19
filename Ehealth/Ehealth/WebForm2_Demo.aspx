<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2_Demo.aspx.cs" Inherits="Ehealth.WebForm2_Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <asp:Label ID="txtLabel" runat="server"></asp:Label>
    
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>



         <table cellspacing="15" >

<tr> <td style="width: 250px; height: 25px;">Student ID</td> <td style="width: 400px; height: 25px;">
    <asp:TextBox ID="TextBox_sid" runat="server" Width="190px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Load" runat="server" Text="Load" OnClick="Load_Click" />
    </td>    </tr>

<tr> <td style="width: 250px; height: 25px;">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> <td style="width: 400px; height: 25px;">
    
    <asp:DropDownList ID="DropDownList_g" runat="server">

        <asp:ListItem Text = "Select Gender" Value ="-1" > </asp:ListItem>
        <asp:ListItem Text = "male" Value ="male" ></asp:ListItem>
        <asp:ListItem Text = "female" Value ="female" ></asp:ListItem>
    </asp:DropDownList>

    </td>    </tr>

<tr> <td class="auto-style1">Name&nbsp; </td> <td class="auto-style2">
    <asp:TextBox ID="TextBox_na" runat="server" Width="329px"></asp:TextBox>
    </td>    </tr>

<tr> <td style="width: 250px; height: 25px;">Total Marks</td> <td style="width: 400px; height: 25px;">
    <asp:TextBox ID="TextBox_ma" runat="server" Width="329px"></asp:TextBox>
    </td>    </tr>

<tr> <td style="width: 250px; height: 25px;">&nbsp;</td> <td style="width: 400px; height: 25px;">
    <asp:Button ID="Update" runat="server" Text="Button" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label_up" runat="server"></asp:Label>
    </td>    </tr>

<tr> <td style="width: 250px; height: 25px;">&nbsp;</td> <td style="width: 400px; height: 25px;">
    &nbsp;</td>    </tr>



    </table>
    
    
    </div>
    </form>
</body>
</html>
