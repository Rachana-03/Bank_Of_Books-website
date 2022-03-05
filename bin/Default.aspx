<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="True" CodeBehind="Default.aspx.cs" Inherits="Project1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 743px;
            margin-top: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
        <%--<div>
        <asp:Label ID="Label1" runat="server" Text="Welcome To Our Product Section"></asp:Label>
        </div>--%>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Popular Books To Receive :" ForeColor="#6600FF" Font-Size="Larger" Font-Bold="True" Font-Names="Algerian"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="items"></asp:Label>
&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="AddtoCart.aspx">Show Cart</asp:HyperLink>
        </p>
        <asp:DataList ID="DataList1" runat="server" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="15" CellSpacing="15" DataKeyField="ProductID" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" Height="220px" Width="318px">
            <AlternatingItemStyle HorizontalAlign="Center" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                <table border="1" class="auto-style1" align="center">
                    <tr>
                        <td class="auto-style3" rowspan="1">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" rowspan="1">Product ID :
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" rowspan="1">Description :
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" rowspan="1">
                            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" rowspan="1">
                            Quantity :
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" rowspan="1">
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("ProductID") %>' CommandName="addtocart" Height="53px" ImageUrl="~/Images/cartLogo.png" Width="198px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString123 %>" SelectCommand="SELECT * FROM [prod]"></asp:SqlDataSource>
    





    

    <%-- Data to  display product --%>
        
    <section id="pd"></section>
    <section id="ab"></section>
</asp:Content>
  