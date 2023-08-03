     <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="ELibraryManagement.adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/adminuser.png" class="img-fluid" width="150px"/>
                                </center>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
                                </center>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col">


                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" runat="server" placeholder="Member ID"> </asp:TextBox>
                                </div>
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" runat="server" placeholder="Password" TextMode="Password"> </asp:TextBox>
                                </div>

                                <div class="form-group" style="margin:17px 0px;">
                                    <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-success w-100 btn-lg" OnClick="Button1_Click" />
                                </div>
                                

                            </div>
                        </div>

                    </div>
                </div>
                
                <a href="homepage.aspx"><< Back to Home Page</a>
                <br />
                <br />
            </div>
        </div>
    </div>
</asp:Content>
