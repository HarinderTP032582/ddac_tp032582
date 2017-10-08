<%@ Page Title="Flight Booking System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MakeBookings.aspx.cs" Inherits="UIA_WebApp.MakeBookings" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type = "text/javascript">
        function SetSource(SourceID)
        {
            var hidSourceID =
            document.getElementById("<%=hidSourceID.ClientID%>");
            hidSourceID.value = SourceID;
        }
    </script>
    <h2 style="text-align: justify"><%: Title %>.</h2>
    <h3 style="text-align: justify">Search For Available Flights Here:</h3>

    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button style="text-align: justify" type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 style="text-align: justify" class="modal-title">Select a Country / Airport</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">A</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="austriaBtn1" runat="server" Text="Austria" CssClass="button button2" OnClick="AnyButton_OnClick" /></td>
                                <td>
                                    <asp:Button ID="australiaBtn1" runat="server" Text="Australia" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">B</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="belgiumBtn1" runat="server" Text="Belgium" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="bulgariaBtn1" runat="server" Text="Bulgaria" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">C</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="canadaBtn1" runat="server" Text="Canada" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="chinaBtn1" runat="server" Text="China" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="croatiaBtn1" runat="server" Text="Croatia" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="cambodiaBtn1" runat="server" Text="Cambodia" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">D</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>Not available!</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">E</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="estoniaBtn1" runat="server" Text="Estonia" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="egyptBtn1" runat="server" Text="Egypt" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">F</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="finBtn1" runat="server" Text="Finland" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="franceBtn1" runat="server" Text="France" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">G</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="germanyBtn1" runat="server" Text="Germany" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="greeceBtn1" runat="server" Text="Greece" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">H</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="hongkongBtn1" runat="server" Text="Hong Kong" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="hungaryBtn1" runat="server" Text="Hungary" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">I</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="israelBtn1" runat="server" Text="Israel" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="indiaBtn1" runat="server" Text="India" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="iranBtn1" runat="server" Text="Iran" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="italyBtn1" runat="server" Text="Italy" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">J</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="jordanBtn1" runat="server" Text="Jordan" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">K</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="kazakBtn1" runat="server" Text="Kazakhstan" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">L</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="lebanonBtn1" runat="server" Text="Lebanon" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">M</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="moroccoBtn1" runat="server" Text="Morocco" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="myanmarBtn1" runat="server" Text="Myanmar" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="maldivesBtn1" runat="server" Text="Maldives" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">N</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="netherlandsBtn1" runat="server" Text="Netherlands" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="norwayBtn1" runat="server" Text="Norway" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">O</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>Not Available!</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">P</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="pakistanBtn1" runat="server" Text="Pakistan" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="polandBtn1" runat="server" Text="Poland" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="portugalBtn1" runat="server" Text="Portugal" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">Q</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>Not Available!</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">R</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="romaniabtn1" runat="server" Text="Romania" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="russiaBtn1" runat="server" Text="Russia" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">S</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="spainBtn1" runat="server" Text="Spain" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="switzerlandBtn1" runat="server" Text="Switzerland" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="swedenBtn1" runat="server" Text="Sweden" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="singaporeBtn1" runat="server" Text="Singapore" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="srilankaBtn1" runat="server" Text="Sri Lanka" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="southkoreaBtn1" runat="server" Text="South Korea" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>
                                    <asp:Button ID="southafricaBtn1" runat="server" Text="South Africa" CssClass="button button2" OnClick="AnyButton_OnClick"/></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">T</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="thailandBtn1" runat="server" Text="Thailand" CssClass="button button2" /></td>
                                <td>
                                    <asp:Button ID="turkeyBtn1" runat="server" Text="Turkey" CssClass="button button2" /></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">U</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="unitedAEbtn1" runat="server" Text="United Arab Emirates" CssClass="button button2" /></td>
                                <td>
                                    <asp:Button ID="ukBtn1" runat="server" Text="United Kingdom" CssClass="button button2" /></td>
                                <td>
                                    <asp:Button ID="ukraineBtn1" runat="server" Text="Ukraine" CssClass="button button2" /></td>
                                <td>
                                    <asp:Button ID="usaBtn1" runat="server" Text="USA" CssClass="button button2" /></td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">V</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>
                                    <asp:Button ID="vietnamBtn1" runat="server" Text="Vietnam" CssClass="button button2" /></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">W</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>Not Available!</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">X</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>Not Available!</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">Y</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>Not Available!</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">Z</h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td>Not Available!</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <div id="airportModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button style="text-align: justify" type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 style="text-align: justify" class="modal-title">Select a Country / Airport</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <div class="modal-header">
                            <h5 style="text-align: justify" class="modal-title">
                                <asp:Label ID="countryNameLabel1" runat="server" Text="Label"></asp:Label></h5>
                        </div>
                        <table style="table-layout: fixed">
                            <tr>
                                <td><asp:Button ID="airportBtn1" runat="server" CssClass="button button2" OnClick="AirportButton_OnClick"/></td>
                            </tr>
                            <tr>
                                <td><asp:Button ID="airportBtn2" runat="server" CssClass="button button2" OnClick="AirportButton_OnClick"/></td>
                            </tr>
                            <tr>
                                <td><asp:Button ID="airportBtn3" runat="server" CssClass="button button2" OnClick="AirportButton_OnClick"/></td>
                            </tr>
                            <tr>
                                <td><asp:Button ID="airportBtn4" runat="server" CssClass="button button2" OnClick="AirportButton_OnClick"/></td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <table style="width: 100%;">
        <tr>
            <td style="width: 67px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/depart.png" />
            </td>
            <td style="width: 451px">
                <table class="nav-justified" style="width: 99%">
                    <tr>
                        <td class="text-right" style="width: 104px">From:</td>
                        <td style="width: 339px" class="text-left">
                            <asp:TextBox ID="departTBox1" runat="server" Height="25px" Width="300px" CssClass="col-md-offset-0" ReadOnly="true"></asp:TextBox>
                            <asp:ImageButton ID="openDepartBtn2" runat="server" data-toggle="modal" data-target="#myModal" Height="25px" ImageUrl="~/images/search.png" Width="25px" OnClientClick = "SetSource(this.id)"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-right" style="width: 104px">Departure Date:</td>
                        <td style="width: 339px" class="text-left">
                            <asp:TextBox ID="departDateTBox1" TextMode="Date" runat="server" Height="25px" Width="110px"></asp:TextBox>
                            <asp:RangeValidator ID="departRValid1" runat="server" ControlToValidate="departDateTBox1" ErrorMessage="Only present date or greater!" OnPreRender="departRValid1_PreRender" Type="Date" style="font-size: small"></asp:RangeValidator>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width: 289px;">
                    <tr>
                        <td style="text-align: justify; width: 96px">Adult</td>
                        <td style="text-align: justify; width: 96px">Child (2-11)</td>
                        <td style="text-align: justify; width: 97px">Infant (0-2)</td>
                    </tr>
                    <tr>
                        <td style="text-align: justify; width: 96px">
                            <asp:DropDownList ID="adultDDList1" runat="server">
                                <asp:ListItem Value="0"></asp:ListItem>
                                <asp:ListItem Value="1" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="2"></asp:ListItem>
                                <asp:ListItem Value="3"></asp:ListItem>
                                <asp:ListItem Value="4"></asp:ListItem>
                                <asp:ListItem Value="5"></asp:ListItem>
                                <asp:ListItem Value="6"></asp:ListItem>
                                <asp:ListItem Value="7"></asp:ListItem>
                                <asp:ListItem Value="8"></asp:ListItem>
                                <asp:ListItem Value="9"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="text-align: justify; width: 96px">
                            <asp:DropDownList ID="childDDList1" runat="server">
                                <asp:ListItem Value="0"></asp:ListItem>
                                <asp:ListItem Value="1"></asp:ListItem>
                                <asp:ListItem Value="2"></asp:ListItem>
                                <asp:ListItem Value="3"></asp:ListItem>
                                <asp:ListItem Value="4"></asp:ListItem>
                                <asp:ListItem Value="5"></asp:ListItem>
                                <asp:ListItem Value="6"></asp:ListItem>
                                <asp:ListItem Value="7"></asp:ListItem>
                                <asp:ListItem Value="8"></asp:ListItem>
                                <asp:ListItem Value="9"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="text-align: justify; width: 97px">
                            <asp:DropDownList ID="infantDDList1" runat="server">
                                <asp:ListItem Value="0"></asp:ListItem>
                                <asp:ListItem Value="1"></asp:ListItem>
                                <asp:ListItem Value="2"></asp:ListItem>
                                <asp:ListItem Value="3"></asp:ListItem>
                                <asp:ListItem Value="4"></asp:ListItem>
                                <asp:ListItem Value="5"></asp:ListItem>
                                <asp:ListItem Value="6"></asp:ListItem>
                                <asp:ListItem Value="7"></asp:ListItem>
                                <asp:ListItem Value="8"></asp:ListItem>
                                <asp:ListItem Value="9"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: justify; width: 96px">&nbsp;</td>
                        <td style="text-align: justify; width: 96px">&nbsp;</td>
                        <td style="text-align: justify; width: 97px">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 67px">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/arrival.png" Style="margin-right: 0px" />
            </td>
            <td style="width: 451px">
                <table style="width: 99%;">
                    <tr>
                        <td class="text-right" style="width: 103px">To:</td>
                        <td style="width: 341px" class="text-left">
                            <asp:TextBox ID="arrivalTBox1" runat="server" Height="25px" Width="300px" ReadOnly="True"></asp:TextBox>
                            <asp:ImageButton ID="openArrivalBtn2" runat="server" data-toggle="modal" data-target="#myModal" Height="25px" ImageUrl="~/images/search.png" Width="25px" OnClientClick = "SetSource(this.id)"/>
                        </td>
                    </tr>
                    <asp:PlaceHolder ID="ArrivalPlaceHolder" runat="server">
                        <tr>
                            <td class="text-right" style="height: 22px; width: 103px">Return Date:</td>
                            <td style="height: 22px; width: 341px" class="text-left">
                                <asp:TextBox ID="returnDateTBox1" TextMode="Date" runat="server" Height="25px" Width="110px"></asp:TextBox>
                                <asp:RangeValidator ID="returnDateRValid" runat="server" ErrorMessage="Only present date or greater!" ControlToValidate="returnDateTBox1" OnPreRender="returnRValid1_PreRender" Type="Date" style="font-size: small"></asp:RangeValidator>
                            </td>
                        </tr>
                    </asp:PlaceHolder>
                </table>
            </td>
            <td class="text-left">
                <table style="width: 15%;">
                    <tr>
                        <td style="width: 119px">
                            <asp:RadioButtonList ID="flightTypesRBList1" AutoPostBack="true" runat="server">
                                <asp:ListItem Text="Round Trip" Value="Round Trip" Selected="True" />
                                <asp:ListItem Text="One Way" Value="One Way" />
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 67px">&nbsp;</td>
            <td style="width: 451px">
                <asp:Button ID="searchBtn1" runat="server" Text="Search" Width="100px" OnClick="searchBtn1_Click" CssClass="button button2" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:HiddenField ID="hidSourceID" runat="server" />
</asp:Content>
