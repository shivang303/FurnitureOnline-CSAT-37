<%@ Page Title="" Language="C#" MasterPageFile="~/Product/Product.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication5.Product.Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Label ID="mainname" Text="Product" Font-Size="X-Large" Font-Bold="true" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="addcategory0" runat="server" Text="Add New Product" class="btn btn-block btn-primary" Height="20%" Width="15%" OnClick="addcategory0_Click"/>
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pro_id" DataSourceID="SqlDataSource1"  ForeColor="#333333" GridLines="None" Width="71%" CssClass="mygrdContent" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" Height="175px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="pro_id" HeaderText="ProductID" ReadOnly="True" SortExpression="pro_id" />
            <asp:BoundField DataField="pro_name" HeaderText="Product Name" SortExpression="pro_name" />
            <asp:BoundField DataField="cat_name" HeaderText="Category Name" SortExpression="cat_name" />
            <asp:BoundField DataField="pro_price" HeaderText="Product Price" SortExpression="pro_price" />
            <asp:BoundField DataField="pro_qty" HeaderText="Quantity" SortExpression="pro_qty" />
            <asp:ButtonField Text="Delete" />
            <asp:CommandField SelectText="Update" ShowSelectButton="True">
            <ItemStyle HorizontalAlign="Right" />
            </asp:CommandField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]" ></asp:SqlDataSource>
</asp:Content>
