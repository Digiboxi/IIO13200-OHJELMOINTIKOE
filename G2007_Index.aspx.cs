using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class G2007_Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void T1_Click(object sender, EventArgs e)
    {
        Response.Redirect("G2007_T1.aspx");
    }
    protected void T2_Click(object sender, EventArgs e)
    {
        Response.Redirect("G2007_T2.aspx");
    }
    protected void T3_Click(object sender, EventArgs e)
    {
        Response.Redirect("G2007_T3.aspx");
    }
    protected void T4_Click(object sender, EventArgs e)
    {
        Response.Redirect("G2007_T4.aspx");
    }
    protected void Arviointi_Click(object sender, EventArgs e)
    {
        Response.Redirect("G2007_Pisteet.aspx");
    }
}