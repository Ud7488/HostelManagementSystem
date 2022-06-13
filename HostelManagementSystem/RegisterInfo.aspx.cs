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
    public partial class RegisterInfo : System.Web.UI.Page
    {
        string Strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(Strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO register_info(email,full_name,address,dob,std_contact,blood_group,father_name,father_contact,local_name,local_contact,college_name,room_type) " +
                                "values(@email,@full_name,@address,@dob,@std_contact,@blood_group,@father_name,@father_contact,@local_name,@local_contact,@college_name,@room_type)", con);
                cmd.Parameters.AddWithValue("@email", STUDENT_ID.Text.Trim());
                cmd.Parameters.AddWithValue("@full_name", STUDENT_NAME.Text.Trim());
                cmd.Parameters.AddWithValue("@address", ADDRESS.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", DOB.Text.Trim());
                cmd.Parameters.AddWithValue("@std_contact", STUDENT_CONTACT.Text.Trim());
                cmd.Parameters.AddWithValue("@blood_group", BLOOD_GROUP.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@father_name", FATHER_NAME.Text.Trim());
                cmd.Parameters.AddWithValue("@father_contact", FATHER_CONTACT.Text.Trim());
                cmd.Parameters.AddWithValue("@local_name", LOCAL_GAURDIAN.Text.Trim());
                cmd.Parameters.AddWithValue("@local_contact", LOCAL_CONTACT.Text.Trim());
                cmd.Parameters.AddWithValue("@college_name", COLLEGE_NAME.Text.Trim());
                cmd.Parameters.AddWithValue("@room_type", ROOM_TYPE.SelectedItem.Value);
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Successfully registered.');</script>");
                Response.Redirect("Default.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}