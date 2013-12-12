using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class G2007_T4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.lblWarning.Visible = false;

        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Ilmot"].ConnectionString);
        try
        {
            conn.Open();

            try
            {
                SqlCommand getStudents = new SqlCommand("SELECT COUNT(DISTINCT asioid) FROM lasnaolot WHERE course LIKE 'IIO13200%'", conn);
                SqlCommand getSignups = new SqlCommand("SELECT COUNT(*) FROM lasnaolot", conn);
                SqlCommand getCourses = new SqlCommand("SELECT DISTINCT(course) FROM lasnaolot", conn);

                this.lblSignups.Text = "Ilmottautumisia: " + (int)getSignups.ExecuteScalar();
                this.lblStudents.Text = "Oppilaita: " + (int)getStudents.ExecuteScalar();

                SqlDataReader reader = getCourses.ExecuteReader();

                /*for (int i = 0; i < reader.FieldCount; i++)
                {
                    CheckBox cb = new CheckBox();
                    cb.ID = "CheckBox_" + reader["course"].ToString();
                    this.checkBoxes.Controls.Add(cb);
                }*/
            }
            catch (Exception ex)
            {
                this.lblWarning.Visible = true;
                this.lblWarning.Text = ex.ToString();
            }

        }
        catch(Exception ex)
        {
            this.lblWarning.Visible = true;
            this.lblWarning.Text = "Ei saatu yhteyttä tietokantaan";
        }
    }
    protected void checkBoxList_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}