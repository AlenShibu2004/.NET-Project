<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminNewElectionNotification.aspx.cs" Inherits="AdminNewElectionNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 142px;
    }
    .style2
    {
    }
        .style3
        {
            width: 142px;
            height: 38px;
        }
        .style4
        {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
    <tr>
        <td class="style3">
            </td>
        <td class="style4" colspan="3">
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Century Schoolbook" 
                ForeColor="#CC0066" onclick="LinkButton1_Click">Click Here for View Notifications</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2">
            <asp:Label ID="Label1" runat="server" Text="Election ID"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtElectionID" runat="server" Height="30px" Width="200px" MaxLength="11"></asp:TextBox>
             <asp:RequiredFieldValidator
            id="RequiredFieldValidator1" ControlToValidate="txtElectionID" ErrorMessage="Election ID is required." 
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2">
            <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td colspan="2">
            <asp:TextBox ID="txtSubject" runat="server" Height="30px" Width="600px" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator
            id="RequiredFieldValidator9" ControlToValidate="txtSubject" ErrorMessage="Subject is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2">
            <asp:Label ID="Label3" runat="server" Text="Notification"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2" colspan="2">
            <asp:TextBox ID="txtNotification" runat="server" Height="200px" TextMode="MultiLine" 
                Width="600px" MaxLength="200"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator4" ControlToValidate="txtNotification" ErrorMessage="Notification is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2">
            <asp:Label ID="Label4" runat="server" Text="Schedule"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="fupShecdule" runat="server" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2">
            <asp:Label ID="Label5" runat="server" Text="Rules and Regulations"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="fupRules" runat="server" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            <asp:Button ID="btnSave" runat="server" Height="50px" onclick="btnSave_Click" 
                Text="SAVE" Width="100px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

