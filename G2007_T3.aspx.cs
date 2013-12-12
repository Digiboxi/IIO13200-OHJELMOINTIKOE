using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class G2007_T3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["name"] != null) {
            this.login.Visible = false;
        } else {
            // Ei sessiota
            this.logged.Visible = false;
        }
    }


    protected void btnSend_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load("App_Data/users.xml");

        XmlNodeList users = doc.SelectNodes("//users");
        foreach(XmlNode user in users)
        {
            if(user.Attributes["name"].Value == this.txtName.Text && user.Attributes["pass"].Value == this.txtPass.Text) {
                Response.Redirect("google.fi");
            }
        }
    }
}