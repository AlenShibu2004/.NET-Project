using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class StudentRegistration : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string qry1 = "insert into StudentTBL values('"+txtName.Text+"','"+txtStudentID.Text+"','"+rblGender.SelectedItem.Text+"','"+txtDoB.Text+"','"+ddlDepartment.SelectedItem.Text+"','"+ddlCourse.SelectedItem.Text+"','"+txtAddress.Text+"','"+txtEmailID.Text+"','"+txtMobile.Text+"')";
        vs.dbExecute(qry1);

        string UserType = "STUDENT";
        string UserStaus = "PENDING";

        string qry2 = "insert into LoginTBL values('"+txtStudentID.Text+"','"+txtPassword.Text+"','"+UserType+"','"+UserStaus+"')";
        vs.dbExecute(qry2);

        Response.Write("<script>alert('Saved........')</script>");
        Response.Write("<script>window.location.href='Login.aspx';</script>");
    }
    protected void txtConfirmPassword_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtDoB_TextChanged(object sender, EventArgs e)
    {

    }
    protected void rblGender_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtMobile_TextChanged(object sender, EventArgs e)
    {

    }
}