<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="LoginRegisterPage.aspx.cs" Inherits="MiniProject.LoginRegisterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <title>Login</title>
</asp:Content>
<asp:Content ID="LoginRegisterContent" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <form id="loginForm" role="form" runat="server">
        <div class="login-container">
            <div class="form-group">
                <label for="userTextBox">Enter Email:</label>
                <asp:TextBox ID="userTextBox" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="passTextBox">Email Password:</label>
                <asp:TextBox ID="passTextBox" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
            </div>
            <div class="checkbox">
                <label>
                    <asp:CheckBox Text="Remember Me?" ID="rememeberCheckBox" runat="server" />
                </label>
            </div>
            <asp:Button CssClass="btn btn-lg btn-primary btn-block" ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" />
            <asp:Button CssClass="btn btn-lg btn-primary btn-block" ID="RegisterBtn" runat="server" Text="Register" OnClick="RegisterBtn_Click" />
        </div>
    </form>
</asp:Content>
