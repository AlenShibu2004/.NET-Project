<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminObserverNew.aspx.cs" Inherits="AdminObserverNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 124px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td colspan="3">
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Century Schoolbook" 
                ForeColor="#CC0066" onclick="LinkButton1_Click">Click Here for View Observer</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Select Election ID"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlElectionID" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="ElectionID" 
                    DataValueField="ElectionID" Width="300px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VotingSystemDatabase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT [ElectionID] FROM [NotificationTBL]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Staff ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStaffID" runat="server" Height="30px" Width="200px" MaxLength="11"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator1" ControlToValidate="txtStaffID" ErrorMessage="Staff ID is required." 
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Observer Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtObserver" runat="server" Height="30px" Width="300px" ValidationGroup="&quot;^[a-zA-Z ]*$&quot;"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator2" ControlToValidate="txtObserver" ErrorMessage="Name is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
     
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtObserver" ErrorMessage="Enter character only" ForeColor="Black" 
                ValidationExpression="^[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Designation"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDesignation" runat="server" Height="30px" Width="300px" ValidationGroup="&quot;^[a-zA-Z ]*$&quot;"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator3" ControlToValidate="txtDesignation" ErrorMessage="Designation is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
     
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtDesignation" ErrorMessage="Enter character only" ForeColor="Black" 
                ValidationExpression="^[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Office Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Height="150px" TextMode="MultiLine" 
                    Width="350px"></asp:TextBox>
                    <asp:RequiredFieldValidator
            id="RequiredFieldValidator4" ControlToValidate="txtAddress" ErrorMessage="Address is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmailID" runat="server" Height="30px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator5" ControlToValidate="txtEmailID" ErrorMessage="Email is required." ForeColor="Red"
            SetFocusOnError="true" Runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmailID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email Id" ForeColor="Black"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Mobile Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobile" runat="server" Height="30px" MaxLength="10" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator6" ControlToValidate="txtMobile" ErrorMessage="Mobile number is required." ForeColor="Red"
            SetFocusOnError="true" Runat="server"></asp:RequiredFieldValidator>
        
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtMobile" ErrorMessage="Enter a valid mobile number" ForeColor="Black" ValidationExpression="(7|8|9)\d{9}"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="SAVE" Width="100px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

