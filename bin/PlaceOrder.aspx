<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="Project1.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 834px;
            height: 630px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div>
            <table align="center"  style="margin-top:70px; background-color:aqua" class="auto-style1" >
                <tr colspan="2">
                    <td colspan="2" align="center">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/PlaceOrder.jpg" BorderColor="Black" BorderWidth="2px" Width="393px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="vertical-align:top;">
                        <asp:Label ID="Label1" runat="server" Text="Details" Font-Bold="True" Font-Size="XX-Large" ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="vertical-align:top;">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name"  BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="50px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Textbox1"  ErrorMessage="First Name is Empty" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="First Name must be character " ValidationExpression="^[A-Za-z]*$"  ControlToValidate="Textbox1" Text="*"></asp:RegularExpressionValidator>
                    </td>
                    <td align="center" style="vertical-align:top;">
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name"  BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="50px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Textbox2"  ErrorMessage="Last Name is Empty" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Last Name must be character "  ValidationExpression="^[A-Za-z]*$"  ControlToValidate="Textbox2" Text="*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Pin Code" BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="50px" Width="393 px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textbox5"  ErrorMessage="Pin Code is Empty" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="must be Digits " ControlToValidate="Textbox1" Text="*" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Valid 10 Digit Phone Number"  BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="50px" Width="393 px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textbox3"  ErrorMessage="Phone Number is Empty" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Phone Number must be Digits " ControlToValidate="Textbox1" Text="*" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                        <td colspan="2" align="center">
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Address"  BorderColor="Black" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" Height="50px" Width="393 px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Address  is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#FF0066" BorderColor="Blue" BorderWidth="2px" Font-Bold="True" Font-Size="Large" ForeColor="White" Width="200px" Height="50px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" HeaderText="Fix The Following Errors" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/AddToCart.aspx" Text="Go Back">HyperLink</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx" Text="HyperLink" Font-Bold="True"></asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>

    </body>
</html>
