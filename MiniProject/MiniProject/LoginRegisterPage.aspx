<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="LoginRegisterPage.aspx.cs" Inherits="MiniProject.LoginRegisterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Login</title>
</asp:Content>
<asp:Content ID="PageHolderContent" ContentPlaceHolderID="PageHeaderPlaceHolder" runat="server">
    Login
</asp:Content>
<asp:Content ID="LoginRegisterContent" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <br />
    <br />
    <form id="loginForm" role="form" runat="server">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-group has-feedback">
                    <label for="userTextBox">Enter Email:</label>
                    <asp:TextBox ID="userTextBox" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="emailValidator"
                        runat="server"
                        ErrorMessage="Invalid Email"
                        ControlToValidate="userTextBox"
                        ValidateEmptyText="true"
                        CssClass="text-danger"
                        ClientValidationFunction="emailValidation" />
                </div>
                <div class="form-group has-feedback">
                    <label for="passTextBox">Enter Password:</label>
                    <asp:TextBox ID="passTextBox" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="passwordValidator"
                        runat="server"
                        ErrorMessage="Password must have min 7 characters and contain at least one uppercase & lowercase character and a number"
                        ControlToValidate="passTextBox"
                        ValidateEmptyText="true"
                        CssClass="text-danger"
                        ClientValidationFunction="passwordValidation" />
                </div>
                <div class="checkbox">
                    <label>
                        <asp:CheckBox Text="Remember Me?" ID="rememeberCheckBox" runat="server" />
                    </label>
                </div>
                <asp:Button CssClass="btn btn-default" ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" />
                <asp:Button CssClass="btn btn-default" ID="RegisterBtn" runat="server" Text="Register" OnClick="RegisterBtn_Click" />
            </div>
        </div>
    </form>
</asp:Content>
