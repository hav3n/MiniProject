<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="MiniProject.RegisterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Register</title>
</asp:Content>
<asp:Content ID="PageHolderContent" ContentPlaceHolderID="PageHeaderPlaceHolder" runat="server">
    Register
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <h2 class="text-center">Enter Registration Details</h2>

    <br />
    <br />

    <form id="registerForm" role="form" runat="server">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">

                <div class="form-group has-feedback">
                    <label for="nameTextBox">Name</label>
                    <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:CustomValidator ID="nameValidator"
                        runat="server"
                        ControlToValidate="nameTextBox"
                        ClientValidationFunction="nameValidation"
                        CssClass="text-danger"
                        ErrorMessage="Name cannot have special characters or numbers"></asp:CustomValidator>
                </div>


                <div class="form-group has-feedback">
                    <label for="emailTextBox">Email</label>
                    <asp:TextBox ID="emailTextBox" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    <asp:CustomValidator ID="emailValidator"
                        runat="server"
                        ErrorMessage="Invalid Email"
                        ControlToValidate="emailTextBox"
                        ValidateEmptyText="true"
                        CssClass="text-danger"
                        ClientValidationFunction="emailValidation" />
                </div>

                <div class="form-group has-feedback">
                    <label for="passTextBox">Enter Password</label>
                    <asp:TextBox ID="passTextBox" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:CustomValidator ID="passwordValidator"
                        runat="server"
                        ErrorMessage="Password must have min 7 characters and contain at least one uppercase & lowercase character and a number"
                        ControlToValidate="passTextBox"
                        ValidateEmptyText="true"
                        CssClass="text-danger"
                        ClientValidationFunction="passwordValidation" />
                </div>

                <div class="form-group has-feedback">
                    <label for="reEnterPassTextBox">Re-Enter Password</label>
                    <asp:TextBox ID="reEnterPassTextBox" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:CustomValidator ID="compareValidator" runat="server"
                        ErrorMessage="Passwords must match"
                        ControlToValidate="reEnterPassTextBox"
                        ClientValidationFunction="compareValidation"
                        CssClass="text-danger"
                        ValidateEmptyText="true"></asp:CustomValidator>
                </div>

                <div id="buttonform" class="form-group" runat="server">
                    <asp:Button ID="Register" runat="server" CssClass="btn btn-default" Text="Register" OnClick="Register_Click"></asp:Button>

                    <div id="RegisterAlert" visible="false" class="alert alert-danger alert-dismissible" role="alert" runat="server">
                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <asp:Label ID="alertText" runat="server" Font-Bold="true"></asp:Label>
                    </div>

                </div>
            </div>
        </div>
    </form>

</asp:Content>
