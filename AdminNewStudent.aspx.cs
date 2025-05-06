using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminNewStudent : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        string qry3 = "SELECT StudentTBL.StudentID FROM StudentTBL INNER JOIN LoginTBL ON StudentTBL.StudentID = LoginTBL.LoginID where LoginTBL.UserStatus='" + lblPending.Text + "'";
        dt = vs.dbSelect(qry3);

        ddlStudentID.DataSource = dt;
        ddlStudentID.DataBind();
        ddlStudentID.DataTextField = "StudentID";
        ddlStudentID.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        lblStudentID.Text = ddlStudentID.SelectedItem.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string UserStatus = "APPROVED";
        string qry1 = "update LoginTBL set UserStatus='" + UserStatus + "' where LoginID='" + lblStudentID.Text + "'";
        vs.dbExecute(qry1);

        Response.Write("<script>alert('Approved........')</script>");
        Response.Write("<script>window.location.href='AdminNewStudent.aspx';</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string UserStatus = "REJECT";
        string qry2 = "update LoginTBL set UserStatus='" + UserStatus + "' where LoginID='" + lblStudentID.Text + "'";
        vs.dbExecute(qry2);

        Response.Write("<script>alert('Rejected........')</script>");
        Response.Write("<script>window.location.href='AdminNewStudent.aspx';</script>");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminViewStudent.aspx");
    }
}