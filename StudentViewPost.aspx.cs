using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class StudentViewPost : System.Web.UI.Page
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
        if (str == "apply")
        {
            Session["PostID"] = PostID.ToString();
            Response.Redirect("StudentApplyPost.aspx");
        }
    }
}