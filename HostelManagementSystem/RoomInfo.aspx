<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoomInfo.aspx.cs" Inherits="HostelManagementSystem.RoomInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div class="row">
            <div class="col-5">
                <table>
                    <tr>
                        <td style="width: 24%; text-align: right">Room Number</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 50%; text-align: right">
                            <asp:TextBox ID="ROOM_NO" CssClass="form-control" runat="server">
                            </asp:TextBox><asp:Button runat="server" ID="Go" CssClass="btn btn-primary" Text="Go" OnClick="Go_Click" /></td>
                    </tr>
                    <tr>
                        <td style="width: 24%; text-align: right">Number of Seat</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 50%; text-align: right">
                            <asp:TextBox ID="NO_OF_SEAT" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 24%; text-align: right">Floor</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 50%; text-align: right">
                            <asp:TextBox ID="FLOOR" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 24%; text-align: right">Block</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 50%; text-align: right">
                            <asp:TextBox ID="BLOCK" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 24%; text-align: right">Description</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 50%; text-align: right">
                            <asp:TextBox ID="DESCRIPTION" CssClass="form-control" runat="server"></asp:TextBox></td>
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
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HOSTEL %>" SelectCommand="SELECT * FROM [employee_info]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
