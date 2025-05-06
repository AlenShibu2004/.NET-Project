<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="StudentViewNotification.aspx.cs" Inherits="StudentViewNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 186px;
        }
        .style2
        {
            height: 34px;
        }
        .style3
        {
            height: 34px;
        }
    .style4
    {
            height: 34px;
            width: 141px;
        }
    .style5
    {
    }
        .style6
        {
            width: 137px;
        }
        .style7
        {
            width: 141px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style4">
            </td>
            <td class="style3">
            </td>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="4">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="w-100">
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label2" runat="server" Font-Names="Brush Script Std" 
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
            <td class="style4">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="NotificationID" DataSourceID="SqlDataSource1" 
                    onrowcommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="ElectionID" HeaderText="Election Number" 
                            SortExpression="ElectionID" />
                        <asp:BoundField DataField="Subject" HeaderText="Subject" 
                            SortExpression="Subject" />
                        <asp:ButtonField CommandName="view" Text="View Notification" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VotingSystemDatabase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT [ElectionID], [Subject], [NotificationID] FROM [NotificationTBL] ORDER BY [NotificationDate]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="4">
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="style6">
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
                            <td class="style6">
                                &nbsp;</td>
                            <td colspan="3">
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
                                        Election Number:
                                        <asp:Label ID="ElectionIDLabel" runat="server" 
                                            Text='<%# Eval("ElectionID") %>' />
                                        <br />
                                        <br />
                                        Subject:
                                        <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                                        <br />
                                        <br />
                                        Notification:<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="NotificationLabel" runat="server" 
                                            Text='<%# Eval("Notification") %>' />
                                        <br />
                                        <br />
                                        Notification Date:
                                        <asp:Label ID="NotificationDateLabel" runat="server" 
                                            Text='<%# Eval("NotificationDate") %>' />
                                        <br />
                                        <br />
                                        Status:
                                        <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VotingSystemDatabase.mdf;Integrated Security=True;User Instance=True" 
                                    ProviderName="System.Data.SqlClient" 
                                    SelectCommand="SELECT [ElectionID], [Subject], [Notification], [NotificationDate], [Status] FROM [NotificationTBL]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#0000CC" 
                                    onclick="LinkButton1_Click">Download Rules</asp:LinkButton>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#0000CC" 
                                    onclick="LinkButton2_Click">Download Schedule</asp:LinkButton>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
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
            <td class="style7">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

