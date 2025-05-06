using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminViewNominations : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string qry1 = "select ElectionID from NotificationTBL";
            dt = vs.dbSelect(qry1);

            ddlElectionNumber.DataSource = dt;
            ddlElectionNumber.DataTextField = "ElectionID";
            ddlElectionNumber.DataBind();
            ddlElectionNumber.Items.Insert(0, "---Select Election Number---");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        lblElectionID.Text = ddlElectionNumber.SelectedItem.Text;
        lblPostID.Text = ddlPost.SelectedItem.Value;

        string qry3 = "SELECT ApplicationTBL.ApplicationID, ApplicationTBL.CandidateID, ApplicationTBL.ApplicationDate, ApplicationTBL.ApplicationStatus FROM ApplicationTBL INNER JOIN PostTBL ON ApplicationTBL.PostID = PostTBL.PostID INNER JOIN ObserverTBL ON ApplicationTBL.ElectionID = ObserverTBL.ElectionID where ApplicationTBL.ElectionID='" + lblElectionID.Text + "' and ApplicationTBL.PostID='"+lblPostID.Text+"'";
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
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowno = Convert.ToInt32(e.CommandArgument.ToString());
        int ApplicationID = Convert.ToInt32(GridView1.DataKeys[rowno].Value.ToString());
        string str = e.CommandName.ToString();
        if (str == "view")
        {
            Panel2.Visible = true;
            lblApplicationID.Text = ApplicationID.ToString();

            string qry3 = "select * from ApplicationTBL where ApplicationID='" + lblApplicationID.Text + "'";
            dt = vs.dbSelect(qry3);

            lblStudentID.Text = dt.Rows[0]["CandidateID"].ToString();
        }
    }
}