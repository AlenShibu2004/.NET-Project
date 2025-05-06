<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminNewStudent.aspx.cs" Inherits="AdminNewStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            width: 262px;
        }
        .style3
        {
            width: 176px;
        }
        .style4
        {
            width: 186px;
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
            <td colspan="2">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Book Antiqua" 
                    ForeColor="#CC0066" onclick="LinkButton1_Click">Click Here for View Student Details</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblPending" runat="server" Text="PENDING" Visible="False"></asp:Label>
            </td>
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
                <asp:Label ID="Label2" runat="server" Text="Select New Student ID"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlStudentID" runat="server" Width="200px">
                </asp:DropDownList>
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
                                <asp:Label ID="lblStudentID" runat="server" Visible="False"></asp:Label>
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
                                        Name:
                                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        <br />
                                        Gender:
                                        <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                                        <br />
                                        Date of Birth:
                                        <asp:Label ID="DateofBirthLabel" runat="server" 
                                            Text='<%# Eval("DateofBirth") %>' />
                                        <br />
                                        Department:
                                        <asp:Label ID="DepartmentLabel" runat="server" 
                                            Text='<%# Eval("Department") %>' />
                                        <br />
                                        Course:
                                        <asp:Label ID="CourseLabel" runat="server" Text='<%# Eval("Course") %>' />
                                        <br />
                                        Address:
                                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                                        <br />
                                        Email ID:
                                        <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
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
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Height="50px" onclick="Button2_Click" 
                                    Text="APPROVE" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" Height="50px" onclick="Button3_Click" 
                                    Text="REJECT" />
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
    </table>
</asp:Content>

