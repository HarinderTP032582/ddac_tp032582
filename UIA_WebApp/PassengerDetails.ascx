<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PassengerDetails.ascx.cs" Inherits="UIA_WebApp.PassengerDetails" EnableViewState="false" %>
<style type="text/css">
    .auto-style1 {
        height: 23px;
        text-align: left;
    }

    .auto-style2 {
        text-align: left;
    }
</style>
<br />
<table style="table-layout: fixed">
    <tr>
        <td class="auto-style1" colspan="3">
            <h3 class="auto-style2">
                <asp:Label ID="NoLabel1" runat="server" Text="Type #"></asp:Label></h3>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="width: 294px"><strong>Title<br />
        </strong>
            <asp:DropDownList ID="TitleDDList" runat="server">
                <asp:ListItem>Mr.</asp:ListItem>
                <asp:ListItem>Mrs.</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style2" style="width: 595px"><strong>Passport Number</strong><br />
            <asp:TextBox ID="PassportNoTBox" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td class="auto-style2" style="width: 595px">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" style="width: 294px"><strong>First Name<br />
        </strong>
            <asp:TextBox ID="FirstNameTBox" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td class="auto-style2" style="width: 595px"><strong>Gender</strong><br />
            <asp:DropDownList ID="GenderDDList" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style2" style="width: 595px">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" style="width: 294px"><strong>Last Name</strong><br />
            <asp:TextBox ID="LastNameTBox" runat="server" Width="200px"></asp:TextBox>
        </td>
        <td class="auto-style2" style="width: 595px"><strong>Passport Country</strong><br />
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
        <td class="auto-style2" style="width: 595px">
            <asp:Button ID="addBookBtn" runat="server" OnClick="addBookBtn_Click" Text="Register Booking" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="width: 294px"><strong>Date of Birth</strong><br />
            <asp:TextBox ID="DOBTBox" runat="server" Width="100px" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style2" style="width: 595px"><strong>Passport Expiry Date</strong><br />
            <asp:TextBox ID="PassportExpiryTBox" runat="server" Width="100px" TextMode="Date"></asp:TextBox>
        </td>
        <td class="auto-style2" style="width: 595px">
            <asp:CustomValidator ID="PassengerDetailsCustomValidator" runat="server" ErrorMessage="Please fill in all the required fields!" ForeColor="Red" Style="font-size: small"></asp:CustomValidator>
        </td>
    </tr>
    </table>
