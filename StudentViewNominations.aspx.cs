using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class StudentViewNominations : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblLoginID.Text = Session["LoginID"].ToString();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowno = Convert.ToInt32(e.CommandArgument.ToString());
        int NotificationID = Convert.ToInt32(GridView1.DataKeys[rowno].Value.ToString());
        string str = e.CommandName.ToString();
        if (str == "view")
        {
            Panel2.Visible = true;

            string qry1 = "select * from NotificationTBL where NotificationID='" + NotificationID + "'";
            dt = vs.dbSelect(qry1);

            lblElectionID.Text = dt.Rows[0]["ElectionID"].ToString();
        }
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowno = Convert.ToInt32(e.CommandArgument.ToString());
        int PostID = Convert.ToInt32(GridView2.DataKeys[rowno].Value.ToString());
        string str = e.CommandName.ToString();
        if (str == "view")
        {
            Panel2.Visible = false;
            Panel3.Visible = true;

            lblPostID.Text = PostID.ToString();

            string qry2 = "SELECT ApplicationTBL.ApplicationID, ApplicationTBL.CandidateID, StudentTBL.Name, StudentTBL.Department, StudentTBL.Course FROM ApplicationTBL INNER JOIN StudentTBL ON ApplicationTBL.CandidateID = StudentTBL.StudentID where ApplicationTBL.PostID='" + lblPostID.Text + "' and ApplicationTBL.ElectionID='" + lblElectionID.Text + "' and ApplicationTBL.ApplicationStatus='" + lblStatus.Text + "'";
            dt = vs.dbSelect(qry2);

            GridView3.DataSource = dt;
            GridView3.DataBind();
        }
    }
}