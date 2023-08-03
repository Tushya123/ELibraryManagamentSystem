<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="ELibraryManagement.adminbookissuing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4>
                                    <span></span>

                                </center>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/books.png" width="100" class="img-fluid" />
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

                            <div class="col-md-6 ">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" runat="server" placeholder="Member ID" Style="margin-bottom: 15px;"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" runat="server" placeholder="ID" Style="margin-bottom: 10px;"> </asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" Text="GO" class="btn btn-primary" Style="height: 38px;" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-md-6 ">
                                <label>Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" runat="server" placeholder="Member Name" Style="margin-bottom: 15px; background-color: #D8D8D8;" ReadOnly="true"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" runat="server" placeholder="Book Name" Style="margin-bottom: 10px; background-color: #D8D8D8;" ReadOnly="true"> </asp:TextBox>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-md-6 ">
                                <label>Start Date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" runat="server" placeholder="Start Date" Style="margin-bottom: 15px;" TextMode="Date"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>End Date</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox6" runat="server" class="form-control" runat="server" placeholder="End Date" Style="margin-bottom: 10px;" TextMode="Date"> </asp:TextBox>

                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-6">

                                <asp:Button ID="Button2" runat="server" Text="Issue" class="btn btn-primary btn-lg btn-block w-100" />
                            </div>
                            <div class="col-6">

                                <asp:Button ID="Button3" runat="server" Text="Return" class="btn btn-success btn-lg btn-block w-100" />
                            </div>

                        </div>

                    </div>
                </div>

                <a href="homepage.aspx" style="text-decoration: none;"><< Back to Home Page</a>
                <br />
                <br />
            </div>

            <div class="col-md-7 ">



                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Issued Book List</h4>

                                </center>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col">

                                <hr />


                            </div>
                        </div>
                        <div class="row">
                            <div class="col">


                                <asp:GridView class="table table-dark table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>

                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
