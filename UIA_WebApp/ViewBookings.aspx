<%@ Page Title="List of Bookings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewBookings.aspx.cs" Inherits="UIA_WebApp.ViewBookings" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            border: 1px solid #ddd;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2
        }

        th {
            background-color: #4CAF50;
            color: white;
        }
        .auto-style3 {
            width: 230px;
        }
        .auto-style4 {
            width: 97%;
        }
        .auto-style5 {
            width: 39%;
        }
        .auto-style6 {
            width: 300px;
        }
        .auto-style7 {
            width: 485px;
        }
        .auto-style8 {
            width: 136px;
        }
    </style>
    <h2 style="text-align: justify"><%: Title %>.</h2>
    <h3 style="text-align: justify"><strong>Here are the List of Bookings that you have made:</strong></h3>
    <asp:PlaceHolder ID="PopulateTablePlaceHolder" runat="server">

    </asp:PlaceHolder>
</asp:Content>
