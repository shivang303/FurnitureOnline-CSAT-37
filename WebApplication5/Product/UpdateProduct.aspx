<%@ Page Title="" Language="C#" MasterPageFile="~/Product/Product.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="WebApplication5.Product.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 219px;
            height: 42px;
        }
        .auto-style3 {
            height: 42px;
        }
        .auto-style4 {
            width: 100%;
            height: 169px;
        }
        .auto-style5 {
            width: 504px;
            height: 65px;
        }
        .auto-style6 {
            width: 219px;
            height: 65px;
        }
        .auto-style7 {
            width: 219px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <table class="auto-style4">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Product ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpid" runat="server" Height="26px" Width="162px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server" Text="Product Name" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpname" runat="server" Height="26px" Width="162px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
          <td class="auto-style7">
                <asp:Label ID="Label3" runat="server" Text="Category Name" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownList11" runat="server">
                    <asp:ListItem>Office Desk</asp:ListItem>
                    <asp:ListItem>Lamp</asp:ListItem>
                    <asp:ListItem>Dining Table</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" Text="Product Price" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtpprice" runat="server" Height="26px" Width="162px"></asp:TextBox>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label5" runat="server" Text="Quantity" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtpq" runat="server" Height="26px" Width="162px"></asp:TextBox>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Product" class="btn btn-block btn-primary" Height="36%" Width="33%"/>
                <br />
                <asp:Label ID="Label33" runat="server" Text="Updated Successfully!" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
