<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaymentInfo.aspx.cs" Inherits="HostelManagementSystem.PaymentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div class="row">
            <div class="col">
                <table>
                    <tr>
                        <td style="width: 29%; text-align: right">Student Name</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="STUDENT_NAME" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Payment Date</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="PAYMENT_DATE" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Paid By</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="PAID_BY" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Amount</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox ID="AMOUNT" CssClass="form-control" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 29%; text-align: right">Remarks</td>
                        <td style="width: 1%">:</td>
                        <td style="width: 70%; text-align: right"><asp:TextBox CssClass="form-control" ID="REMARKS" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
