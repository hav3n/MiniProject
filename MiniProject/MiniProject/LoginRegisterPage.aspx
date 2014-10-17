<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="LoginRegisterPage.aspx.cs" Inherits="MiniProject.LoginRegisterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">



    <div class="LoginContent">
        <div class="form-group">
            <label for="userTextBox">Enter Email:</label>
            <asp:TextBox ID="userTextBox" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="passTextBox">Email Password:</label>
            <asp:TextBox ID="passTextBox" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
        </div>

        <asp:Button CssClass="btn btn-lg btn-primary btn-block" ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" />
        <asp:Button CssClass="btn btn-lg btn-primary btn-block" ID="RegisterBtn" runat="server" Text="Register" OnClick="RegisterBtn_Click" />
    </div>

</asp:Content>
