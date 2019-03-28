<%@ Page Title="" Language="C#" MasterPageFile="~/Login_1/Login_1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication5.Login_1.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 207px;
        }
        .auto-style3 {
            font-size: 12pt;
        }
        .auto-style4 {
            width: 207px;
            height: 35px;
        }
        .auto-style5 {
            height: 35px;
        }
        .auto-style6 {
            width: 207px;
            height: 25px;
        }
        .auto-style7 {
            height: 25px;
        }
        .auto-style8 {
            width: 200px;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;" >
        <tr>
            <td colspan="2">
                <center>
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" ForeColor="#009933" Text="Registration Form"></asp:Label>
                    <br />
                </center>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label14" runat="server" Text="User ID" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="userid" runat="server" class="wrap-input100" CssClass="wrap-input100" Height="38px" Width="203px" ></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="First Name" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label15" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="fname" runat="server" class="wrap-input100" CssClass="wrap-input100" Height="38px" Width="203px" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" Display="Dynamic" ErrorMessage="First name cannot be null!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Last Name" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="lname" runat="server" class="wrap-input100" CssClass="wrap-input100" Height="38px" Width="203px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lname" Display="Dynamic" ErrorMessage="Last name cannot be null!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="User Name" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="uname" runat="server" class="wrap-input100" CssClass="wrap-input100" Height="38px" Width="203px"></asp:TextBox>
               
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="uname" Display="Dynamic" ErrorMessage="User name cannot be null!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Email" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label19" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="email" runat="server" class="wrap-input100" CssClass="wrap-input100" Height="38px" Width="203px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Enter valid email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="Password" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label20" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="password" runat="server" class="wrap-input100" CssClass="wrap-input100" Height="38px" Width="203px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="password" Display="Dynamic" ErrorMessage="Password cannot be null!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" Text="Phone" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label21" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="phone" runat="server" class="wrap-input100" CssClass="wrap-input100" Height="38px" Width="203px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label7" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label22" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="address" runat="server" class="wrap-input100" CssClass="wrap-input100" Height="38px" Width="203px"></asp:TextBox>
              
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="address" Display="Dynamic" ErrorMessage="Address cannot be null!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label8" runat="server" Text="Postal" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label24" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="postal" runat="server" Bclass="wrap-input100" CssClass="wrap-input100" Height="38px" Width="203px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="postal" Display="Dynamic" ErrorMessage="Postal code cannot be null!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label9" runat="server" Text="City" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label25" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="city" runat="server" class="wrap-input100" CssClass="wrap-input100" Height="38px" Width="203px" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="city" Display="Dynamic" ErrorMessage="City cannot be null!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label10" runat="server" Text="DOB" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label26" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
               <input type="date" runat="server" class="auto-style8"  CssClass="wrap-input100" Height="38px" Width="203px" id="dob" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label11" runat="server" Text="DOR" Font-Bold="True"></asp:Label>
            </td>
            <td>
               <input type="date" runat="server" class="auto-style8"  CssClass="wrap-input100" Height="38px" Width="203px" id="dor" /><br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label12" runat="server" Text="Comments" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="comments" runat="server" class="wrap-input100" CssClass="wrap-input100" Height="38px" Width="203px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" Height="41px" Width="110px" Font-Bold="True" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
