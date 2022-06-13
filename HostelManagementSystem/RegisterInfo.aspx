<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterInfo.aspx.cs" Inherits="HostelManagementSystem.RegisterInfo" %>
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
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="DOB" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Blood Group</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right" class="form-group">
                            <asp:DropDownList CssClass="form-control" ID="BLOOD_GROUP" runat="server">
                                <asp:ListItem Text="Select" Value="Select"/>
                                <asp:ListItem Text="A Positive" Value="A +"/>
                                <asp:ListItem Text="A Negative" Value="A -"/>
                                <asp:ListItem Text="B Positive" Value="B +"/>
                                <asp:ListItem Text="B Negative" Value="B -"/>
                                <asp:ListItem Text="O Positive" Value="O +"/>
                                <asp:ListItem Text="O Negative" Value="O -"/>
                                <asp:ListItem Text="AB Positive" Value="AB +"/>
                                <asp:ListItem Text="AB Negative" Value="AB -"/>
                            </asp:DropDownList></td>
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
                        <td style="width: 70%; text-align: right" class="form-group">
                            <asp:DropDownList ID="ROOM_TYPE" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select" Value="Select"/>
                                <asp:ListItem Text="Single Sitter" Value="1"/>
                                <asp:ListItem Text="Double Sitter" Value="2"/>
                                <asp:ListItem Text="Triple Sitter" Value="3"/>
                            </asp:DropDownList></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="row">
            <asp:Button CssClass="btn btn-primary" ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
        </div>
    </div>
</asp:Content>
