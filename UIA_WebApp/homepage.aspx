<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="UIA_WebApp.homepage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="text-align: center">
        <h1>Welcome to Ukraine International Airlines (UIA)</h1>
        
        <div class="container">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/UIA_Logos_line.gif" style="width: 100%" CssClass="image" />
            <div class="middle">
                <div class="text" style="width: 257px">This is UIA's Flight Booking System! *Assignment Prototype*</div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <asp:Image ID="Image2" runat="server" Height="271px" ImageUrl="~/images/large_banner_988x340.jpg" Width="623px" />
        </div>
        <div class="col-md-4" style="text-align: left">
            <h2>&nbsp;</h2>
            <div>
            </div>
        </div>
        <div class="col-md-4" style="text-align: left">
            <h2>&nbsp;</h2>
            <p>
                &nbsp;
            </p>
            <p>
                &nbsp;
            </p>
        </div>
    </div>

</asp:Content>
