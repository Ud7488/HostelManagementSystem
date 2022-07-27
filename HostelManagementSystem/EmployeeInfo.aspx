<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeInfo.aspx.cs" Inherits="HostelManagementSystem.EmployeeInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-5">
                <table>
                    <tr>
                        <td style="width: 24%; text-align: right">Email</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 50%; text-align: right">
                            <asp:TextBox ID="EMAIL" TextMode="Email" CssClass="form-control" runat="server">
                            </asp:TextBox><asp:Button runat="server" ID="Go" CssClass="btn btn-primary" Text="Go" OnClick="Go_Click" /></td>
                    </tr>
                    <tr>
                        <td style="width: 24%; text-align: right">Full Name</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 50%; text-align: right">
                            <asp:TextBox ID="FULL_NAME" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 24%; text-align: right">Contact Number</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 50%; text-align: right">
                            <asp:TextBox ID="CONTACT" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 24%; text-align: right">Gender</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 50%; text-align: right">
                            <asp:DropDownList ID="GENDER" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Select" Value="select" />
                                <asp:ListItem Text="Male" Value="M" />
                                <asp:ListItem Text="Female" Value="F" />
                                <asp:ListItem Text="Others" Value="O" />
                            </asp:DropDownList></td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td style="width: 24%; text-align: right">Address</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 50%; text-align: right">
                            <asp:TextBox ID="ADDRESS" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 24%; text-align: right">Salary</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 50%; text-align: right">
                            <asp:TextBox ID="SALARY" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 24%; text-align: right">Designation</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 50%; text-align: right">
                            <asp:TextBox ID="DESIGNATION" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 24%; text-align: right">Join Date</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 50%; text-align: right">
                            <asp:TextBox ID="JOIN_DATE" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
                &nbsp;
                    <div class="row">
                        <div class="col">
                            <asp:Button ID="ADD" class="btn btn-success" runat="server" Text="Add" OnClick="ADD_Click" />
                            <asp:Button ID="UPDATE" class="btn btn-warning" runat="server" Text="Update" OnClick="UPDATE_Click" />
                            <asp:Button ID="DELETE" class="btn btn-danger" runat="server" Text="Delete" OnClick="DELETE_Click" />
                        </div>
                    </div>
            </div>
            <div class="col-7">
                <div class="row">
                    <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                                <asp:BoundField DataField="join_date" HeaderText="join_date" SortExpression="join_date" />
                                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                                <asp:BoundField DataField="designation" HeaderText="designation" SortExpression="designation" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HOSTEL %>" SelectCommand="SELECT * FROM [employee_info]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
