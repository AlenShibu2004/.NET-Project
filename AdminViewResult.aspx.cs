using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminViewResult : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblLoginID.Text = Session["LoginID"].ToString();

            string staus = "START";
            string qry1 = "select ElectionID from NotificationTBL where Status='" + staus + "'";
            dt = vs.dbSelect(qry1);

            ddlElectionNumber.DataSource = dt;
            ddlElectionNumber.DataTextField = "ElectionID";
            ddlElectionNumber.DataBind();
            ddlElectionNumber.Items.Insert(0, "---Select Election Number---");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        lblElectionID.Text = ddlElectionNumber.SelectedItem.Text;
        lblPostID.Text = ddlPost.SelectedItem.Value;

        string qry3 = "SELECT VotingTBL.CandidateID, StudentTBL.Name, VotingTBL.TotalVote FROM VotingTBL INNER JOIN StudentTBL ON VotingTBL.StudentID = StudentTBL.StudentID where VotingTBL.ElectionID='" + lblElectionID.Text + "' and VotingTBL.PostID='" + lblPostID.Text + "'";
        dt = vs.dbSelect(qry3);

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void ddlElectionNumber_TextChanged(object sender, EventArgs e)
    {
        string qry2 = "select Post,PostID from PostTBL where ElectionID='" + ddlElectionNumber.SelectedItem.Text + "'";
        dt = vs.dbSelect(qry2);

        ddlPost.DataSource = dt;
        ddlPost.DataTextField = "Post";
        ddlPost.DataValueField = "PostID";
        ddlPost.DataBind();
        ddlPost.Items.Insert(0, "---Select Post for Vote---");
    }
}