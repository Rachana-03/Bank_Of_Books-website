<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        body{
            background-image:url(Images/login.gif);
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="background-color: #00FFFF; border-collapse: 600" align="center" class="auto-style6">
                <tr>
                    <td colspan="2" align="center">
                        <h2 class="auto-style4">Login Page</h2>
                    </td>
                </tr>
                <tr>
                    <td align="center" width="40%"><b>Email ID :</b></td>
                    <td class="auto-style2" style="background-color: #FFFFFF">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" Width="310px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" width="40%"" ><b> Password :</b></td>
                    <td class="auto-style5" style="background-color: #fff">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="310px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><b>
                        <asp:Button ID="Button1" runat="server" Text="Login" BackColor="#CC66FF" BorderStyle="Solid" Font-Bold="False" OnClick="Button1_Click" />
                    </b></td>

                </tr>
                <tr>
                    <td >
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                    <td >
                        
                    </td>
                </tr>
            </table>
        </div>
    </form>
    
    </body>
</html>
