<%@ Page Title="" Language="C#" MasterPageFile="~/Category/Category.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="WebApplication5.Category.Category1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Label ID="mainname" Text="Category" Font-Size="X-Large" Font-Bold="true" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="addcategory0" runat="server" Text="Add New Category" class="btn btn-block btn-primary" Height="20%" Width="15%" OnClick="addcategory0_Click"/>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cat_id" DataSourceID="dscat" ForeColor="#333333" GridLines="None" Width="49%" CssClass="mygrdContent" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" Height="141px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="cat_id" HeaderText="Category ID" ReadOnly="True" SortExpression="cat_id" />
            <asp:BoundField DataField="cat_name" HeaderText="Category Name" SortExpression="cat_name" />
            <asp:ButtonField Text="Edit" />
            <asp:ButtonField Text="Delete" />
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
    <asp:SqlDataSource ID="dscat" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>

</asp:Content>
