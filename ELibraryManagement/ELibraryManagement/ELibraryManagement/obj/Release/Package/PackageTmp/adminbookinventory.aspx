<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="ELibraryManagement.adminbookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>
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
                                    <h4>Book Details</h4>
                                    <span></span>

                                </center>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img id="imgview" src="book_inventory/books1.png" width="100px" height="150px" />
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
                                <center>
                                    <asp:FileUpload ID="FileUpload1" onchange="readURL(this);" runat="server" class="form-control" />

                                </center>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" runat="server" placeholder="Book ID" Style="margin-bottom: 10px;"> </asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" Text="GO" class="btn btn-primary" Style="height: 38px;" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8 ">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" runat="server" placeholder="Full Name" Style="margin-bottom: 15px;"> </asp:TextBox>
                                </div>
                            </div>


                        </div>
                        <div class="row">

                            <div class="col-md-4 ">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="Hindi" Value="Hindi" />
                                        <asp:ListItem Text="Marathi" Value="Marathi" />
                                        <asp:ListItem Text="French" Value="French" />
                                        <asp:ListItem Text="German" Value="German" />
                                        <asp:ListItem Text="Urdu" Value="Urdu" />
                                    </asp:DropDownList>
                                </div>
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                                        <asp:ListItem Text="Publisher 3" Value="Publisher 3" />
                                        <asp:ListItem Text="Publisher 4" Value="Publisher 4" />
                                        <asp:ListItem Text="Publisher 5" Value="Publisher 5" />

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4 ">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList3" runat="server" class="form-control">
                                        <asp:ListItem Text="Joseph Murphy" Value="Joseph Murphy" />
                                        <asp:ListItem Text="A002" Value="A002" />
                                        <asp:ListItem Text="A003" Value="A003" />
                                    </asp:DropDownList>
                                </div>
                                <label>Publisher Date</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" runat="server" placeholder="Date" Style="margin-bottom: 10px;" ReadOnly="false" TextMode="Date"> </asp:TextBox>

                                    </div>


                                </div>
                            </div>
                            <div class="col-md-4 mx-auto">
                                <label>Genre</label>
                                <div class="form-group">


                                    <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="4" CssClass="form-control">
                                        <asp:ListItem Text="Action" Value="Action" />
                                        <asp:ListItem Text="Adventure" Value="Adventure" />
                                        <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                        <asp:ListItem Text="Self Help" Value="Self Help" />
                                        <asp:ListItem Text="Motivation" Value="Motivation" />
                                        <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                        <asp:ListItem Text="Wellness" Value="Wellness" />
                                        <asp:ListItem Text="Crime" Value="Crime" />
                                        <asp:ListItem Text="Drama" Value="Drama" />
                                        <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                        <asp:ListItem Text="Horror" Value="Horror" />
                                        <asp:ListItem Text="Poetry" Value="Poetry" />
                                        <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                    </asp:ListBox>

                                </div>
                            </div>
                            <div class="col-md-4 ">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" runat="server" placeholder="Edition" Style="margin-bottom: 15px;"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Book Cost(per unit)</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox15" runat="server" class="form-control" runat="server" placeholder="Book Cost(per unit)" Style="margin-bottom: 10px;" ReadOnly="false" TextMode="Number"> </asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox16" runat="server" class="form-control" runat="server" placeholder="Pages" Style="margin-bottom: 10px;" ReadOnly="false" TextMode="Number"> </asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 ">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox17" runat="server" class="form-control" runat="server" placeholder="Actual Stock" Style="margin-bottom: 15px;"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox18" runat="server" class="form-control" runat="server" placeholder="Current Stock" Style="margin-bottom: 10px; background-color: #D8D8D8;" TextMode="Number" ReadOnly="true"> </asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Issued books</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox19" runat="server" class="form-control" runat="server" placeholder="Issued books" Style="margin-bottom: 10px 0px; background-color: #D8D8D8;" TextMode="Number" ReadOnly="true"> </asp:TextBox>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">


                            <div class="col-12">
                                <label>Book Description</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox8" runat="server" class="form-control" runat="server" placeholder="Book Description" Style="margin: 10px 0px;" TextMode="MultiLine" ReadOnly="false"> </asp:TextBox>

                                    </div>
                                </div>
                            </div>


                        </div>


                        <div class="row">
                            <div class="col-4">

                                <asp:Button ID="Button2" runat="server" Text="Add" class="btn btn-success btn-lg btn-block w-100" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">

                                <asp:Button ID="Button3" runat="server" Text="Update" class="btn btn-warning btn-lg btn-block w-100" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">

                                <asp:Button ID="Button4" runat="server" Text="Delete" class="btn btn-danger btn-lg btn-block w-100" OnClick="Button4_Click" />
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
                                    <h4>Book Inventory List</h4>

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

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="book_id">
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
</asp:Content>
