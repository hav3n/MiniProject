<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="LoginRegisterPage.aspx.cs" Inherits="MiniProject.LoginRegisterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">



    <div class="LoginContent">
        Email:
    <asp:TextBox ID="userTB" class="form-control" TextMode="Email" runat="server"></asp:TextBox>
        <br />
        Pass:
    <asp:TextBox ID="passTB" class="form-control" TextMode="Password" runat="server"></asp:TextBox>
        <br />

        <asp:Button CssClass="btn btn-lg btn-primary btn-block" ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" />
        <asp:Button CssClass="btn btn-lg btn-primary btn-block" ID="RegisterBtn" runat="server" Text="Register" OnClick="RegisterBtn_Click" />
    </div>

</asp:Content>
