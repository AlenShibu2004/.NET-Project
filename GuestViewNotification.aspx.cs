using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
public partial class GuestViewNotification : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string qry2 = "select * from NotificationTBL where ElectionID='" + lblElectionID.Text + "'";
        dt = vs.dbSelect(qry2);

        string docPath1 = dt.Rows[0]["Rules"].ToString();

        //Response.ContentType = "application/pdf";
        //Response.AppendHeader("Content-Disposition", "attachment; filename=MyFile.pdf");
        //Response.TransmitFile(Server.MapPath(docPath));
        //Response.End();  


        WebClient req = new WebClient();
        HttpResponse response = HttpContext.Current.Response;
        response.Clear();
        response.ClearContent();
        response.ClearHeaders();
        response.Buffer = true;
        response.AddHeader("Content-Disposition", "attachment;filename=\"" + Server.MapPath(docPath1) + "\"");
        byte[] data = req.DownloadData(Server.MapPath(docPath1));
        response.BinaryWrite(data);
        response.End();


        Response.Write(docPath1);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string qry3 = "select * from NotificationTBL where ElectionID='" + lblElectionID.Text + "'";
        dt = vs.dbSelect(qry3);

        string docPath2 = dt.Rows[0]["Schedule"].ToString();

        //Response.ContentType = "application/pdf";
        //Response.AppendHeader("Content-Disposition", "attachment; filename=MyFile.pdf");
        //Response.TransmitFile(Server.MapPath(docPath));
        //Response.End();  


        WebClient req = new WebClient();
        HttpResponse response = HttpContext.Current.Response;
        response.Clear();
        response.ClearContent();
        response.ClearHeaders();
        response.Buffer = true;
        response.AddHeader("Content-Disposition", "attachment;filename=\"" + Server.MapPath(docPath2) + "\"");
        byte[] data = req.DownloadData(Server.MapPath(docPath2));
        response.BinaryWrite(data);
        response.End();


        Response.Write(docPath2);
    }
}