using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HostelManagementSystem
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    UserLogin.Visible = true; // user login link button
                    SignUp.Visible = true; // sign up link button

                    LogOut.Visible = false; // logout link button
                    Hello.Visible = false; // hello user link button

                }

                else if (Session["role"].Equals("user"))
                {
                    UserLogin.Visible = false; // user login link button
                    SignUp.Visible = false; // sign up link button

                    LogOut.Visible = true; // logout link button
                    Hello.Visible = true; // hello user link button
                    Hello.Text = "Hello " + Session["username"].ToString();

                }
                else if (Session["role"].Equals("admin"))
                {
                    UserLogin.Visible = false; // user login link button
                    SignUp.Visible = false; // sign up link button

                    LogOut.Visible = true; // logout link button
                    Hello.Visible = true; // hello user link button
                    Hello.Text = "Hello Admin";

                }
            }
            catch (Exception ex)
            {

            }
        }
        protected void UserLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void LogOut_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            UserLogin.Visible = true; // user login link button
            SignUp.Visible = true; // sign up link button

            LogOut.Visible = false; // logout link button
            Hello.Visible = false; // hello user link button

            Response.Redirect("Default.aspx");
        }

        protected void Hello_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }
    }
}