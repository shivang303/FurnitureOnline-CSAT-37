<%@ Page Title="" Language="C#" MasterPageFile="~/Product/Product.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WebApplication5.Product.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 111px;
        }
        .auto-style2 {
            width: 111px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            width: 111px;
            height: 32px;
        }
        .auto-style5 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Add Product</h1>
    <br />
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Product ID" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="proid" runat="server" Height="26px" Width="162px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Product Name" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="proname" runat="server" Height="26px" Width="162px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Category Name" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddcat" runat="server" DataSourceID="SqlDataSource1" DataTextField="cat_name" DataValueField="cat_name" Height="26px" Width="162px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cat_name] FROM [Product]"></asp:SqlDataSource>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Product Price" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="proprice" runat="server" Height="26px" Width="162px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Text="Quantity" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="proqty" runat="server" Height="26px" Width="162px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">  <asp:Button ID="addcategory0" runat="server" Text="Add Product"  class="btn btn-block btn-primary" Height="92%" Width="15%" OnClick="addcategory0_Click"/></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <br />
                <asp:Label ID="Msg" runat="server" Font-Bold="True" Text="Product Added Sucessfully!" Visible="False"></asp:Label>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />

</asp:Content>
