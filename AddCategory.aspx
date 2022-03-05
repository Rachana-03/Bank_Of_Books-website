<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="Project1.AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    div{
        background-color:khaki;
    }
    .auto-style2 {
        width: 1024px;
        height: 447px;
        margin-left: 5px;
        margin-right: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>
        <div style="background-image: url('Images/background1.jpg'); " class="auto-style2">
            <table>
                <tr>
                    <td colspan="2" align="center">
                        <h2>Add Category
                            <br />
                        </h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b style="font-size: 21px; font-weight: bold;">Category :</b>&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="CategoryName" runat="server" Width="250px" Height="48px" CausesValidation="True" BorderColor="#333333" BorderWidth="2px" Font-Bold="True" Font-Size="Medium" placeholder="Category Name "></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Category Name" ControlToValidate="CategoryName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Add" Width="80px" Height="45px" Font-Bold="True" Font-Size="Medium" BackColor="#0066FF" BorderColor="#333333" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="button" DataKeyNames="CategoryID" EmptyDataText="No record to display" Font-Bold="True" Font-Size="Large" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" PageSize="5" Width="458px" Height="202px">
                            <Columns>
                                <asp:TemplateField HeaderText="Category">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Text='<%# Eval("CategoryName") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:CommandField CausesValidation="False" HeaderText="Operation" ShowDeleteButton="True" ShowEditButton="True">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:CommandField>
                            </Columns>
                            <HeaderStyle BorderColor="Blue" BorderWidth="3px" />

                        </asp:GridView>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString123 %>" SelectCommand="SELECT * FROM [Category1]"></asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </center>
</asp:Content>
