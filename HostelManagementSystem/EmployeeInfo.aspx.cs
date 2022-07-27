using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace HostelManagementSystem
{
    public partial class EmployeeInfo : System.Web.UI.Page
    {
        string Strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        void DeleteEmployee()
        {
            try
            {
                SqlConnection con = new SqlConnection(Strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from employee_info WHERE email ='" + EMAIL.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Employee details deleted successfully');</script>");
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void UpdateEmployee()
        {
            try
            {
                SqlConnection con = new SqlConnection(Strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE employee_info SET full_name=@full_name,address=@address,contact=@contact,join_date=@join_date,gender=@gender,salary=@salary,designation=@designation WHERE email = '" + EMAIL.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@email", EMAIL.Text.Trim());
                cmd.Parameters.AddWithValue("@full_name", FULL_NAME.Text.Trim());
                cmd.Parameters.AddWithValue("@address", ADDRESS.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", CONTACT.Text.Trim());
                cmd.Parameters.AddWithValue("@join_date", JOIN_DATE.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", GENDER.Text.Trim());
                cmd.Parameters.AddWithValue("@salary", SALARY.Text.Trim());
                cmd.Parameters.AddWithValue("@designation", DESIGNATION.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Employee details updated successfully');</script>");
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void AddNewEmployee()
        {
            try
            {
                SqlConnection con = new SqlConnection(Strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO employee_info(email,full_name,address,contact,join_date,gender,salary,designation) values(@email,@full_name,@address,@contact,@join_date,@gender,@salary,@designation)", con);

                cmd.Parameters.AddWithValue("@email", EMAIL.Text.Trim());
                cmd.Parameters.AddWithValue("@full_name", FULL_NAME.Text.Trim());
                cmd.Parameters.AddWithValue("@address", ADDRESS.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", CONTACT.Text.Trim());
                cmd.Parameters.AddWithValue("@join_date", JOIN_DATE.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", GENDER.Text.Trim());
                cmd.Parameters.AddWithValue("@salary", SALARY.Text.Trim());
                cmd.Parameters.AddWithValue("@designation", DESIGNATION.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Employee details added successfully');</script>");
               
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void ADD_Click(object sender, EventArgs e)
        {
            AddNewEmployee();
        }

        protected void UPDATE_Click(object sender, EventArgs e)
        {
            UpdateEmployee();
        }

        protected void DELETE_Click(object sender, EventArgs e)
        {
            DeleteEmployee();   
        }

        protected void Go_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(Strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from employee_info where email='" + EMAIL.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    FULL_NAME.Text = dt.Rows[0][1].ToString();
                    GENDER.Text = dt.Rows[0][5].ToString();
                    CONTACT.Text = dt.Rows[0][3].ToString();
                    ADDRESS.Text = dt.Rows[0][2].ToString();
                    SALARY.Text = dt.Rows[0][6].ToString();
                    JOIN_DATE.Text = dt.Rows[0][4].ToString();
                    DESIGNATION.Text = dt.Rows[0][7].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Email ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}