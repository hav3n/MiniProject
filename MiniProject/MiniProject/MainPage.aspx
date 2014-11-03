<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="MiniProject.MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Main Page</title>
</asp:Content>
<asp:Content ID="PageHolderContent" ContentPlaceHolderID="PageHeaderPlaceHolder" runat="server">
    Search
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <br />

    <div id="LoginAlert" class=" alert alert-success alert-dismissible col-md-6 col-md-offset-3 container" role="alert" runat="server">
        <asp:Label ID="alertText" runat="server" Font-Bold="true"></asp:Label>
    </div>

    <form id="search" role="form" runat="server">

        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <label for="catedropDown">Choose a Category:</label>
                <asp:DropDownList ID="catedropDown" runat="server" CssClass="form-control"></asp:DropDownList>
                <br />
                <div class="input-group">
                    <asp:TextBox ID="SearchText" runat="server" CssClass="form-control"></asp:TextBox>
                    <span class="input-group-btn">
                        <asp:Button CssClass="btn btn-default" Text="Search" ID="searchbtn" runat="server" OnClick="searchbtn_Click"></asp:Button>
                    </span>
                </div>
            </div>
        </div>
        <br />
        <asp:GridView ID="resultGrid" CssClass="table table-hover table-striped" GridLines="None" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image runat="server" ID="productImage" CssClass="img-thumbnail img-responsive center-block" AlternateText="Product Image" ImageUrl='<%# Eval("image") %>' Width="140px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Stock" DataField="stock" />
                <asp:BoundField HeaderText="Price(Rs.)" DataField="price" />
                <asp:BoundField HeaderText="Offer" DataField="offer" />
                <asp:TemplateField HeaderText="Store Link">
                    <ItemTemplate>
                        <a href="<%# Eval("url") %>"><%# Eval("website") %></a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
    <br />
    <br />

</asp:Content>
