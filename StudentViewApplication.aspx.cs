using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class StudentViewApplication : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblLoginID.Text = Session["LoginID"].ToString();

        string qry1 = "SELECT ApplicationTBL.ApplicationID, NotificationTBL.ElectionID, NotificationTBL.Subject, PostTBL.Post, ApplicationTBL.ApplicationDate, ApplicationTBL.ApplicationStatus FROM ApplicationTBL INNER JOIN PostTBL ON ApplicationTBL.PostID = PostTBL.PostID CROSS JOIN NotificationTBL where ApplicationTBL.CandidateID='" + lblLoginID.Text + "'";
        dt = vs.dbSelect(qry1);

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}