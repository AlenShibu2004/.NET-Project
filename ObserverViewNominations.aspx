<%@ Page Title="" Language="C#" MasterPageFile="~/ObserverMasterPage.master" AutoEventWireup="true" CodeFile="ObserverViewNominations.aspx.cs" Inherits="ObserverViewNominations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {}
        .style2
        {
            height: 38px;
        }
        .style3
        {
            width: 162px;
        }
        .style4
        {
            height: 38px;
            width: 162px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
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
            <td colspan="4">
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
            <td class="style1">
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
            <td class="style1">
                &nbsp;</td>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="ApplicationID" 
                    onrowcommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="ApplicationID" HeaderText="Application ID" />
                        <asp:BoundField DataField="ElectionID" HeaderText="Election Number" />
                        <asp:BoundField DataField="Post" HeaderText="Nomination for Post" />
                        <asp:BoundField DataField="CandidateID" HeaderText="Student ID" />
                        <asp:BoundField DataField="ApplicationDate" HeaderText="Nomination Date" />
                        <asp:BoundField DataField="ApplicationStatus" HeaderText="Nomination Status" />
                        <asp:ButtonField CommandName="view" Text="View Nomination Details" />
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
            <td class="style1" colspan="4">
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="style3">
                                <asp:Label ID="lblApplicationID" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblStudentID" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#990000" 
                                    Text="Nomination Details"></asp:Label>
                            </td>
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
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td colspan="3">
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        Candidate Name:
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        <br />
                                        <br />
                                        Gender:
                                        <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                                        <br />
                                        <br />
                                        Date of Birth:
                                        <asp:Label ID="DateofBirthLabel" runat="server" 
                                            Text='<%# Eval("DateofBirth") %>' />
                                        <br />
                                        <br />
                                        Department:
                                        <asp:Label ID="DepartmentLabel" runat="server" 
                                            Text='<%# Eval("Department") %>' />
                                        <br />
                                        <br />
                                        Course:
                                        <asp:Label ID="CourseLabel" runat="server" Text='<%# Eval("Course") %>' />
                                        <br />
                                        <br />
                                        Address:<br /> &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                                        <br />
                                        <br />
                                        Email ID:
                                        <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                                        <br />
                                        <br />
                                        Mobile Number:
                                        <asp:Label ID="MobileNumberLabel" runat="server" 
                                            Text='<%# Eval("MobileNumber") %>' />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VotingSystemDatabase.mdf;Integrated Security=True;User Instance=True" 
                                    ProviderName="System.Data.SqlClient" 
                                    SelectCommand="SELECT [Name], [Gender], [DateofBirth], [Department], [Course], [Address], [EmailID], [MobileNumber] FROM [StudentTBL] WHERE ([StudentID] = @StudentID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblStudentID" Name="StudentID" 
                                            PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td colspan="3">
                                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
                                        Proposar Name:
                                        <asp:Label ID="ProposarNameLabel" runat="server" 
                                            Text='<%# Eval("ProposarName") %>' />
                                        <br />
                                        <br />
                                        Proposar Student ID:
                                        <asp:Label ID="ProposarIDLabel" runat="server" 
                                            Text='<%# Eval("ProposarID") %>' />
                                        <br />
                                        <br />
                                        Proposar Sign:<br />
                                        <asp:Image ID="Image1" runat="server" Height="250px" 
                                            ImageUrl='<%# Eval("ProposarSign") %>' Width="300px" />
                                        <br />
                                        &nbsp;<br /> CandidateSign:<br />
                                        <asp:Image ID="Image2" runat="server" Height="250px" 
                                            ImageUrl='<%# Eval("CandidateSign") %>' Width="300px" />
                                        <br />
                                        &nbsp;<br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VotingSystemDatabase.mdf;Integrated Security=True;User Instance=True" 
                                    ProviderName="System.Data.SqlClient" 
                                    SelectCommand="SELECT [ProposarName], [ProposarID], [ProposarSign], [CandidateSign] FROM [ApplicationTBL] WHERE ([ApplicationID] = @ApplicationID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblApplicationID" Name="ApplicationID" 
                                            PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;&nbsp;&nbsp;
                                </td>
                            <td colspan="2">
                                <asp:Label ID="Label3" runat="server" Text="Verification Report By Observer"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td colspan="3">
                                <asp:TextBox ID="TextBox1" runat="server" Height="300px" TextMode="MultiLine" 
                                    Width="600px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                            </td>
                            <td class="style2" colspan="2">
                            </td>
                            <td class="style2">
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td colspan="2">
                                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                                    Text="APPROVE" Width="120px" />
                                &nbsp;
                                <asp:Button ID="Button2" runat="server" Height="50px" onclick="Button2_Click" 
                                    Text="REJECT" Width="120px" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4">
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
                            <td class="style3">
                                &nbsp;&nbsp;&nbsp;
                                </td>
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
                </asp:Panel>
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

