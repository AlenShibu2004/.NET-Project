using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Login : System.Web.UI.Page
{
    VotingSystemClass vs = new VotingSystemClass();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry1 = "select count(*) from LoginTBL where LoginID='" + txtStdID.Text + "' and Password='" + txtPassword.Text + "'";
        int a = Convert.ToInt32(vs.dbScalar(qry1));

        if (a == 1)
        {
            string qry2 = "select * from LoginTBL where LoginID='" + txtStdID.Text + "' and Password='" + txtPassword.Text + "'";
            dt = vs.dbSelect(qry2);

            string UserType = dt.Rows[0]["UserType"].ToString();
            string UserStatus = dt.Rows[0]["UserStatus"].ToString();

            Session["LoginID"] = txtStdID.Text;

            if (UserType == "STUDENT")
            {
                if (UserStatus == "APPROVED")
                {
                    Response.Redirect("StudentHome.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Account not verified contact admin........')</script>");
                    Response.Write("<script>window.location.href='Login.aspx';</script>");
                }
            }
            else if (UserType == "ADMIN")
            {
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Response.Redirect("ObserverHome.aspx");
            }


        }


        else
        {
            Response.Write("<script>alert('Invalid Login Details........')</script>");
            Response.Write("<script>window.location.href='Login.aspx';</script>");
        }
    }
}