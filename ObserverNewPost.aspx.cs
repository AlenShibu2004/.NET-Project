using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ObserverNewPost : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblLoginID.Text = Session["LoginID"].ToString();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ObserverViewPost.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry1 = "insert into PostTBL values('"+ddlElectionID.SelectedItem.Text+"','"+txtPost.Text+"','"+txtSeat.Text+"','"+txtComment.Text+"')";
        vs.dbExecute(qry1);

        Response.Write("<script>alert('Saved...........')</script>");
        Response.Write("<script>window.location.href='ObserverNewPost.aspx';</script>");
    }
}