using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HostelManagementSystem
{
    public partial class Details : System.Web.UI.Page
    {
        string Strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            STUDENT_ID.Text = ConfigurationManager.AppSettings["FID"].ToString();

            try
            {
                SqlConnection con = new SqlConnection(Strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from register_info where email = '" + STUDENT_ID.Text + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    STUDENT_ID.Text = dt.Rows[0]["email"].ToString();
                    STUDENT_NAME.Text = dt.Rows[0]["full_name"].ToString();
                    ADDRESS.Text = dt.Rows[0]["address"].ToString();
                    DOB.Text = dt.Rows[0]["dob"].ToString();
                    STUDENT_CONTACT.Text = dt.Rows[0]["std_contact"].ToString();
                    BLOOD_GROUP.Text = dt.Rows[0]["blood_group"].ToString();
                    FATHER_NAME.Text = dt.Rows[0]["father_name"].ToString();
                    FATHER_CONTACT.Text = dt.Rows[0]["father_contact"].ToString();
                    LOCAL_GAURDIAN.Text = dt.Rows[0]["local_name"].ToString();
                    LOCAL_CONTACT.Text = dt.Rows[0]["local_contact"].ToString();
                    COLLEGE_NAME.Text = dt.Rows[0]["college_name"].ToString();
                    ROOM_TYPE.Text = dt.Rows[0]["room_type"].ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}