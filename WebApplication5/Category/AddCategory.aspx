<%@ Page Title="" Language="C#" MasterPageFile="~/Category/Category.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="WebApplication5.Category.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 135px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="mainname" Text="Add Category" Font-Size="X-Large" Font-Bold="true" runat="server"></asp:Label>
    <br />
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbcatid" runat="server" Text="Category ID" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="catid" runat="server" Height="26px" Width="162px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Category Name" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="catname" runat="server" Height="26px" Width="162px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style3">  <asp:Button ID="addcategory1" runat="server" Text="Add Category"  class="btn btn-block btn-primary" Height="92%" Width="16%" OnClick="addcategory1_Click"/>
                <br />
               
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="rcname" runat="server" ControlToValidate="catname" Display="Dynamic" ErrorMessage="Category name cannot be empty!" Font-Bold="True"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Msg" runat="server" Font-Bold="True" Text="Category Added Sucessfully!" Visible="False"></asp:Label>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />

</asp:Content>
