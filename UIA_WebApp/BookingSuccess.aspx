<%@ Page Title="Booking Success" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookingSuccess.aspx.cs" Inherits="UIA_WebApp.BookingSuccess" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="text-align: justify"><%: Title %>.</h2>
    <h3 style="text-align: justify; color: #000000;"><strong><em>Congratulations! You have successfully completed your booking!</em></strong></h3>
    <h4 style="text-align: justify; color: #000000;"><asp:HyperLink ID="viewBookHyperLink" runat="server" NavigateUrl="~/ViewBookings.aspx" Text="Click here to view your bookings made!">HyperLink</asp:HyperLink></h4>
</asp:Content>
