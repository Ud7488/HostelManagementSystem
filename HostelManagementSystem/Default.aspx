<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HostelManagementSystem._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div class="row">
            <img src="Images/Hostel8.jpg" height="500" width="1100"  />
            <ul>
                <h4>Features</h4>
                <li>Something</li>
                <li>Something</li>
                <li>Something</li>
                <li>Something</li>
            </ul>
        </div>
        <div class="row">
            <div class="col-4">
                <div class="container-fluid">
                    <h1>Single Sit</h1>
                    <img src="Images/Hostel5.jpg" height="150" width="250" />
                    <p style="color: cornflowerblue">Rs.10000/month</p>
                    <asp:Button class="btn btn-lg btn-btn-info" ID="Button1" runat="server" Text="Book Now" OnClick="Button1_Click" />
                </div>
            </div>
            <div class="col-4">
                <div class="container-fluid">
                    <h1>Double Sit</h1>
                    <img src="Images/Hostel16.jpg" height="150" width="250" />
                    <p style="color: cornflowerblue">Per Person Rs.95000/month</p>
                    <asp:Button class="btn btn-lg btn-btn-info" ID="Button2" runat="server" Text="Book Now" OnClick="Button2_Click" />
                </div>
            </div>
            <div class="col-4">
                <div class="container-fluid">
                    <h1>Triple Sit</h1>
                    <img src="Images/Hostel3.jpg" height="150" width="250" />
                    <p style="color: cornflowerblue">Per Person Rs.85000/month</p>
                    <asp:Button class="btn btn-lg btn-btn-info" ID="Button3" runat="server" Text="Book Now" OnClick="Button3_Click" />
                </div>
            </div>
        </div>
        <div class="row">
            <div>
                <h4 style="color: black">FAQ</h4>
            </div>
            <div class="container">
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">First Question</a>
                            </h4>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse in">
                            <div class="panel-body">
                                First Question's Answer
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Second Question</a>
                            </h4>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse">
                            <div class="panel-body">
                                Second Question's Answer
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Third Question</a>
                            </h4>
                        </div>
                        <div id="collapse3" class="panel-collapse collapse">
                            <div class="panel-body">
                                Third Question's Answer
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
