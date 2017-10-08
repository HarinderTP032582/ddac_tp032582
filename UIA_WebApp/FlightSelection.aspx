<%@ Page Title="Flight Selection" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FlightSelection.aspx.cs" Inherits="UIA_WebApp.FlightSelection" %>

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
    <h3 style="text-align: justify"><span style="font-size: x-large; text-decoration: underline"><strong>Flight Selection</strong></span>.</h3>
    <p style="text-align: justify">
        <table style="width: 39%;">
            <tr>
                <th colspan="3" style="text-decoration: underline" class="text-left"><strong>Found Flights</strong></th>
                <th>&nbsp;</th>
            </tr>
            <tr>
                <td style="width: 42px; height: 22px">From:</td>
                <td style="width: 154px; height: 22px">
                    <asp:Label ID="departLabel2" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="height: 22px; width: 110px">Departure Date:</td>
                <td style="height: 22px">
                    <asp:Label ID="departDateLabel2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 42px">To:</td>
                <td style="width: 154px">
                    <asp:Label ID="returnLabel2" runat="server" Text="Label"></asp:Label>
                </td>

                <asp:PlaceHolder ID="returnDatePlaceHolder" runat="server">
                    <td style="width: 112px">Return Date:</td>
                    <td>
                        <asp:Label ID="returnDateLabel2" runat="server" Text="Label"></asp:Label>
                    </td>
                </asp:PlaceHolder>

            </tr>
        </table>
    </p>
    <p style="text-align: justify">&nbsp;</p>
    <p style="text-align: justify">
        <asp:Image ID="departImg1" runat="server" ImageUrl="~/images/depart.png" />
        <span style="text-decoration: underline; font-size: x-large"><strong>Departure </strong>
            <asp:Label ID="departLabel3" runat="server" Style="font-size: medium" Text="Label"></asp:Label>
            &nbsp;-
        <asp:Label ID="returnLabel3" runat="server" Style="font-size: medium" Text="Label"></asp:Label>
        </span>
    </p>
    <table style="width: 97%;">
        <tr>
            <th style="width: 300px; text-align: justify;">&nbsp;</th>
            <th style="width: 150px; text-align: justify;">
                <asp:Label ID="economyLabel1" runat="server" Text="Economy Class"></asp:Label>
            </th>
            <th style="width: 150px; text-align: justify;">
                <asp:Label ID="premiumEClassLabel1" runat="server" Text="Premium Economy Class"></asp:Label>
            </th>
            <th style="width: 150px; text-align: justify">
                <asp:Label ID="businessLabel1" runat="server" Text="Business Class"></asp:Label>
            </th>
        </tr>
        <tr>
            <td style="width: 386px">
                <table class="nav-justified">
                    <tr>
                        <td style="width: 258px; height: 34px;">
                            <asp:Label ID="departNameLabel1" runat="server" Text="Depart"></asp:Label>
                        </td>
                        <td style="width: 248px; height: 34px;">
                            <asp:Image ID="departImage2" runat="server" ImageUrl="~/images/depart_mini.png" />
                            <asp:Label ID="departTimeLabel1" runat="server" Text="DepartTime"></asp:Label>
                            &nbsp;<asp:Label ID="departDateLabel1" runat="server" Text="DepartDate"></asp:Label>
                        </td>
                        <td style="width: 351px; height: 34px;">
                            <asp:Label ID="totaldurationLabel1" runat="server" Text="Duration"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 258px">
                            <asp:Label ID="arrivalNameLabel1" runat="server" Text="Arrival"></asp:Label>
                        </td>
                        <td style="width: 248px">
                            <asp:Image ID="arrivalImage2" runat="server" ImageUrl="~/images/arrival_mini.png" />
                            <asp:Label ID="arrivalTimeLabel1" runat="server" Text="ArrivalTime"></asp:Label>
                            &nbsp;<asp:Label ID="arrivalDateLabel1" runat="server" Text="ArrivalDate"></asp:Label>
                        </td>
                        <td style="width: 351px">
                            <asp:Button ID="flightBtn1" runat="server" Text="FlightID" />
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 181px" class="text-center">
                <asp:RadioButton ID="economyPriceRB1" GroupName ="classGroup1" runat="server" AutoPostBack="True" />
            </td>
            <td style="width: 192px" class="text-center">
                <asp:RadioButton ID="premEcoPriceRB1" GroupName ="classGroup1" runat="server" AutoPostBack="True" />
            </td>
            <td class="text-center">
                <asp:RadioButton ID="businessPriceRB1" GroupName ="classGroup1" runat="server" AutoPostBack="True" />
            </td>
        </tr>
    </table>
    <asp:PlaceHolder ID="returnTitlePlaceHolder" runat="server">
        <p style="text-align: justify">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/arrival.png" />
            <span style="font-size: x-large; text-decoration: underline"><strong>Return </strong>
                <asp:Label ID="returnLabel6" runat="server" Style="font-size: medium" Text="Label"></asp:Label>
                &nbsp;-
        <asp:Label ID="departLabel6" runat="server" Style="font-size: medium" Text="Label"></asp:Label>
            </span>
        </p>
    </asp:PlaceHolder>

    <asp:PlaceHolder ID="returnTablePlaceHolder" runat="server">
        <table style="width: 97%;">
            <tr>
                <th style="width: 300px; text-align: justify;">&nbsp;</th>
                <th style="width: 150px; text-align: justify;">
                    <asp:Label ID="economyLabel2" runat="server" Text="Economy Class"></asp:Label></th>
                <th style="width: 150px; text-align: justify;">
                    <asp:Label ID="premiumELabel2" runat="server" Text="Premium Economy Class"></asp:Label></th>
                <th style="width: 150px; text-align: justify">
                    <asp:Label ID="businessLabel2" runat="server" Text="Business Class"></asp:Label></th>
            </tr>
            <tr>
                <td style="width: 386px; text-align: justify;">
                    <table class="nav-justified">
                        <tr>
                            <td style="width: 258px">
                                <asp:Label ID="departNameLabel2" runat="server" Text="Depart"></asp:Label>
                            </td>
                            <td style="width: 248px">
                                <asp:Image ID="departImage3" runat="server" ImageUrl="~/images/depart_mini.png" />
                                <asp:Label ID="departTimeLabel2" runat="server" Text="DepartTime"></asp:Label>
                                &nbsp;
                                <asp:Label ID="departDateLabel3" runat="server" Text="DepartDate"></asp:Label>
                            </td>
                            <td style="width: 351px">
                                <asp:Label ID="totaldurationLabel2" runat="server" Text="Duration"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 258px">
                                <asp:Label ID="arrivalNameLabel2" runat="server" Text="Arrival"></asp:Label>
                            </td>
                            <td style="width: 248px">
                                <asp:Image ID="arrivalImage3" runat="server" ImageUrl="~/images/arrival_mini.png" />
                                <asp:Label ID="arrivalTimeLabel2" runat="server" Text="ArrivalTime"></asp:Label>
                                &nbsp;
                                <asp:Label ID="arrivalDateLabel3" runat="server" Text="ArrivalDate"></asp:Label>
                            </td>
                            <td style="width: 351px">
                                <asp:Button ID="flightBtn2" runat="server" Text="FlightID" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 181px" class="text-center">
                    <asp:RadioButton ID="economyPriceRB2" GroupName ="classGroup2" runat="server" AutoPostBack="True" />
                </td>
                <td style="width: 181px" class="text-center">
                    <asp:RadioButton ID="premEcoPriceRB2" GroupName ="classGroup2" runat="server" AutoPostBack="True" />
                </td>
                <td style="width: 181px" class="text-center">
                    <asp:RadioButton ID="businessPriceRB2" GroupName ="classGroup2" runat="server" AutoPostBack="True" />
                </td>
            </tr>
        </table>
    </asp:PlaceHolder>

    <br />
    <p style="text-align: justify; width: 1243px; text-decoration: underline; font-size: x-large;">
        <strong>Your selected flights</strong>
    </p>
    <table class="auto-style4">
        <tr>
            <td class="text-left" style="width: 641px">
                <table class="nav-justified" style="width: 99%">
                    <tr>
                        <th colspan="3" style="text-decoration: underline"><strong>Departure flight</strong></th>
                    </tr>
                    <tr>
                        <td style="width: 110px"><strong>Departure</strong></td>
                        <td style="width: 200px">
                            <asp:Label ID="departNameLabel3" runat="server" Text="Depart"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="departTimeLabel3" runat="server" Text="DepartTime"></asp:Label>
                            &nbsp;<asp:Label ID="departDateLabel4" runat="server" Text="DepartDate"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 110px"><strong>Arrival</strong></td>
                        <td style="width: 200px">
                            <asp:Label ID="arrivalNameLabel3" runat="server" Text="Arrival"></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="arrivalTimeLabel3" runat="server" Text="ArrivalTime"></asp:Label>
                            &nbsp;<asp:Label ID="arrivalDateLabel4" runat="server" Text="ArrivalDate"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 110px"><strong>Flight Duration</strong></td>
                        <td style="width: 200px">
                            <asp:Label ID="totaldurationLabel3" runat="server" Text="Duration"></asp:Label>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 110px"><strong>Flight ID</strong></td>
                        <td style="width: 200px">
                            <asp:Label ID="flightIDLabel1" runat="server" Text="FlightID"></asp:Label>
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="text-left" style="width: 641px">
                <asp:PlaceHolder ID="returnDetailsPlaceHolder" runat="server">
                    <table class="nav-justified" style="width: 99%">
                        <tr>
                            <th colspan="3" style="text-decoration: underline"><strong>Return flight</strong></th>
                        </tr>
                        <tr>
                            <td style="width: 110px"><strong>Departure</strong></td>
                            <td style="width: 200px">
                                <asp:Label ID="departNameLabel4" runat="server" Text="Depart"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="departTimeLabel4" runat="server" Text="DepartTime"></asp:Label>
                                &nbsp;<asp:Label ID="departDateLabel5" runat="server" Text="DepartDate"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 110px"><strong>Arrival</strong></td>
                            <td style="width: 200px">
                                <asp:Label ID="arrivalNameLabel4" runat="server" Text="Arrival"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="arrivalTimeLabel4" runat="server" Text="ArrivalTime"></asp:Label>
                                &nbsp;<asp:Label ID="arrivalDateLabel5" runat="server" Text="ArrivalDate"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 110px"><strong>Flight Duration</strong></td>
                            <td style="width: 200px">
                                <asp:Label ID="totaldurationLabel4" runat="server" Text="Duration"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 110px"><strong>Flight ID</strong></td>
                            <td style="width: 200px">
                                <asp:Label ID="flightIDLabel2" runat="server" Text="FlightID"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:PlaceHolder>
            </td>
        </tr>
    </table>
    <br />
    <p style="text-align: justify; text-decoration: underline; font-size: x-large;" class="auto-style7">
        <strong>T</strong><span style="font-weight: bold">otal price</span>
    </p>
    <table class="auto-style5">
        <tr>
            <th style="text-align: justify; text-decoration: underline" class="auto-style8"><strong>Passenger</strong></th>
            <th style="text-align: justify; text-decoration: underline" class="auto-style6"><strong>Booking Class</strong></th>
            <th style="text-align: justify; text-decoration: underline; width: 138px"><strong>Total Amount</strong></th>
        </tr>
        <tr>
            <asp:PlaceHolder ID="AdultLabelPlaceHolder" runat="server">
                <td style="text-align: justify; width: 29px">
                    <asp:Label ID="adultLabel1" runat="server" Text="adult"></asp:Label>
                </td>
                <td style="text-align: justify; width: 96px">
                    <asp:Label ID="classNameLabel1" runat="server"></asp:Label>
                    <asp:Label ID="returnClassLabel1" runat="server"></asp:Label>
                </td>
                <td style="text-align: justify; width: 138px">
                    <asp:Label ID="adultPriceLabel1" runat="server" Text="adultprice"></asp:Label>
                </td>
            </asp:PlaceHolder>
        </tr>
        <tr>
            <asp:PlaceHolder ID="ChildLabelPlaceHolder" runat="server">
                <td style="text-align: justify; width: 29px">
                    <asp:Label ID="childLabel1" runat="server" Text="child"></asp:Label>
                </td>
                <td style="text-align: justify; width: 96px">
                    <asp:Label ID="classNameLabel2" runat="server"></asp:Label>
                    <asp:Label ID="returnClassLabel2" runat="server"></asp:Label>
                </td>
                <td style="text-align: justify; width: 138px">
                    <asp:Label ID="childPriceLabel1" runat="server" Text="childprice"></asp:Label>
                </td>
            </asp:PlaceHolder>
        </tr>
        <tr>
            <asp:PlaceHolder ID="InfantLabelPlaceHolder" runat="server">
                <td style="text-align: justify; width: 29px">
                    <asp:Label ID="infantLabel1" runat="server" Text="infant"></asp:Label>
                </td>
                <td style="text-align: justify; width: 96px">
                    <asp:Label ID="classNameLabel3" runat="server"></asp:Label>
                    <asp:Label ID="returnClassLabel3" runat="server"></asp:Label>
                </td>
                <td style="text-align: justify; width: 138px">
                    <asp:Label ID="infantPriceLabel1" runat="server" Text="infantprice"></asp:Label>
                </td>
            </asp:PlaceHolder>
        </tr>
        <tr>
            <td style="text-align: justify; " class="auto-style8">&nbsp;</td>
            <td style="text-align: justify; " class="auto-style6">&nbsp;</td>
            <td style="text-align: justify; width: 138px">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: justify; " class="auto-style8">&nbsp;</td>
            <td style="text-align: justify; " class="auto-style6">&nbsp;</td>
            <td class="text-left" style="width: 138px"><strong>Total Price: </strong>
                <asp:Label ID="totalPriceLabel1" runat="server" Text="totalprice"></asp:Label>
                &nbsp;</td>
        </tr>
    </table>
    <div style="margin: 0px; padding: 4px 0px; font-family: &quot; source sans pro&quot; , sans-serif; font-weight: 400; color: rgb(32, 28, 28); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
        <strong style="margin: 0px; padding: 0px; font-family: &quot; source sans pro&quot; , sans-serif; font-weight: bold;">Price and availability are not guaranteed until you receive a booking reference on the confirmation page.</strong>
    </div>
    <div style="margin: 0px; padding: 4px 0px; font-family: &quot; source sans pro&quot; , sans-serif; font-weight: 400; color: rgb(32, 28, 28); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
        <strong style="margin: 0px; padding: 0px; font-family: &quot; source sans pro&quot; , sans-serif; font-weight: bold;">All passengers are required to provide passport information</strong><span>&nbsp;</span>at the time of booking flight tickets.
    </div>
    <div class="text-center" style="margin: 0px; padding: 4px 0px; font-family: &quot; source sans pro&quot; , sans-serif; font-weight: 400; color: rgb(32, 28, 28); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; width: 464px;">
        <asp:Button ID="confirmTicketBtn1" runat="server" Text="Confirm" OnClick="confirmTicketBtn1_Click" CssClass="button button2" />
    </div>

</asp:Content>
