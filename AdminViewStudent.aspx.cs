using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminViewStudent : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string qry3 = "SELECT StudentTBL.StudentID FROM StudentTBL INNER JOIN LoginTBL ON StudentTBL.StudentID = LoginTBL.LoginID where LoginTBL.UserStatus='" + lblPending.Text + "'";
            dt = vs.dbSelect(qry3);

            ddlStudentID.DataSource = dt;
            ddlStudentID.DataBind();
            ddlStudentID.DataTextField = "StudentID";
            ddlStudentID.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        lblStudentID.Text = ddlStudentID.SelectedItem.Text;
    }
}