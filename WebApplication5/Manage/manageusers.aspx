<%@ Page Title="" Language="C#" MasterPageFile="~/Manage/Manage.Master" AutoEventWireup="true" CodeBehind="Manageusers.aspx.cs" Inherits="WebApplication5.Manage.manageusers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="user_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CssClass="mygrdContent" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" Height="195px" style="margin-bottom: 2px" Width="800px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="User ID" ReadOnly="True" SortExpression="user_id" />
            <asp:BoundField DataField="user_name" HeaderText="User Name" SortExpression="user_name" />
            <asp:BoundField DataField="user_fname" HeaderText="First Name" SortExpression="user_fname" />
            <asp:BoundField DataField="user_lname" HeaderText="Last Name" SortExpression="user_lname" />
            <asp:BoundField DataField="user_email" HeaderText="Email" SortExpression="user_email" />
            <asp:BoundField DataField="user_phone" HeaderText="Phone" SortExpression="user_phone" />
            <asp:BoundField DataField="user_address" HeaderText="Adress" SortExpression="user_address" />
            <asp:BoundField DataField="user_postal" HeaderText="Postal" SortExpression="user_postal" />
            <asp:BoundField DataField="user_city" HeaderText="City" SortExpression="user_city" />
            <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
            <asp:BoundField DataField="comment" HeaderText="Comment" SortExpression="comment" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_id], [user_name], [user_fname], [user_lname], [user_email], [user_phone], [user_address], [user_postal], [user_city], [dob], [comment] FROM [FUser]"></asp:SqlDataSource>
</asp:Content>
