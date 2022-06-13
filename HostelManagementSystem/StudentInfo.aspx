<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="HostelManagementSystem.StudentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        <h4>Registration Information</h4>
                    </div>
                    <br />
                    <asp:Table runat="server" ID="tb_registration_detail"  class="table table-borderless ">
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell>Student Name</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Father's Name</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Local Guardian</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Address</asp:TableHeaderCell>
                            <asp:TableHeaderCell>College's Name</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Contact Number</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Action</asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                    </asp:Table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
