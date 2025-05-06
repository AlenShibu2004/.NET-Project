using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminObserverNew : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminViewObserver.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry1 = "insert into ObserverTBL values('"+ddlElectionID.SelectedItem.Text+"','"+txtStaffID.Text+"','"+txtObserver.Text+"','"+txtDesignation.Text+"','"+txtAddress.Text+"','"+txtEmailID.Text+"','"+txtMobile.Text+"')";
        vs.dbExecute(qry1);

        string UserType = "OBSERVER";
        string UserStatus = "APPROVED";

        string qry2 = "insert into LoginTBL values('"+txtStaffID.Text+"','"+txtMobile.Text+"','"+UserType+"','"+UserStatus+"')";
        vs.dbExecute(qry2);

        Response.Write("<script>alert('Saved..........')</script>");
        Response.Write("<script>window.location.href='AdminObserverNew.aspx';</script>");
    }
}