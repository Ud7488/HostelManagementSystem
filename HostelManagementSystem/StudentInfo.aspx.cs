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
    public partial class StudentInfo : System.Web.UI.Page
    {
        string Strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(Strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(" select * from register_info ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TableRow tb_row = new TableRow();

                TableCell tc_name = new TableCell();
                Label lbl_name = new Label();
                lbl_name.ID = "NAME_" + i.ToString();
                lbl_name.Text = dt.Rows[i]["email"].ToString();
                tc_name.Controls.Add(lbl_name);
                tb_row.Cells.Add(tc_name);

                TableCell tc_father = new TableCell();
                Label lbl_father = new Label();
                lbl_father.Text = dt.Rows[i]["father_name"].ToString();
                tc_father.Controls.Add(lbl_father);
                tb_row.Cells.Add(tc_father);

                TableCell tc_local = new TableCell();
                Label lbl_local = new Label();
                lbl_local.Text = dt.Rows[i]["local_name"].ToString();
                tc_local.Controls.Add(lbl_local);
                tb_row.Cells.Add(tc_local);

                TableCell tc_address = new TableCell();
                Label lbl_address = new Label();
                lbl_address.Text = dt.Rows[i]["address"].ToString();
                tc_address.Controls.Add(lbl_address);
                tb_row.Cells.Add(tc_address);

                TableCell tc_college = new TableCell();
                Label lbl_college = new Label();
                lbl_college.Text = dt.Rows[i]["college_name"].ToString();
                tc_college.Controls.Add(lbl_college);
                tb_row.Cells.Add(tc_college);

                TableCell tc_contact = new TableCell();
                Label lbl_contact = new Label();
                lbl_contact.Text = dt.Rows[i]["Std_contact"].ToString();
                tc_contact.Controls.Add(lbl_contact);
                tb_row.Cells.Add(tc_contact);

                TableCell tc_button = new TableCell();
                Button action_button = new Button();
                action_button.ID = "ACTION_BUTTON_" + i.ToString();
                action_button.Text = "Details";
                action_button.CssClass = "btn btn-primary";
                tc_button.Controls.Add(action_button);
                tb_row.Cells.Add(tc_button);
                tb_registration_detail.Rows.Add(tb_row);

                action_button.Click += (s, EventArgs) => { Action_button_Click(sender, EventArgs, lbl_name.Text.ToString()); };
            }
        }
        private void Action_button_Click(object sender, EventArgs e, string ID)
        {
            ConfigurationManager.AppSettings["FID"] = ID;
            Response.Redirect("Details.aspx");
        }
    }
}