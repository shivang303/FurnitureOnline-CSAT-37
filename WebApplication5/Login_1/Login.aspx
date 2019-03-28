<%@ Page Title="" Language="C#" MasterPageFile="~/Login_1/Login_1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication5.Login_1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
   
   
					<span class="login100-form-title p-b-53">
						Furniture Online
						Inventroy Managment System
					</span>
				<!--	<a href="#" class="btn-face m-b-20">
						<i class="fa fa-facebook-official"></i>
						Facebook
					</a>

					<a href="#" class="btn-google m-b-20">
						<img src="Design/images/icons/icon-google.png" alt="GOOGLE">
						Google
					</a>-->	
					<div class="p-t-31 p-b-9">	
						<span class="txt1">
							Username
						</span>
						<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
					</div>
					<div class="wrap-input100" >
						<asp:TextBox ID="userid" runat="server" class="input100"></asp:TextBox>
						<!--<input class="input100" type="text" name="username" >-->
						<!--<span class="focus-input100"></span>-->
					</div>
					<div class="p-t-13 p-b-9">
					 
						<span class="txt1">
							Password
						<asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
<!--&nbsp;</span><a href="#" class="txt2 bo1 m-l-5">Forgot?-->
						</a>
					</div>
					<div class="wrap-input100" > 
						  <asp:TextBox ID="pwd" runat="server" class="input100" TextMode="Password"></asp:TextBox>
						<!--<input class="input100" type="password" name="pass" >
						<span class="focus-input100"></span>-->
					</div>

				<div class="container-login100-form-btn m-t-17">
						<asp:Button ID="btnlogin" runat="server" class="login100-form-btn" text="Sign In" OnClick="btnlogin_Click">
						</asp:Button>
					</div>
	<br />
	<asp:RequiredFieldValidator ID="vid" runat="server" ControlToValidate="userid" Display="Dynamic" ErrorMessage="User name can not be empty! " Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
<br />
<asp:RequiredFieldValidator ID="vpass" runat="server" ControlToValidate="pwd" Display="Dynamic" ErrorMessage="Password can not be empty!" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
	<br />
	<asp:Label ID ="Error" Text="Invalid Username or Password!" Font-Size="Medium" Font-Bold="true" ForeColor="Red" runat="server" ></asp:Label>
	<br />
					<div class="w-full text-center p-t-55">
						<span class="txt2">
							Not a member?
						</span>

						<a href="Registration.aspx" class="txt2 bo1">
							Sign up now
						</a>
	</div>		
</asp:Content>