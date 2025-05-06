<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="StudentApplyPost.aspx.cs" Inherits="StudentApplyPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 222px;
            height: 34px;
        }
        .style3
        {
            height: 34px;
        }
        .style4
        {
            width: 95px;
            height: 34px;
        }
        .style5
        {
            width: 95px;
        }
        .style6
        {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="w-100">
                        <tr>
                            <td colspan="2" class="style6">
                                <asp:Label ID="Label1" runat="server" Font-Names="Brush Script Std" 
                                    ForeColor="Maroon" Text="Welcome Your Login ID:"></asp:Label>
                                &nbsp;<asp:Label ID="lblLoginID" runat="server" Font-Names="Adobe Garamond Pro Bold" 
                                    ForeColor="Maroon"></asp:Label>
                            </td>
                            <td class="style6">
                                </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="lblPostID" runat="server" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblElectionID" runat="server" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Name of Post Applied"></asp:Label>
            </td>
            <td class="style3">
                <asp:Label ID="lblPost" runat="server" ForeColor="#990000"></asp:Label>
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Name of Proposer"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtProposarName" runat="server" Height="25px" Width="300px"
                ValidationGroup="&quot;^[a-zA-Z ]*$&quot;" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator9" ControlToValidate="txtProposarName" ErrorMessage="Proposer name is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
     
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtProposarName" ErrorMessage="Enter character only" ForeColor="Black" ValidationExpression="^[a-zA-Z ]*$"></asp:RegularExpressionValidator>

            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Student ID of Proposer"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtProposarID" runat="server" Height="25px" Width="300px" MaxLength="11"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator1" ControlToValidate="txtProposarID" ErrorMessage="Proposer ID is required." 
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Upload Signature of Proposer"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fupProposarSign" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Underline="True" 
                    Text="Consent and Declaration of Candidate"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label7" runat="server" Text="1"></asp:Label>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="I Agree to serve the college Union" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="4">
&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label8" runat="server" Text="2"></asp:Label>
                <asp:CheckBox ID="CheckBox2" runat="server" 
                    Text="I am within the age limit prescribed in the election notification" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label9" runat="server" Text="3"></asp:Label>
                <asp:CheckBox ID="CheckBox3" runat="server" 
                    Text="I am full time regular student of the college" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label10" runat="server" Text="4"></asp:Label>
                <asp:CheckBox ID="CheckBox4" runat="server" 
                    Text="I have attained the minimum percentage of attendance" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Upload Signature of Candidate"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fupCadidateSign" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="50px" 
                    onclick="Button1_Click" Text="SAVE" Width="100px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

