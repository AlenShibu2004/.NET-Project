using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ObserverViewNominations : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblLoginID.Text = Session["LoginID"].ToString();
        string qry1="select * from ObserverTBL where StaffID='"+lblLoginID.Text+"'";
        dt=vs.dbSelect(qry1);
        lblElectionID.Text=dt.Rows[0]["ElectionID"].ToString();

        string qry2 = "SELECT ApplicationTBL.ApplicationID, ApplicationTBL.ElectionID, PostTBL.Post, ApplicationTBL.CandidateID, ApplicationTBL.ApplicationDate, ApplicationTBL.ApplicationStatus FROM ApplicationTBL INNER JOIN PostTBL ON ApplicationTBL.PostID = PostTBL.PostID INNER JOIN ObserverTBL ON ApplicationTBL.ElectionID = ObserverTBL.ElectionID where ApplicationTBL.ElectionID='" + lblElectionID.Text + "'";
        dt = vs.dbSelect(qry2);

        GridView1.DataSource = dt;
        GridView1.DataBind();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ApplicationStatus = "APPROVE";
        string VerificationDate = System.DateTime.Now.ToShortDateString();

        string qry4 = "insert into VerificationTBL values('"+lblLoginID.Text+"','"+lblApplicationID.Text+"','"+TextBox1.Text+"','"+VerificationDate+"','"+ApplicationStatus+"')";
        vs.dbExecute(qry4);

        string qry5 = "update ApplicationTBL set ApplicationStatus='" + ApplicationStatus + "' where ApplicationID='" + lblApplicationID.Text + "'";
        vs.dbExecute(qry5);

        Response.Write("<script>alert ('Nomination Approved.......')</script>");
        Response.Write("<script>window.location.href='ObserverViewNominations.aspx'</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string ApplicationStatus = "REJECT";
        string VerificationDate = System.DateTime.Now.ToShortDateString();

        string qry6 = "insert into VerificationTBL values('" + lblLoginID.Text + "','" + lblApplicationID.Text + "','" + TextBox1.Text + "','" + VerificationDate + "','" + ApplicationStatus + "')";
        vs.dbExecute(qry6);

        string qry7 = "update ApplicationTBL set ApplicationStatus='" + ApplicationStatus + "' where ApplicationID='" + lblApplicationID.Text + "'";
        vs.dbExecute(qry7);

        Response.Write("<script>alert ('Nomination Rejected.......')</script>");
        Response.Write("<script>window.location.href='ObserverViewNominations.aspx'</script>");
    }
}