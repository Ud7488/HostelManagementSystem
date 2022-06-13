<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="HostelManagementSystem.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div class="row">
            <div class="col-sm-6">
                <table>
                    <tr>
                        <td style="width: 29%; text-align: right">Student Name</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="STUDENT_NAME" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Email</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="STUDENT_ID" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Address</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="ADDRESS" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Contact Number</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="STUDENT_CONTACT" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Date of Birth</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="DOB" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Blood Group</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox CssClass="form-control" ID="BLOOD_GROUP" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </div>
            <div class="col-sm-6">
                <table>
                    
                    <tr>
                        <td style="width: 29%; text-align: right">Father's Name</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="FATHER_NAME" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Contact Number</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="FATHER_CONTACT" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Local Guardian</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="LOCAL_GAURDIAN" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Contact Number</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="LOCAL_CONTACT" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">College Name</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="COLLEGE_NAME" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Room Type</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right" class="form-group"><asp:TextBox ID="ROOM_TYPE" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
