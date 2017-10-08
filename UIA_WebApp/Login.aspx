<%@ Page Title="Login To Existing Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UIA_WebApp.Login" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-left"><%: Title %>.</h2>
    <h3 style="text-decoration: underline" class="text-left"><strong>Please Login with Existing Account.</strong></h3>
    <table style="width:100%;">
        <tr>
            <td class="text-right" style="width: 150px; font-size: medium"><strong>E-mail Address:</strong></td>
            <td style="width: 241px">
                <asp:TextBox ID="emailTBox2" runat="server" TextMode="Email" Width="230px"></asp:TextBox>
            </td>
            <td class="text-left" style="width: 851px">
                <asp:RequiredFieldValidator ID="emailRFV2" runat="server" ControlToValidate="emailTBox2" ErrorMessage="E-mail Address is required!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 150px; font-size: medium"><strong>Password:</strong></td>
            <td style="width: 241px">
                <asp:TextBox ID="passwTBox3" runat="server" TextMode="Password" Width="230px"></asp:TextBox>
            </td>
            <td class="text-left" style="width: 851px">
                <asp:RequiredFieldValidator ID="passwRFV3" runat="server" ControlToValidate="passwTBox3" ErrorMessage="Password is required!" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 150px">&nbsp;</td>
            <td class="text-right" style="width: 241px">
                <asp:Button ID="loginBtn1" runat="server" OnClick="LoginButton_Click" Text="Login" CssClass="button button2" />
            </td>
            <td class="text-left" style="width: 851px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Create New Account Here</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>
