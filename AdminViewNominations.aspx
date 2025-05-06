<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewNominations.aspx.cs" Inherits="AdminViewNominations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
        }
        .style3
        {
            width: 155px;
        }
        .style4
        {
            width: 113px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
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
                <asp:Label ID="Label1" runat="server" Text="Select Election ID"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlElectionNumber" runat="server" AutoPostBack="True" 
                    ontextchanged="ddlElectionNumber_TextChanged" Width="300px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
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
                <asp:Button ID="Button1" runat="server" Height="50px" onclick="Button1_Click" 
                    Text="VIEW" Width="100px" />
            </td>
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
            <td class="style1" colspan="4">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td>
                                <asp:Label ID="lblElectionID" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblPostID" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td colspan="3">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" DataKeyNames="ApplicationID" 
                                    onrowcommand="GridView1_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="ApplicationID" HeaderText="Application ID" />
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
                            <td>
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
            <td class="style2" colspan="4">
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
                            <td>
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#990000" 
                                    Text="Verification Details"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td colspan="3">
                                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
                                        Report:
                                        <asp:Label ID="ReportLabel" runat="server" Text='<%# Eval("Report") %>' />
                                        <br />
                                        Verification Date:
                                        <asp:Label ID="VerificationDateLabel" runat="server" 
                                            Text='<%# Eval("VerificationDate") %>' />
                                        <br />
                                        Verification Status:
                                        <asp:Label ID="VerificationStatusLabel" runat="server" 
                                            Text='<%# Eval("VerificationStatus") %>' />
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VotingSystemDatabase.mdf;Integrated Security=True;User Instance=True" 
                                    ProviderName="System.Data.SqlClient" 
                                    SelectCommand="SELECT [Report], [VerificationDate], [VerificationStatus] FROM [VerificationTBL] WHERE ([ApplicatioID] = @ApplicatioID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="lblApplicationID" Name="ApplicatioID" 
                                            PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
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
                    </table>
                </asp:Panel>
            </td>
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
</asp:Content>

