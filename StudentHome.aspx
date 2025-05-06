<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="StudentHome.aspx.cs" Inherits="StudentHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 34px;
        }
        .style2
        {
            width: 58px;
        }
        .style3
        {
            height: 34px;
            width: 109px;
        }
        .style4
        {
            width: 109px;
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
            <td class="style4">
                &nbsp;</td>
            <td colspan="2">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" 
                    ImageUrl="~/images/election.png" Width="300px" 
                    onclick="ImageButton1_Click" />
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
            <td colspan="3">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="StudentID" 
                    DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />
                        <br />
                        StudentID:
                        <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Eval("StudentID") %>' />
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
                        Address:<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style1" colspan="3">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\VotingSystemDatabase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT [Name], [StudentID], [Gender], [DateofBirth], [Department], [Course], [Address], [EmailID], [MobileNumber] FROM [StudentTBL] WHERE ([StudentID] = @StudentID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblLoginID" Name="StudentID" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
</asp:Content>

