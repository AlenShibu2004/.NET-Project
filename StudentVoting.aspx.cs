using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class StudentVoting : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        lblElectionID.Text = ddlElectionNumber.SelectedItem.Text;
        lblPostID.Text = ddlPost.SelectedItem.Value;

        string qry3 = "SELECT ApplicationTBL.ApplicationID, StudentTBL.StudentID, StudentTBL.Name, StudentTBL.Department, StudentTBL.Course FROM ApplicationTBL INNER JOIN StudentTBL ON ApplicationTBL.CandidateID = StudentTBL.StudentID where ApplicationTBL.ElectionID='" + lblElectionID.Text + "'and ApplicationTBL.PostID='" + lblPostID.Text + "' and ApplicationTBL.ApplicationStatus='" + lblApplicationStatus.Text + "'";
        dt = vs.dbSelect(qry3);

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowno = Convert.ToInt32(e.CommandArgument.ToString());
        int ApplicationID = Convert.ToInt32(GridView1.DataKeys[rowno].Value.ToString());
        string str = e.CommandName.ToString();
        lblApplicationID.Text = ApplicationID.ToString();
        if (str == "vote")
        {

            string qry4 = "select * from ApplicationTBL where ApplicationID='" + lblApplicationID.Text + "'";
            dt = vs.dbSelect(qry4);

            lblCandidateID.Text = dt.Rows[0]["CandidateID"].ToString();

            string qry5 = "select count(*) from VotingTBL where ElectionID='" + lblElectionID.Text + "' and PostID='" + lblPostID.Text + "' and StudentID='" + lblLoginID.Text + "'";
            int a = Convert.ToInt32(vs.dbScalar(qry5));
            if (a == 0)
            {
                string qry6 = "select count(*) from VotingTBL where ElectionID='" + lblElectionID.Text + "' and PostID='" + lblPostID.Text + "' and CandidateID='" + lblCandidateID.Text + "'";
                int b=Convert.ToInt32(vs.dbScalar(qry6));
                if (b == 0)
                {
                    int TotalVote = 1;
                    string qry8 = "insert into VotingTBL values('"+lblElectionID.Text+"','"+lblPostID.Text+"','"+lblCandidateID.Text+"','"+lblLoginID.Text+"','"+TotalVote+"')";
                    vs.dbExecute(qry8);

                    Response.Write("<script>alert ('Mark Your Vote Successfully.......')</script>");
                    Response.Write("<script>window.location.href='StudentVoting.aspx'</script>");
                }
                else
                {
                    string qry7 = "select * from VotingTBL where ElectionID='" + lblElectionID.Text + "' and PostID='" + lblPostID.Text + "' and CandidateID='" + lblCandidateID.Text + "'";
                    int Total = Convert.ToInt32(dt.Rows[0]["TotalVote"].ToString());
                    int TotalVoteNew = Total + 1;

                    string qry9 = "insert into VotingTBL values('" + lblElectionID.Text + "','" + lblPostID.Text + "','" + lblCandidateID.Text + "','" + lblLoginID.Text + "','" + TotalVoteNew + "')";
                    vs.dbExecute(qry9);

                    Response.Write("<script>alert ('Mark Your Vote Successfully.......')</script>");
                    Response.Write("<script>window.location.href='StudentVoting.aspx'</script>");
                }
            }
            else
            {
                Response.Write("<script>alert ('Already Voted for the Post.......')</script>");
                Response.Write("<script>window.location.href='StudentVoting.aspx'</script>");
            }
        }
    }

}