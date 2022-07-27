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
    public partial class RoomInfo : System.Web.UI.Page
    {
        string Strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void DeleteRoom()
        {
            try
            {
                SqlConnection con = new SqlConnection(Strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from room_info WHERE email ='" + ROOM_NO.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Room details deleted successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void UpdateRoom()
        {
            try
            {
                SqlConnection con = new SqlConnection(Strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE room_info SET no_of_seat=@no_of_seat, block=@block,floor=@floor,description=@description WHERE room_no = '" + ROOM_NO.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@no_of_seat", NO_OF_SEAT.Text.Trim());
                cmd.Parameters.AddWithValue("@block", BLOCK.Text.Trim());
                cmd.Parameters.AddWithValue("@floor", FLOOR.Text.Trim());
                cmd.Parameters.AddWithValue("@description", DESCRIPTION.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Room details updated successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void AddNewRoom()
        {
            try
            {
                SqlConnection con = new SqlConnection(Strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO room_info(room_no,no_of_seat,block,floor,description) values(@room_no,@no_of_seat,@block,@floor,@description)", con);

                cmd.Parameters.AddWithValue("@room_no", ROOM_NO.Text.Trim());
                cmd.Parameters.AddWithValue("@no_of_seat", NO_OF_SEAT.Text.Trim());
                cmd.Parameters.AddWithValue("@block", BLOCK.Text.Trim());
                cmd.Parameters.AddWithValue("@floor", FLOOR.Text.Trim());
                cmd.Parameters.AddWithValue("@description", DESCRIPTION.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Room details added successfully');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void ADD_Click(object sender, EventArgs e)
        {
            AddNewRoom();
        }

        protected void UPDATE_Click(object sender, EventArgs e)
        {
            UpdateRoom();
        }

        protected void DELETE_Click(object sender, EventArgs e)
        {
            DeleteRoom();
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

                SqlCommand cmd = new SqlCommand("SELECT * from room_info where room_no='" + ROOM_NO.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    NO_OF_SEAT.Text = dt.Rows[0][1].ToString();
                    BLOCK.Text = dt.Rows[0][2].ToString();
                    FLOOR.Text = dt.Rows[0][3].ToString();
                    DESCRIPTION.Text = dt.Rows[0][4].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid room ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}