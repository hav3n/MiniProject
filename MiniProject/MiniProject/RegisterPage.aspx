<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="MiniProject.RegisterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Register</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <h2 class="text-center">Enter Registration Details</h2>

    <div class="formBody">
        <form id="registerForm" class="form-horizontal" role="form" runat="server">

            <div class="form-group">
                <label for="emailTextBox" class="col-sm-2 control-label">Email</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="emailTextBox" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label for="passTextBox" class="col-sm-2 control-label">Enter Password</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="passTextBox" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label for="reEnterPassTextBox" class="col-sm-2 control-label">Re-Enter Password</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="reEnterPassTextBox" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="TextBox1" runat="server" CssClass="btn btn-default" Text="Register"></asp:Button>
                </div>
            </div>
        </form>

    </div>

</asp:Content>
