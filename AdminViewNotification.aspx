<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewNotification.aspx.cs" Inherits="AdminViewNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 237px;
        }
        .style3
        {
            width: 162px;
        }
        .style4
        {
            width: 198px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Select Election ID"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlElectionID" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="ElectionID" 
                    DataValueField="ElectionID" Width="300px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VotingSystemDatabase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT [ElectionID] FROM [NotificationTBL]">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="VIEW" Width="100px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="4">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="style4">
                                <asp:Label ID="lblElectionID" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td colspan="3">
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        Subject:
                                        <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                                        <br />
                                        Notification Date:
                                        <asp:Label ID="NotificationDateLabel" runat="server" 
                                            Text='<%# Eval("NotificationDate") %>' />
                                        <br />
                                        Notification:<br />
                                        <asp:Label ID="NotificationLabel" runat="server" 
                                            Text='<%# Eval("Notification") %>' />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VotingSystemDatabase.mdf;Integrated Security=True;User Instance=True" 
                                    ProviderName="System.Data.SqlClient" 
                                    SelectCommand="SELECT [Subject], [Notification], [NotificationDate] FROM [NotificationTBL] WHERE ([ElectionID] = @ElectionID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblElectionID" Name="ElectionID" 
                                            PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="True" 
                                    ForeColor="#0000CC" onclick="LinkButton1_Click">Download Schedule</asp:LinkButton>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="True" 
                                    ForeColor="#0000CC" onclick="LinkButton2_Click">Download Rules</asp:LinkButton>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
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
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
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

