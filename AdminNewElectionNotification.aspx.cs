using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminNewElectionNotification : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string SchedulePath = "~/Schedule/" + fupShecdule.FileName;
        string RulesPath = "~/Rules/" + fupRules.FileName;

        string ElectionStatus = "ACTIVE";
        string NotificationDate = System.DateTime.Now.ToShortDateString();

        string qry1 = "insert into NotificationTBL values('"+txtElectionID.Text+"','"+txtSubject.Text+"','"+txtNotification.Text+"','"+SchedulePath+"','"+RulesPath+"','"+ElectionStatus+"','"+NotificationDate+"')";
        vs.dbExecute(qry1);

        fupShecdule.PostedFile.SaveAs(Server.MapPath(SchedulePath));
        fupRules.PostedFile.SaveAs(Server.MapPath(RulesPath));

        Response.Write("<script>alert('Data saved successfully.....')</script>");
        Response.Write("<script>window.location.href='AdminNewElectionNotification.aspx';</script>");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminViewNotification.aspx");
    }
}