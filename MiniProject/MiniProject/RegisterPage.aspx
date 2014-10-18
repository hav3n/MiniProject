<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="MiniProject.RegisterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Register</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <h2 class="text-center">Enter Registration Details</h2>

    <div class="formBody">
        <form id="registerForm" role="form" runat="server">

            <div class="form-group">
                <label for="emailTextBox">Email</label>
                <asp:TextBox ID="emailTextBox" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="passTextBox">Enter Password</label>
                <asp:TextBox ID="passTextBox" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="reEnterPassTextBox">Re-Enter Password</label>
                <asp:TextBox ID="reEnterPassTextBox" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button ID="TextBox1" runat="server" CssClass="btn btn-default" Text="Register"></asp:Button>
            </div>
        </form>

    </div>

</asp:Content>
