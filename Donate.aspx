<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donate.aspx.cs" Inherits="Project1.Donate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:khaki">
    <form id="form1" runat="server" style="margin-top:50px">
        <div>
            <table align="center" style="width: 700px; height: 700px; background-color:#1abc9a" >
                <tr>
                    <td colspan="2" align="center">
                        <h2> Donate Your Precious Books </h2></td>
                </tr>
                <tr>
                    <td style ="width:30%" align="center"><b>Name Of Books  :</b></td>
                    <td>
                        <asp:TextBox ID="txtbook" runat="server" placeholder="Enter Name Of Books" Width="344px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtbook" ErrorMessage="Name of Book is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style ="width:30%" align="center"><b>Description :</b></td>
                    <td>
                        <asp:TextBox ID="txtDesc" runat="server" placeholder="About The Book"  Width="351px" TextMode="MultiLine" Height="89px"></asp:TextBox>
                        </td>
                        </tr>
                <tr>
                    <td style ="width:30%" align="center"><b>Total No. of Books :</b></td>
                    <td>
                        <asp:TextBox ID="txtQuantity" runat="server" placeholder="Enter Total No. of Books "  Width="344px" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity Of Books Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Must Be Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>--%>
                </tr>
                <tr>
                    <td style ="width:30%" align="center"><b>First Name :</b></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtFname" runat="server" placeholder="Enter First Name" Width="344px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="txtFname" ErrorMessage="First Name is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="Only Characters " ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style ="width:30%" align="center"><b>Last Name :</b></td>
                    <td>
                        <asp:TextBox ID="txtLname" runat="server" placeholder="Enter Last Name" Width="344px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Last Name is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Only Characters " ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style ="width:30%" align="center"><b>Email_ID :</b></td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" placeholder="Enter Email_Id" Width="344px" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Email is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style ="width:30%" align="center"><b>Phone No. :</b></td>
                    <td>
                        <asp:TextBox ID="txtphone" runat="server" placeholder="Enter Phone Number "  Width="344px" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtphone" ErrorMessage="Phone No. is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtphone" ErrorMessage="Invalid Phone No." ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style ="width:30%" align="center"><b>Address :</b></td>
                    <td>
                        <asp:TextBox ID="txtadd" runat="server" placeholder="Enter Address"  Width="346px" TextMode="MultiLine" Height="85px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtadd" ErrorMessage="Address  is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
               <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnDonate" runat="server" Font-Bold="True" Font-Size="Large"  Text="Donate" OnClick="btnDonate_Click" BackColor="#9900FF" ForeColor="White" Width="153px" />
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
