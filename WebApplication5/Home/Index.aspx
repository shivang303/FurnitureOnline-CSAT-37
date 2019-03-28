<%@ Page Title="" Language="C#" MasterPageFile="~/Home/Home.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication5.Home.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="mainname" Text="Main Page" Font-Size="X-Large" Font-Bold="true" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label111" Text="Category Overview" Font-Size="Large" Font-Bold="true" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="addcategory" runat="server" Text="Add New Category" class="btn btn-block btn-primary" Height="20%" Width="15%" OnClick="addcategory_Click"/>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cat_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="46%" CssClass="mygrdContent" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows"  >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="cat_id" HeaderText="Category ID" ReadOnly="True" SortExpression="cat_id" />
            <asp:BoundField DataField="cat_name" HeaderText="Category Name" SortExpression="cat_name" />
            <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" ShowInsertButton="True" NewText="" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Width=""/>
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]" DeleteCommand="DELETE FROM [Category] where [cat_id]=@cat_id"></asp:SqlDataSource>
    <br />
    <asp:Label ID="Label1111" Text="Prodcut Overview" Font-Size="Large" Font-Bold="true" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="addcategory0" runat="server" Text="Add New Product" class="btn btn-block btn-primary" Height="20%" Width="15%" OnClick="addcategory0_Click"/>
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pro_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="78%" CssClass="mygrdContent" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="pro_id" HeaderText="Product ID" ReadOnly="True" SortExpression="pro_id" />
            <asp:BoundField DataField="pro_name" HeaderText="Product Name" SortExpression="pro_name" />
            <asp:BoundField DataField="cat_name" HeaderText="Category Name" SortExpression="cat_name" />
            <asp:BoundField DataField="pro_price" HeaderText="Product Price" SortExpression="pro_price" />
            <asp:BoundField DataField="pro_qty" HeaderText="Product Quantity" SortExpression="pro_qty" />
            <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Width=""/>
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    </asp:Content>
