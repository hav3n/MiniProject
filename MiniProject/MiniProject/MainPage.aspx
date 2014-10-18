<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="MiniProject.MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Main Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">

    <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
            <div class="input-group">
                <input type="text" class="form-control" id="searchInput" runat="server" />
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button" id="searchButton" runat="server">
                        <span class="glyphicon glyphicon-search"></span>&nbsp;Search
                    </button>
                </span>
            </div>
        </div>
    </div>

</asp:Content>
