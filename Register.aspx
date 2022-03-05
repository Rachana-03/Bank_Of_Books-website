<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{background-image:url(Images/bg1.jpg);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" style="width: 700px; height: 600px; background-color: #00FFFF">
                <tr>
                    <td colspan="2" align="center">
                        <h2> Registration Page</h2></td>
                </tr>
                <tr>
                    <td style ="width:40%" ><b>First Name :</b></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter First Name" Width="344px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="TextBox1" ErrorMessage="First Name is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only Characters " ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style ="width:40%" ><b>Last Name :</b></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter last Name" Width="344px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last Name is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Only Characters " ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style ="width:40%" ><b>Email_ID :</b></td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" placeholder="Enter Email_Id" Width="344px" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Email is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style ="width:40%" ><b>Phone No. :</b></td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" placeholder="Enter Phone Number "  Width="344px" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox10" ErrorMessage="Phone No. is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox10" ErrorMessage="Invalid Phone No." ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style ="width:40%" ><b>Address :</b></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Address"  Width="344px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Address  is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
               <!-- <tr>
                    <td style ="width:40%" ><b>Gender :</b></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="349px">
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Gender is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>-->
                <tr>
                    <td style ="width:40%" ><b>Password :</b></td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter Valid Password"  Width="344px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Password is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style ="width:40%" ><b>Confirm Password :</b></td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Same Password" Width="344px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8"  placeholder="Enter Same Password" runat="server" ControlToValidate="TextBox8" ErrorMessage="Field is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Password is not same"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click" Text="Register" />
                     </td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                     </td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        
                     </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
