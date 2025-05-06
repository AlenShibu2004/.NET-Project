using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ObserverNewElection : System.Web.UI.Page
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
        if (str == "start")
        {
            string ElectionStatus = "START";
            string qry1 = "update NotificationTBL set Status='" + ElectionStatus + "' where NotificationID='" + NotificationID + "'";
            vs.dbExecute(qry1);

            Response.Write("<script>alert ('Election Started.......')</script>");
            Response.Write("<script>window.location.href='ObserverNewElection.aspx'</script>");
        }
        else
        {
            string ElectionStatus = "STOP";
            string qry1 = "update NotificationTBL set Status='" + ElectionStatus + "' where NotificationID='" + NotificationID + "'";
            vs.dbExecute(qry1);

            Response.Write("<script>alert ('Election Stoped.......')</script>");
            Response.Write("<script>window.location.href='ObserverNewElection.aspx'</script>");
        }
    }
}