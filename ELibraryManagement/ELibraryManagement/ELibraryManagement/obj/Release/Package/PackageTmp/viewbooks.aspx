<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="ELibraryManagement.viewbooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <center>
                    <h3>
                        Book Inventory List
                    </h3>
                </center>
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <asp:Panel ID="Panel1" runat="server" role="alert" CssClass="alert alert-success" Visible="false"> 
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </asp:Panel>
                    </div>
                </div>
                <br />
                <div class="row align-items-center align-content-between">
                   <div class="col-md-7 ">
               



                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                            </div>
                        </div>

                        <div class="row">
                           
                        </div>
                        <div class="row">
                            <div class="col">

                                <hr />


                            </div>
                        </div>
                        
                        <div class="row align-content-center align-items-center">
                            <div class="col ">

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered align-items-center" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="book_id">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="book_id" ReadOnly="True" SortExpression="book_id"></asp:BoundField>
                                        <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name"></asp:BoundField>
                                        <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre"></asp:BoundField>
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name"></asp:BoundField>
                                        <asp:BoundField DataField="actual_stock" HeaderText="actual_stock" SortExpression="actual_stock"></asp:BoundField>
                                        <asp:BoundField DataField="current_stock" HeaderText="current_stock" SortExpression="current_stock"></asp:BoundField>
                                        </Columns>
                                </asp:GridView>

                            </div>
                        </div>
                            


                    </div>  
                </div>
            </div>
                </div>
            </div>
           
                <a href="homepage.aspx"><< Back to Home</a><span class="clearfix"></span></br>
          
        </div>
    </div>
</asp:Content>
