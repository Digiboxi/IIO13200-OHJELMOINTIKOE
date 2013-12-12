using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class G2007_T2 : System.Web.UI.Page
{
    private GridView taulu;

    protected void Page_Load(object sender, EventArgs e)
    {
        taulu = new GridView();
        readXML();
    }

    private void readXML()
    {
        XmlDocument doc = new XmlDocument();
        doc.Load("/App_Data/Työntekijät2013.xml");

        XmlNodeList workers = doc.SelectNodes("//tyontekijat");
        foreach (XmlNode worker in workers)
        {
            this.test.Text += worker.FirstChild.Value + "asd";
        }
        this.test.Text += "asd";
    }
}