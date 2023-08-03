<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="ELibraryManagement.adminpublishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:10px;">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Publisher Details</h4>
                                    <span></span>

                                </center>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/publisher.png" width="100" class="img-fluid"/>
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
                            <div class="col-md-4">
                                <label>Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" runat="server" placeholder="ID" Style="margin-bottom: 10px;" OnTextChanged="TextBox1_TextChanged"> </asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" Text="GO" class="btn btn-primary" Style="height: 38px;" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8 ">
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" runat="server" placeholder="Publisher Name" Style="margin-bottom: 15px;" OnTextChanged="TextBox2_TextChanged" /> </asp:TextBox>
                                </div>
                            </div>
                        </div>







                        <div class="row" style="margin-top:10px;margin-bottom:15px;">
                            <div class="col-4"">
                              
                                <asp:Button ID="Button2" runat="server" Text="Add" class="btn btn-success btn-md btn-block w-100" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                              
                                <asp:Button ID="Button3" runat="server" Text="Update" class="btn btn-warning btn-md btn-block w-100" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                              
                                <asp:Button ID="Button4" runat="server" Text="Delete" class="btn btn-danger btn-md btn-block w-100" OnClick="Button4_Click" />
                            </div>
                        </div>

                    </div>
                </div>

                <a href="Default.aspx" style="text-decoration: none;"><< Back to Home Page</a>
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
                                    <h4>Author List</h4>
                                  
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

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibraryDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_table]"></asp:SqlDataSource>
                                <asp:GridView class="table table-dark table-striped table-bordered" ID="GridView2" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>


                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
