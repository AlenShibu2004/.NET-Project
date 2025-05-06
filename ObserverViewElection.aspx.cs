using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
public partial class ObserverViewElection : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblLoginID.Text = Session["LoginID"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        lblElectionID.Text = ddlElectionID.SelectedItem.Text;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string qry1 = "select * from NotificationTBL where ElectionID='" + lblElectionID.Text + "'";
        dt = vs.dbSelect(qry1);

        string docPath = dt.Rows[0]["Schedule"].ToString();

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
        response.AddHeader("Content-Disposition", "attachment;filename=\"" + Server.MapPath(docPath) + "\"");
        byte[] data = req.DownloadData(Server.MapPath(docPath));
        response.BinaryWrite(data);
        response.End();


        Response.Write(docPath);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string qry2 = "select * from NotificationTBL where ElectionID='" + lblElectionID.Text + "'";
        dt = vs.dbSelect(qry2);

        string docPath2 = dt.Rows[0]["Rules"].ToString();

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