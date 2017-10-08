<%@ Page Title="Booking Confirmation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookingConfirmation.aspx.cs" Inherits="UIA_WebApp.BookingConfirmation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="text-align: justify"><%: Title %>.</h2>
    <h3 style="text-align: justify">Booking Confirmation - Passenger Details & Payment.</h3>
    <h4 style="text-align: justify">Enter Passenger Details.</h4>
    <script>
        function CheckBoxRequired_ClientValidate(sender, e) {
            e.IsValid = jQuery(".AcceptedAgreement input:checkbox").is(':checked');
        }
    </script>
    <div class="text-left">
        <asp:UpdatePanel ID="updateCount1" runat="server">
            <ContentTemplate>
                <table style="table-layout: fixed">
                    <tr>
                        <td class="auto-style1" colspan="3">
                            <asp:UpdatePanel ID="bookingProgress1" runat="server">
                                <ContentTemplate>
                                    <strong>
                                        <asp:Label ID="countPassenger1" runat="server" Style="font-size: x-large; text-decoration: underline"></asp:Label>
                                    </strong>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="width: 294px; text-align: left; height: 44px;"><strong>Title<br />
                        </strong>
                            <asp:DropDownList ID="TitleDDList" runat="server">
                                <asp:ListItem>Mr.</asp:ListItem>
                                <asp:ListItem>Mrs.</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style2" style="width: 595px; text-align: left; height: 44px;"><strong>Passport Number</strong><br />
                            <asp:TextBox ID="PassportNoTBox" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style2" style="width: 595px; text-align: left; height: 44px;"><strong>Passenger Type:</strong><br />
                            <asp:DropDownList ID="passengerTypeDDList1" runat="server">
                                <asp:ListItem>Adult</asp:ListItem>
                                <asp:ListItem>Child</asp:ListItem>
                                <asp:ListItem>Infant</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="width: 294px; text-align: left; height: 44px;"><strong>First Name<br />
                        </strong>
                            <asp:TextBox ID="FirstNameTBox" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style2" style="width: 595px; text-align: left; height: 44px;"><strong>Gender</strong><br />
                            <asp:DropDownList ID="GenderDDList" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style2" style="width: 595px; text-align: left; height: 44px;"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="width: 294px; text-align: left;"><strong>Last Name</strong><br />
                            <asp:TextBox ID="LastNameTBox" runat="server" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style2" style="width: 595px; text-align: left;"><strong>Passport Country</strong><br />
                            <asp:DropDownList ID="PassportCountryDDList" runat="server">
                                <asp:ListItem Value="Afghanistan"></asp:ListItem>
                                <asp:ListItem Value="Albania"></asp:ListItem>
                                <asp:ListItem Value="Algeria"></asp:ListItem>
                                <asp:ListItem Value="American Samoa"></asp:ListItem>
                                <asp:ListItem Value="Andorra"></asp:ListItem>
                                <asp:ListItem Value="Angola"></asp:ListItem>
                                <asp:ListItem Value="Anguilla"></asp:ListItem>
                                <asp:ListItem Value="Antigua and Barbuda"></asp:ListItem>
                                <asp:ListItem Value="Argentina"></asp:ListItem>
                                <asp:ListItem Value="Armenia"></asp:ListItem>
                                <asp:ListItem Value="Aruba"></asp:ListItem>
                                <asp:ListItem Value="Australia"></asp:ListItem>
                                <asp:ListItem Value="Austria"></asp:ListItem>
                                <asp:ListItem Value="Azerbaijan"></asp:ListItem>
                                <asp:ListItem Value="Bahamas"></asp:ListItem>
                                <asp:ListItem Value="Bahrain"></asp:ListItem>
                                <asp:ListItem Value="Bangladesh"></asp:ListItem>
                                <asp:ListItem Value="Barbados"></asp:ListItem>
                                <asp:ListItem Value="Belarus"></asp:ListItem>
                                <asp:ListItem Value="Belgium"></asp:ListItem>
                                <asp:ListItem Value="Belize"></asp:ListItem>
                                <asp:ListItem Value="Benin"></asp:ListItem>
                                <asp:ListItem Value="Bermuda"></asp:ListItem>
                                <asp:ListItem Value="Bhutan"></asp:ListItem>
                                <asp:ListItem Value="Bolivia"></asp:ListItem>
                                <asp:ListItem Value="Bosnia and Herzegovina"></asp:ListItem>
                                <asp:ListItem Value="Botswana"></asp:ListItem>
                                <asp:ListItem Value="Brazil"></asp:ListItem>
                                <asp:ListItem Value="Brunei Darussalam"></asp:ListItem>
                                <asp:ListItem Value="Bulgaria"></asp:ListItem>
                                <asp:ListItem Value="Burkina Faso"></asp:ListItem>
                                <asp:ListItem Value="Burundi"></asp:ListItem>
                                <asp:ListItem Value="Cambodia"></asp:ListItem>
                                <asp:ListItem Value="Cameroon"></asp:ListItem>
                                <asp:ListItem Value="Canada"></asp:ListItem>
                                <asp:ListItem Value="Cape Verde"></asp:ListItem>
                                <asp:ListItem Value="Cayman Islands"></asp:ListItem>
                                <asp:ListItem Value="Central African Republic"></asp:ListItem>
                                <asp:ListItem Value="Chad"></asp:ListItem>
                                <asp:ListItem Value="Chile"></asp:ListItem>
                                <asp:ListItem Value="China"></asp:ListItem>
                                <asp:ListItem Value="Colombia"></asp:ListItem>
                                <asp:ListItem Value="Comoros"></asp:ListItem>
                                <asp:ListItem Value="Cook Islands"></asp:ListItem>
                                <asp:ListItem Value="Costa Rica"></asp:ListItem>
                                <asp:ListItem Value="Croatia"></asp:ListItem>
                                <asp:ListItem Value="Cuba"></asp:ListItem>
                                <asp:ListItem Value="Cyprus"></asp:ListItem>
                                <asp:ListItem Value="Czech Republic"></asp:ListItem>
                                <asp:ListItem Value="Denmark"></asp:ListItem>
                                <asp:ListItem Value="Djibouti"></asp:ListItem>
                                <asp:ListItem Value="Dominica"></asp:ListItem>
                                <asp:ListItem Value="Dominican Republic"></asp:ListItem>
                                <asp:ListItem Value="Ecuador"></asp:ListItem>
                                <asp:ListItem Value="Egypt"></asp:ListItem>
                                <asp:ListItem Value="El Salvador"></asp:ListItem>
                                <asp:ListItem Value="Estonia"></asp:ListItem>
                                <asp:ListItem Value="Ethiopia"></asp:ListItem>
                                <asp:ListItem Value="Falkland Islands"></asp:ListItem>
                                <asp:ListItem Value="Faroe Islands"></asp:ListItem>
                                <asp:ListItem Value="Fiji"></asp:ListItem>
                                <asp:ListItem Value="Finland"></asp:ListItem>
                                <asp:ListItem Value="France"></asp:ListItem>
                                <asp:ListItem Value="Gabon"></asp:ListItem>
                                <asp:ListItem Value="Gambia"></asp:ListItem>
                                <asp:ListItem Value="Georgia"></asp:ListItem>
                                <asp:ListItem Value="Germany"></asp:ListItem>
                                <asp:ListItem Value="Ghana"></asp:ListItem>
                                <asp:ListItem Value="Gibraltar"></asp:ListItem>
                                <asp:ListItem Value="Great Britain"></asp:ListItem>
                                <asp:ListItem Value="Greece"></asp:ListItem>
                                <asp:ListItem Value="Greenland"></asp:ListItem>
                                <asp:ListItem Value="Guam"></asp:ListItem>
                                <asp:ListItem Value="Guatemala"></asp:ListItem>
                                <asp:ListItem Value="Guinea"></asp:ListItem>
                                <asp:ListItem Value="Guyana"></asp:ListItem>
                                <asp:ListItem Value="Haiti"></asp:ListItem>
                                <asp:ListItem Value="Honduras"></asp:ListItem>
                                <asp:ListItem Value="Hong Kong"></asp:ListItem>
                                <asp:ListItem Value="Hungary"></asp:ListItem>
                                <asp:ListItem Value="Iceland"></asp:ListItem>
                                <asp:ListItem Value="India"></asp:ListItem>
                                <asp:ListItem Value="Indonesia"></asp:ListItem>
                                <asp:ListItem Value="Iran"></asp:ListItem>
                                <asp:ListItem Value="Iraq"></asp:ListItem>
                                <asp:ListItem Value="Ireland"></asp:ListItem>
                                <asp:ListItem Value="Israel"></asp:ListItem>
                                <asp:ListItem Value="Italy"></asp:ListItem>
                                <asp:ListItem Value="Ivory Coast"></asp:ListItem>
                                <asp:ListItem Value="Jamaica"></asp:ListItem>
                                <asp:ListItem Value="Japan"></asp:ListItem>
                                <asp:ListItem Value="Jordan"></asp:ListItem>
                                <asp:ListItem Value="Kazakhstan"></asp:ListItem>
                                <asp:ListItem Value="Kenya"></asp:ListItem>
                                <asp:ListItem Value="South Korea"></asp:ListItem>
                                <asp:ListItem Value="Kosovo"></asp:ListItem>
                                <asp:ListItem Value="Kuwait"></asp:ListItem>
                                <asp:ListItem Value="Kyrgyzstan"></asp:ListItem>
                                <asp:ListItem Value="Lebanon"></asp:ListItem>
                                <asp:ListItem Value="Liberia"></asp:ListItem>
                                <asp:ListItem Value="Libya"></asp:ListItem>
                                <asp:ListItem Value="Luxembourg"></asp:ListItem>
                                <asp:ListItem Value="Macau"></asp:ListItem>
                                <asp:ListItem Value="Madagascar"></asp:ListItem>
                                <asp:ListItem Value="Malawi"></asp:ListItem>
                                <asp:ListItem Value="Malaysia"></asp:ListItem>
                                <asp:ListItem Value="Maldives"></asp:ListItem>
                                <asp:ListItem Value="Mali"></asp:ListItem>
                                <asp:ListItem Value="Mauritius"></asp:ListItem>
                                <asp:ListItem Value="Mexico"></asp:ListItem>
                                <asp:ListItem Value="Moldova"></asp:ListItem>
                                <asp:ListItem Value="Monaco"></asp:ListItem>
                                <asp:ListItem Value="Mongolia"></asp:ListItem>
                                <asp:ListItem Value="Morocco"></asp:ListItem>
                                <asp:ListItem Value="Mozambique"></asp:ListItem>
                                <asp:ListItem Value="Myanmar"></asp:ListItem>
                                <asp:ListItem Value="Namibia"></asp:ListItem>
                                <asp:ListItem Value="Nepal"></asp:ListItem>
                                <asp:ListItem Value="Netherlands"></asp:ListItem>
                                <asp:ListItem Value="New Zealand"></asp:ListItem>
                                <asp:ListItem Value="Nigeria"></asp:ListItem>
                                <asp:ListItem Value="Norway"></asp:ListItem>
                                <asp:ListItem Value="Oman"></asp:ListItem>
                                <asp:ListItem Value="Pakistan"></asp:ListItem>
                                <asp:ListItem Value="Paraguay"></asp:ListItem>
                                <asp:ListItem Value="Peru"></asp:ListItem>
                                <asp:ListItem Value="Philippines"></asp:ListItem>
                                <asp:ListItem Value="Poland"></asp:ListItem>
                                <asp:ListItem Value="Portugal"></asp:ListItem>
                                <asp:ListItem Value="Puerto Rico"></asp:ListItem>
                                <asp:ListItem Value="Qatar"></asp:ListItem>
                                <asp:ListItem Value="Romania"></asp:ListItem>
                                <asp:ListItem Value="Russia"></asp:ListItem>
                                <asp:ListItem Value="Rwanda"></asp:ListItem>
                                <asp:ListItem Value="Samoa"></asp:ListItem>
                                <asp:ListItem Value="Saudi Arabia"></asp:ListItem>
                                <asp:ListItem Value="Singapore"></asp:ListItem>
                                <asp:ListItem Value="Slovakia"></asp:ListItem>
                                <asp:ListItem Value="Slovenia"></asp:ListItem>
                                <asp:ListItem Value="Somalia"></asp:ListItem>
                                <asp:ListItem Value="South Africa"></asp:ListItem>
                                <asp:ListItem Value="South Africa"></asp:ListItem>
                                <asp:ListItem Value="Spain"></asp:ListItem>
                                <asp:ListItem Value="Sri Lanka"></asp:ListItem>
                                <asp:ListItem Value="Sudan"></asp:ListItem>
                                <asp:ListItem Value="Sweden"></asp:ListItem>
                                <asp:ListItem Value="Switzerland"></asp:ListItem>
                                <asp:ListItem Value="Taiwan"></asp:ListItem>
                                <asp:ListItem Value="Tanzania"></asp:ListItem>
                                <asp:ListItem Value="Thailand"></asp:ListItem>
                                <asp:ListItem Value="Tibet"></asp:ListItem>
                                <asp:ListItem Value="Trinidad and Tobago"></asp:ListItem>
                                <asp:ListItem Value="Tunisia"></asp:ListItem>
                                <asp:ListItem Value="Turkey"></asp:ListItem>
                                <asp:ListItem Value="Uganda"></asp:ListItem>
                                <asp:ListItem Value="Ukraine"></asp:ListItem>
                                <asp:ListItem Value="United Arab Emirates"></asp:ListItem>
                                <asp:ListItem Value="United Kingdom"></asp:ListItem>
                                <asp:ListItem Value="United States"></asp:ListItem>
                                <asp:ListItem Value="Uruguay"></asp:ListItem>
                                <asp:ListItem Value="Uzbekistan"></asp:ListItem>
                                <asp:ListItem Value="Venezuela"></asp:ListItem>
                                <asp:ListItem Value="Vietnam"></asp:ListItem>
                                <asp:ListItem Value="Western Sahara"></asp:ListItem>
                                <asp:ListItem Value="Yemen"></asp:ListItem>
                                <asp:ListItem Value="Zambia"></asp:ListItem>
                                <asp:ListItem Value="Zimbabwe"></asp:ListItem>
                                <asp:ListItem Selected="True" Value="Select Country"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style2" style="width: 595px; text-align: left;">
                            <asp:Button ID="addBookBtn" runat="server" OnClick="addBookBtn_Click" Text="Register Booking" CssClass="button button2" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="width: 294px; text-align: left;"><strong>Date of Birth</strong><br />
                            <asp:TextBox ID="DOBTBox" runat="server" Width="100px" TextMode="Date"></asp:TextBox>
                        </td>
                        <td class="auto-style2" style="width: 595px; text-align: left;"><strong>Passport Expiry Date</strong><br />
                            <asp:TextBox ID="PassportExpiryTBox" runat="server" Width="100px" TextMode="Date"></asp:TextBox>
                        </td>
                        <td class="auto-style2" style="width: 595px; text-align: left;">
                            <asp:CustomValidator ID="PassengerDetailsCustomValidator" runat="server" ErrorMessage="Please fill in all the required fields!" ForeColor="Red" Style="font-size: small"></asp:CustomValidator>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
    </div>
    <div></div>
    <table style="width: 43%;">
        <tr>
            <th class="text-left" style="text-decoration: underline"><strong>Contact Details</strong></th>
            <th class="text-left" style="text-decoration: underline"><strong>Payment Method</strong></th>
        </tr>
        <tr>
            <td class="text-left" style="width: 175px"><strong>E-mail</strong><br />
                <asp:TextBox ID="emailTBox1_1" runat="server" TextMode="Email" Width="200px" Enabled="False"></asp:TextBox>
            </td>
            <td class="text-left" style="width: 239px">
                <asp:RadioButtonList ID="PaymentMethodRBList" runat="server">
                    <asp:ListItem Value="Credit/Debit Card">Credit/Debit Card</asp:ListItem>
                    <asp:ListItem>Cash</asp:ListItem>

                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="width: 239px"></td>
            <td class="text-left" style="width: 239px">
                <asp:RequiredFieldValidator ID="paymethodRFV" runat="server" ControlToValidate="PaymentMethodRBList" EnableViewState="False" ErrorMessage="Please select a payment method!" ForeColor="Red" Style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <div></div>
    <table style="width: 97%;">
        <tr>
            <td class="text-left" style="text-decoration: underline; width: 121px"><strong>Agree with terms</strong></td>
            <td class="text-left" style="text-decoration: underline">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" style="width: 121px">
                <asp:CheckBox ID="agreeCheckBox" runat="server" CssClass="AcceptedAgreement"/>
                <asp:CustomValidator runat="server" ID="CheckBoxRequired" EnableClientScript="true"
                    OnServerValidate="CheckBoxRequired_ServerValidate"
                    ClientValidationFunction="CheckBoxRequired_ClientValidate" ForeColor="Red" style="font-size: small">You must select this box to proceed.</asp:CustomValidator>
            </td>
            <td class="text-left"><span style="color: rgb(51, 51, 51); font-family: &quot; source sans pro&quot; , sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>
                <strong style="margin: 0px; padding: 0px; font-family: &quot; source sans pro&quot; , sans-serif; font-weight: 400; color: rgb(51, 51, 51); font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Important:</strong></span>I have reviewed this booking and I have read and accept on behalf of all passengers in this booking the<span>&nbsp;</span></span><a href="http://www.flyuia.com/eng/information-and-services/before-you-fly/Conditions-Carriage.html" style="margin: 0px; padding: 0px; font-family: &quot; source sans pro&quot; , sans-serif; font-weight: normal; border: 0px; font-style: normal; color: rgb(0, 113, 189); text-decoration: underline; outline: none; font-size: 15px; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" target="_blank" title="Conditions of Contract of Carriage">Conditions 
                of Contract of Carriage</a><span style="color: rgb(51, 51, 51); font-family: &quot; source sans pro&quot; , sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span>&nbsp;</span>and<span>&nbsp;</span></span><a href="http://www.flyuia.com/eng/information-and-services/GENERAL-CONDITIONS-OF-CARRIAGE.html" style="margin: 0px; padding: 0px; font-family: &quot; source sans pro&quot; , sans-serif; font-weight: normal; border: 0px; font-style: normal; color: rgb(0, 113, 189); text-decoration: underline; outline: none; font-size: 15px; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" target="_blank" title="Passenger and Baggage Carriage Rules">Passenger 
                and Baggage Carriage Rules</a><span style="color: rgb(51, 51, 51); font-family: &quot; source sans pro&quot; , sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">, as well as fare rules.</span><br style="margin: 0px; padding: 0px; font-family: &quot; source sans pro&quot; , sans-serif; font-weight: normal; color: rgb(51, 51, 51); font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
                <span style="color: rgb(51, 51, 51); font-family: &quot; source sans pro&quot; , sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">I understand that credit card fraud will be contested to the full extent of the law.</span><br style="margin: 0px; padding: 0px; font-family: &quot; source sans pro&quot; , sans-serif; font-weight: normal; color: rgb(51, 51, 51); font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
                <span style="color: rgb(51, 51, 51); font-family: &quot; source sans pro&quot; , sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">I hereby give my consent to the processing of my personal data and declare that I am aware of the<span>&nbsp;</span></span><a href="http://www.flyuia.com/eng/information-and-services/personal-data-protection.html" style="margin: 0px; padding: 0px; font-family: &quot; source sans pro&quot; , sans-serif; font-weight: normal; border: 0px; font-style: normal; color: rgb(0, 113, 189); text-decoration: underline; outline: none; font-size: 15px; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" target="_blank" title="Personal data protection">Consent 
                to Personal Data Processing</a><span style="color: rgb(51, 51, 51); font-family: &quot; source sans pro&quot; , sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">.</span></td>
        </tr>
        <tr>
            <td class="text-left" colspan="2">&nbsp;</td>
        </tr>
    </table>
    <div></div>
    <div class="text-center">
        <asp:Button ID="confirmBookBtn1" runat="server" Text="Continue" OnClick="confirmBookBtn1_Click" CssClass="button button2" />
    </div>
</asp:Content>
