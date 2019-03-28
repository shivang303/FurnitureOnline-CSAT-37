<%@ Page Title="" Language="C#" MasterPageFile="~/Category/Category.Master" AutoEventWireup="true" CodeBehind="UpdateCategory.aspx.cs" Inherits="WebApplication5.Category.UpdateCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 142px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <asp:Label ID="mainname" Text="Edit Category" Font-Size="X-Large" Font-Bold="true" runat="server"></asp:Label>
    <br />
<br />
    <br />
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lbcatid" runat="server" Text="Category ID" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="ucatid" runat="server" Height="26px" Width="162px"></asp:TextBox>
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
                <asp:TextBox ID="ucatname" runat="server" Height="26px" Width="162px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style3">  
                <asp:Button ID="UpdateCategory1" runat="server" Text="Button" class="btn btn-block btn-primary" Height="92%" Width="15%" />
                <br />
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="vcname0" runat="server" ControlToValidate="catname" Display="Dynamic" ErrorMessage="Category name can not be empty!" Font-Bold="True" ForeColor="Red" Visible="False"></asp:RequiredFieldValidator>
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
