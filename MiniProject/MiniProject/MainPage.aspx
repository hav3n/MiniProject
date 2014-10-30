<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="MiniProject.MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Main Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <form id="search" role="form" runat="server">

        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <div class="input-group">
                    <asp:TextBox ID="SearchText" runat="server" CssClass="form-control"></asp:TextBox>
                    <span class="input-group-btn">
                        <asp:Button CssClass="btn btn-default" Text="Search" ID="searchbtn" runat="server" OnClick="searchbtn_Click"></asp:Button>
                    </span>
                </div>
            </div>
        </div>
    </form>
    <br /><br />
    <asp:Panel ID="resultholder" cssClass="container" runat="server">
       
       
    </asp:Panel>

</asp:Content>
