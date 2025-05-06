<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="StudentVoting.aspx.cs" Inherits="StudentVoting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 15px;
        }
        .style3
        {
            width: 103px;
        }
        .style4
        {
            height: 38px;
        }
        .style5
        {
            width: 180px;
        }
        .style6
        {
            height: 38px;
            width: 180px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
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
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Select Election Number"></asp:Label>
            </td>
            <td>
               <asp:DropDownList ID="ddlElectionNumber" runat="server" AutoPostBack="True" 
                    ontextchanged="ddlElectionNumber_TextChanged" Width="300px" 
                    >
                </asp:DropDownList>

                





            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Select Post"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlPost" runat="server" Width="300px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="View Candidates" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" colspan="4">
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="style5">
                                <asp:Label ID="lblElectionID" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblPostID" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblApplicationStatus" runat="server" Visible="False">APPROVE</asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblApplicationID" runat="server" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                            </td>
                            <td class="style4" colspan="3">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" DataKeyNames="ApplicationID" 
                                    onrowcommand="GridView1_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="ApplicationID" HeaderText="Nomination ID" />
                                        <asp:BoundField DataField="StudentID" HeaderText="Student ID" />
                                        <asp:BoundField DataField="Name" HeaderText="Name of Candidate" />
                                        <asp:BoundField DataField="Department" HeaderText="Department" />
                                        <asp:BoundField DataField="Course" HeaderText="Course" />
                                        <asp:ButtonField CommandName="vote" Text="VOTE" />
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
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="lblCandidateID" runat="server" Visible="False"></asp:Label>
                            </td>
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
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
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

