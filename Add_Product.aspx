<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Product.aspx.cs" Inherits="Project1.Add_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form>
        <div class="navbar" style="height:510px; border-width:3px; border-color:black">
        <table  style="background-color:darksalmon; width:700px; height:390px;" align="center" >
            <tr>
                <td  align="center" width="50%" colspan="2">
                    <h1>Adding Product</h1><hr />
                </td>
            </tr>

            <tr>
                <td align="center" width="50%">
                    <h3> Category : </h3>
                </td>
                <td width="50%">
                    <asp:DropDownList ID="Pcategory" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryName"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Category is Mandatory" ControlToValidate="Pcategory" InitialValue="Select" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td align="center" width="50%">
                    <h3>Product Name :</h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="Pname" runat="server"  Width="191px"></asp:TextBox>
                </td>
            </tr><tr>
                <td align="center" width="50%">
                    <h3>Product Desc :</h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="Pdesc" runat="server"  Width="191px"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <h3>Product Image</h3>
                </td>
                <td>
                    <asp:FileUpload ID="Pimg" runat="server" />
                </td>
            </tr>
            <%--<tr>
                <td align="center" width="50%" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Add " Font-Bold="True" ForeColor="Black" Height="36px" OnClick="Button1_Click" Width="128px" CssClass="auto-style1" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field is Empty" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>--%>

            
            <tr>
                <td align="center" width="50%">
                    <h3>Quantity:</h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="Pquantity" runat="server"  Width="191px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="Pquantity" ErrorMessage="Quantity must be selected" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                     
                    
                </td>
            </tr>
            

            <tr>
                <td align="center"  colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Add" Font-Bold="True" ForeColor="Black" Height="35px" Width="90px" OnClick="btnSubmit_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Fix the following Errors: " />
                </td>
            </tr>

            
        </table>
    </div>

        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString123 %>" SelectCommand="SELECT * FROM [Category1]"></asp:SqlDataSource>
        </div>
    </form>
    
</asp:Content>
