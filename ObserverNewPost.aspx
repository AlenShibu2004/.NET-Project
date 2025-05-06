<%@ Page Title="" Language="C#" MasterPageFile="~/ObserverMasterPage.master" AutoEventWireup="true" CodeFile="ObserverNewPost.aspx.cs" Inherits="ObserverNewPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 109px;
        }
        .style2
        {
            width: 109px;
            height: 38px;
        }
        .style3
        {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    `<table class="w-100">
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
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="w-100">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label1" runat="server" Font-Names="Brush Script Std" 
                                    ForeColor="Maroon" Text="Welcome Your Login ID:"></asp:Label>
                                &nbsp;<asp:Label ID="lblLoginID" runat="server" Font-Names="Adobe Garamond Pro Bold" 
                                    ForeColor="Maroon"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
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
            <td class="style2">
            </td>
            <td class="style3" colspan="2">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Book Antiqua" 
                    ForeColor="#CC0066" onclick="LinkButton1_Click">Click Here for View Election Post</asp:LinkButton>
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style3">
            </td>
            <td class="style3">
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Select Election ID"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlElectionID" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="ElectionID" 
                    DataValueField="ElectionID" Width="300px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VotingSystemDatabase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT [ElectionID] FROM [ObserverTBL] WHERE ([StaffID] = @StaffID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblLoginID" Name="StaffID" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Name of Post"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPost" runat="server" Width="300px" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator1" ControlToValidate="txtPost" ErrorMessage="Post name is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
     
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtPost" ErrorMessage="Enter character only" ForeColor="Black" 
                ValidationExpression="^[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Number of Seats" ></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSeat" runat="server" Width="150px" MaxLength="2"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator3" ControlToValidate="txtSeat" ErrorMessage="Seat is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtSeat" ErrorMessage="Enter integer only" ForeColor="Black" ValidationExpression="^\d+"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Comments"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtComment" runat="server" Height="200px" TextMode="MultiLine" 
                    Width="350px" MaxLength="200"></asp:TextBox>
                    <asp:RequiredFieldValidator
            id="RequiredFieldValidator4" ControlToValidate="txtComment" ErrorMessage="Comment is required." ForeColor="Red"
            SetFocusOnError="true" Runat="server"></asp:RequiredFieldValidator>
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
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="SAVE" Width="100px" />
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
    </table>
</asp:Content>

