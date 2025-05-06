<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="StudentRegistration.aspx.cs" Inherits="StudentRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 234px;
        }
        .style2
        {
            width: 234px;
            height: 38px;
        }
        .style3
        {
            height: 38px;
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
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Height="30px" Width="200px" MaxLength="50" ValidationGroup="&quot;^[a-zA-Z ]*$&quot;"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator9" ControlToValidate="txtName" ErrorMessage="Name is required."
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
     
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter character only" ForeColor="Black" ValidationExpression="^[a-zA-Z ]*$"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Student ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStudentID" runat="server" Height="30px" Width="200px" MaxLength="11"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator1" ControlToValidate="txtStudentID" ErrorMessage="Student ID is required." 
            SetFocusOnError="true" Runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="rblGender" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator2" ControlToValidate="rblGender" ErrorMessage="Gender is required." ForeColor="Red"
            SetFocusOnError="true" Runat="server"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDoB" runat="server" Height="30px" Width="200px" 
                    ontextchanged="txtDoB_TextChanged" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator11"  
                ControlToValidate="txtDoB" 
                ErrorMessage="Date of Birth is required." 
                ForeColor="Red" SetFocusOnError="true" Runat="server"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="ddlDepartment" runat="server" Height="30px" Width="300px">
                    <asp:ListItem>---SELECT DEPARTMENT---</asp:ListItem>
                    <asp:ListItem>PG Department of Commerce and Management</asp:ListItem>
                    <asp:ListItem>PG Department of English</asp:ListItem>
                    <asp:ListItem>Department of Computer Science and Applications</asp:ListItem>
                    <asp:ListItem>Department of Hotel Management</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Course"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlCourse" runat="server" Height="30px" Width="300px">
                    <asp:ListItem>---SELECT COURSE---</asp:ListItem>
                    <asp:ListItem>BA English and Communication</asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>BSc Computer Science</asp:ListItem>
                    <asp:ListItem>BCom Finance</asp:ListItem>
                    <asp:ListItem>BCom TAX</asp:ListItem>
                    <asp:ListItem>BCom Business Information System</asp:ListItem>
                    <asp:ListItem>BCom Accounts and Datascience</asp:ListItem>
                    <asp:ListItem>BCom Travel and Tourism</asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                    <asp:ListItem>BMS Hotel Management</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Height="200px" TextMode="MultiLine" 
                    Width="350px" MaxLength="200"></asp:TextBox>
                    <asp:RequiredFieldValidator
            id="RequiredFieldValidator4" ControlToValidate="txtAddress" ErrorMessage="Address is required." ForeColor="Red"
            SetFocusOnError="true" Runat="server"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Email ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmailID" runat="server" Height="30px" Width="300px" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator5" ControlToValidate="txtEmailID" ErrorMessage="Email is required." ForeColor="Red"
            SetFocusOnError="true" Runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmailID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email Id" ForeColor="Black"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Mobile Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobile" runat="server" Height="30px" Width="200px" 
                    MaxLength="10" ontextchanged="txtMobile_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator
            id="RequiredFieldValidator6" ControlToValidate="txtMobile" ErrorMessage="Mobile number is required." ForeColor="Red"
            SetFocusOnError="true" Runat="server"></asp:RequiredFieldValidator>
        
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtMobile" ErrorMessage="Enter a valid mobile number" ForeColor="Black" ValidationExpression="(7|8|9)\d{9}"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Height="30px" Width="200px" 
                    TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator
            id="RequiredFieldValidator7" ControlToValidate="txtPassword" ErrorMessage="Password is required." ForeColor="Red"
            SetFocusOnError="true" Runat="server"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" Height="30px" Width="200px" 
                    TextMode="Password" ontextchanged="txtConfirmPassword_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator
            id="RequiredFieldValidator3" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm password is required" ForeColor="Red"  SetFocusOnError="true" Runat="server"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password do not match" ForeColor="Black" ></asp:CompareValidator>
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
                <asp:Button ID="btnSave" runat="server" Height="50px" onclick="btnSave_Click" 
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

