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
                var keys = Session.Keys;
                if (keys != null)
                {
                    if (keys.Count > 0)
                    {
                        if (Session["role"].Equals(""))
                        {
                            UserLogin.Visible = true; // user login link button
                            SignUp.Visible = true; // sign up link button

                            LogOut.Visible = false; // logout link button
                            Hello.Visible = false; // hello user link button
                            Admin.Visible = true; // admin login

                            ROOM_INFO.Visible = false;
                            STUDENT_INFO.Visible = false;
                            VENDOR_INFO.Visible = false;
                            PAYMENT_INFO.Visible = false;
                            ROOM_REQUEST.Visible = false;
                            EMPLOYEE_INFO.Visible = false;
                        }
                        else if (Session["role"].Equals("user"))
                        {
                            UserLogin.Visible = false; // user login link button
                            SignUp.Visible = false; // sign up link button

                            LogOut.Visible = true; // logout link button
                            Hello.Visible = true; // hello user link button
                            Hello.Text = "Hello " + Session["username"].ToString();
                            Admin.Visible = false; //admin login

                            ROOM_INFO.Visible = false;
                            STUDENT_INFO.Visible = false;
                            VENDOR_INFO.Visible = false;
                            PAYMENT_INFO.Visible = false;   
                            ROOM_REQUEST.Visible = false;
                            EMPLOYEE_INFO.Visible = false;  
                        }
                        else if (Session["role"].Equals("admin"))
                        {
                            UserLogin.Visible = false; // user login link button
                            SignUp.Visible = false; // sign up link button
                            CONTACTUS.Visible = false;
                            HOME.Visible = false;


                            LogOut.Visible = true; // logout link button
                            Hello.Visible = false; // hello user link button
                            Hello.Text = "Hello Admin";
                            Admin.Visible = false; // admin login

                            ROOM_INFO.Visible = true;
                            STUDENT_INFO.Visible = true;
                            VENDOR_INFO.Visible = true;
                            PAYMENT_INFO.Visible = true;
                            ROOM_REQUEST.Visible = true;
                            EMPLOYEE_INFO.Visible = true;
                        }
                    }
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
        protected void Admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void ROOM_INFO_Click(object sender, EventArgs e)
        {
            Response.Redirect("RoomInfo.aspx");
        }

        protected void STUDENT_INFO_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentInfo.aspx");
        }

        protected void PAYMENT_INFO_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentInfo.aspx");
        }

        protected void EMPLOYEE_INFO_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeInfo.aspx");
        }

        protected void VENDOR_INFO_Click(object sender, EventArgs e)
        {
            Response.Redirect("VendorInfo.aspx");
        }

        protected void ROOM_REQUEST_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterRequest.aspx");
        }
    }
}