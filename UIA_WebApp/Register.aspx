<%@ Page Title="Register New Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="UIA_WebApp.Register" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        function Validate() {
            var enteredValue = document.getElementById('<%=dobTBox1.ClientID %>');
            var enteredAge = getAge(enteredValue.value);
            if (enteredAge < 18) {
                alert("Your Date of Birth indicates that you are not older than 18 years old!");
                enteredValue.focus();
                return false;
            }
        }
        function getAge(DOB) {
            var today = new Date();
            var birthDate = new Date(DOB);
            var age = today.getFullYear() - birthDate.getFullYear();
            var m = today.getMonth() - birthDate.getMonth();
            if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
                age--;
            }
            return age;
        }
    </script>
    <h2 style="text-align: justify"><%: Title %>.</h2>
    <h3 class="text-left"><span style="text-decoration: underline; color: #000000"><strong>Please Enter Your Login Details</strong></span>.<table style="width:100%;">
        <tr>
            <td style="width: 150px; height: 28px; font-size: medium;" class="text-right"><strong>E-mail Address: </strong> </td>
            <td style="height: 28px; width: 226px;">
                <asp:TextBox ID="newEmailTBox" TextMode="Email" runat="server" style="font-size: medium" Width="230px"></asp:TextBox>
            </td>
            <td style="height: 28px; font-size: small;" class="text-left">
                <asp:RequiredFieldValidator ID="emailRFV1" runat="server" ControlToValidate="newEmailTBox" ErrorMessage="E-mail is required for login." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="newEmailTBox" ErrorMessage="Please Enter a valid E-mail." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; font-size: medium;" class="text-right"><strong>New Password:</strong></td>
            <td style="width: 226px">
                <asp:TextBox ID="newPasswordTBox1" TextMode="Password" runat ="server" style="font-size: medium" Width="230px"></asp:TextBox>
            </td>
            <td class="text-left">
                <asp:RequiredFieldValidator ID="passwordRFV1" runat="server" ControlToValidate="newPasswordTBox1" ErrorMessage="Password is required for login." ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; font-size: medium;" class="text-right"><strong>Re-type Password:</strong></td>
            <td style="width: 226px">
                <asp:TextBox ID="newPasswordTBox2" TextMode="Password" runat="server" style="font-size: medium" Width="230px"></asp:TextBox>
            </td>
            <td class="text-left" style="font-size: small">
                <asp:RequiredFieldValidator ID="passwordRFV2" runat="server" ControlToValidate="newPasswordTBox2" ErrorMessage="Password is required again for validation." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="newPasswordTBox1" ControlToValidate="newPasswordTBox2" ErrorMessage="The New Password and Re-type Password must be the same." ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        </table>
    </h3>

    <h3 class="text-left"><span style="text-decoration: underline; color: #000000"><strong>Please Enter Your Account Details</strong></span>.<table class="nav-justified">
        <tr>
            <td style="width: 150px; height: 28px; font-size: medium;" class="text-right"><strong>First Name: </strong> </td>
            <td style="height: 28px; width: 240px;">
                <asp:TextBox ID="newFNameTBox" runat="server" Width="230px" style="font-size: medium"></asp:TextBox>
            </td>
            <td style="height: 28px" class="text-left">
                <asp:RequiredFieldValidator ID="firstnameRFV1" runat="server" ControlToValidate="newFNameTBox" ErrorMessage="First Name is required." ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; height: 35px; font-size: medium;" class="text-right"><strong>Last Name:</strong></td>
            <td style="width: 240px; height: 35px">
                <asp:TextBox ID="newLNameTBox" runat="server" Width="230px" style="font-size: medium"></asp:TextBox>
            </td>
            <td class="text-left" style="height: 35px">
                <asp:RequiredFieldValidator ID="lastnameRFV1" runat="server" ControlToValidate="newLNameTBox" ErrorMessage="Last Name is required." ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; height: 35px; font-size: medium;" class="text-right"><strong>Address As:</strong></td>
            <td style="height: 35px; width: 240px;">
                <asp:DropDownList ID="newAddressAsDDList" runat="server" style="font-size: medium">
                    <asp:ListItem Value="Mr."></asp:ListItem>
                    <asp:ListItem Value="Mrs."></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 35px" class="text-left">
                <asp:RequiredFieldValidator ID="addressAsRFV1" runat="server" ControlToValidate="newAddressAsDDList" ErrorMessage="Address As is required." ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; height: 35px; font-size: medium;" aria-orientation="horizontal" class="text-right"><strong>Date of Birth:</strong></td>
            <td style="height: 35px; width: 240px;">
                <asp:TextBox ID="dobTBox1" TextMode="Date" runat="server" Width="230px" onblur="Validate();" style="font-size: medium"></asp:TextBox>
            </td>
            <td style="height: 35px" class="text-left">
                <asp:RequiredFieldValidator ID="dobRFV1" runat="server" ControlToValidate="dobTBox1" ErrorMessage="Date of Birth is required." ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; height: 35px; font-size: medium;" aria-orientation="horizontal" class="text-right"><strong>Country:</strong></td>
            <td style="height: 35px; width: 240px;">
                <asp:DropDownList ID="countryDDList1" runat="server" style="font-size: medium" Width="230px">
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
            <td style="height: 35px" class="text-left">
                <asp:RequiredFieldValidator ID="countryRFV1" runat="server" ControlToValidate="countryDDList1" ErrorMessage="Country is required." ForeColor="Red" InitialValue="Select Country" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>
    </h3>

    <h3 class="text-left"><span style="text-decoration: underline; color: #000000"><strong>To Complete this Registration or Re-do it:</strong></span><table style="width:100%;">
        <tr>
            <td style="width: 220px; height: 28px" class="text-center">
                <asp:Button ID="registerBtn1" runat="server" OnClick="Button1_Click" Text="Submit" Width="202px" style="font-size: medium" CssClass="button button2" />
            </td>
            <td style="height: 28px; width: 202px;">
                &nbsp;</td>
            <td style="height: 28px" class="text-left">
                <br />
            </td>
        </tr>
        </table>
    </h3>
    
</asp:Content>
