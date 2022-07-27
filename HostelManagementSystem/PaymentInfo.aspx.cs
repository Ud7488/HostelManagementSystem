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
    public partial class PaymentInfo : System.Web.UI.Page
    {
        string Strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            STUDENT_NAME.Text = ConfigurationManager.AppSettings["FID"].ToString();
            if (Session["username"].ToString() == "" || Session["username"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }

            try
            {
                SqlConnection con = new SqlConnection(Strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO payment_info(full_name,payment_date,paid_by,amount,remarks) SELECT full_name, " + DateTime.Now.ToString("yyyy-MM-dd") + "," + STUDENT_NAME.Text + ", " + AMOUNT.Text + "," + REMARKS.Text + " FROM register_info WHERE full_name = '" + Session["full_name"].ToString().Trim() + "' ");

                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}