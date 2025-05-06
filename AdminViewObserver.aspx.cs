using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminViewObserver : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Label2.Text = ddlElectionID.SelectedItem.Text;
    }
}