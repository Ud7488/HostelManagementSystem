<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterRequest.aspx.cs" Inherits="HostelManagementSystem.RegisterRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div class="row">

            <script type="text/javascript">
                $(document).ready(function () {
                    $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
                });
            </script>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                    <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                    <asp:BoundField DataField="std_contact" HeaderText="std_contact" SortExpression="std_contact" />
                    <asp:BoundField DataField="blood_group" HeaderText="blood_group" SortExpression="blood_group" />
                    <asp:BoundField DataField="father_name" HeaderText="father_name" SortExpression="father_name" />
                    <asp:BoundField DataField="father_contact" HeaderText="father_contact" SortExpression="father_contact" />
                    <asp:BoundField DataField="local_name" HeaderText="local_name" SortExpression="local_name" />
                    <asp:BoundField DataField="local_contact" HeaderText="local_contact" SortExpression="local_contact" />
                    <asp:BoundField DataField="college_name" HeaderText="college_name" SortExpression="college_name" />
                    <asp:BoundField DataField="room_type" HeaderText="room_type" SortExpression="room_type" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HOSTEL %>" SelectCommand="SELECT * FROM [register_info]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
