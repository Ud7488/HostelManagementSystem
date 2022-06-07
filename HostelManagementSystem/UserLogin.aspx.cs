using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace HostelManagementSystem
{
    public partial class UserLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // user login
        protected void Login_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='" + ID.Text.Trim() + "' AND password='" + Password.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        //Response.Write("<script>alert('" + dr.GetValue(8).ToString() + "');</script>");
                        Response.Write("<script>alert('Successful login');</script>");
                        Session["username"] = dr.GetValue(0).ToString();
                        Session["member_id"] = dr.GetValue(5).ToString();
                        Session["role"] = "user";
                        Session["status"] = dr.GetValue(7).ToString();
                    }
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}
