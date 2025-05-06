using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class StudentApplyPost : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblLoginID.Text = Session["LoginID"].ToString();
        lblPostID.Text = Session["PostID"].ToString();

        string qry1 = "select * from PostTBL where PostID='" + lblPostID.Text + "'";
        dt = vs.dbSelect(qry1);

        lblPost.Text = dt.Rows[0]["Post"].ToString();
        lblElectionID.Text = dt.Rows[0]["ElectionID"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry3 = "select count(*) from ApplicationTBL where CandidateID='" + lblLoginID.Text + "' and ElectionID='" + lblElectionID.Text + "'";
        int a = Convert.ToInt32(vs.dbScalar(qry3));

        if (a == 0)
        {

            string ProposarSignPath = "~/ProposarSign/" + fupProposarSign.FileName;
            string CandidateSignPath = "~/CandidateSign/" + fupCadidateSign.FileName;
            string ApplicationDate = System.DateTime.Now.ToShortDateString();
            string ApplicationStatus = "PENDING";
            string qry2 = "insert into ApplicationTBL values('" + lblPostID.Text + "','" + lblElectionID.Text + "','" + lblLoginID.Text + "','" + txtProposarName.Text + "','" + txtProposarID.Text + "','" + ProposarSignPath + "','" + CheckBox1.Text + "','" + CheckBox2.Text + "','" + CheckBox3.Text + "','" + CheckBox4.Text + "','" + CandidateSignPath + "','" + ApplicationDate + "','" + ApplicationStatus + "')";
            vs.dbExecute(qry2);
            fupProposarSign.PostedFile.SaveAs(Server.MapPath(ProposarSignPath));
            fupCadidateSign.PostedFile.SaveAs(Server.MapPath(CandidateSignPath));

            Response.Write("<script>alert('Application Send for Verification')</script>");
            Response.Write("<script>window.location.href='StudentApplyPost.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Already Applied.....')</script>");
            Response.Write("<script>window.location.href='StudentViewPost.aspx';</script>");
        }

    }
}