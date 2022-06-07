<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="HostelManagementSystem.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img src="imgs/memberSignUp.jfif" alt="HTML Icon" Width="100"; />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Member Sign Up</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-6">
                        <label>Member ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox1" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator1" 
                                runat="server" 
                                ErrorMessage="Please Enter Password"    
                                ControlToValidate="TextBox2">
                            </asp:RequiredFieldValidator>  
                            <asp:RegularExpressionValidator 
                                ID="RegularExpressionValidator1" 
                                runat="server" 
                                ErrorMessage="Enter Strong Password"  
                                ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"  
                                ControlToValidate="TextBox2">
                            </asp:RegularExpressionValidator>
                        </div>
                     </div>
                   </div>
                   <div class="row">
                       <div class="col-md-6">
                           <label>Full Name</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                           </div>
                       </div>
                       <div class="col-md-6">
                           <label>Date of Birth</label>
                           <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                           </div>
                       </div>
                   </div>
                   <div class="row">
                       <div class="col-md-6">
                           <label>Contact No</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                           </div>
                       </div>
                       <div class="col-md-6">
                           <label>Email ID</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                               <asp:RegularExpressionValidator 
                                   ID="RegEmail"
                                   ControlToValidate="TextBox6"
                                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                   runat="server" 
                                   ErrorMessage="Enter valid Email Address">
                               </asp:RegularExpressionValidator>
                           </div>
                       </div>
                   </div>
                   <div class="row">
                       <div class="col">
                           <label>Full Address</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                           </div>
                       </div>
                   </div>
                   <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Button class="btn btn-success btn-block btn-lg" ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click"  />
                            </div>
                        </div>
                   </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
