<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="ELibraryManagement.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<tbody></tbody>").append($(this).find("tr:first"))).dataTable
        });
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
                                    <h4>Member Details</h4>
                                    <span></span>

                                </center>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/generaluser.png" width="100" class="img-fluid" />
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
                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" runat="server" placeholder="Member ID" Style="margin-bottom: 10px;"> </asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" Text="GO" class="btn btn-primary" Style="height: 38px;" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 ">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" runat="server" placeholder="Full Name" Style="margin-bottom: 15px; background-color: #D8D8D8;" ReadOnly="true" > </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5 ">
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" runat="server" placeholder="Account Status" Style="margin-bottom: 15px;background-color: #D8D8D8;" ReadOnly="true"> </asp:TextBox>
                                   
                                        <asp:LinkButton ID="Button4" runat="server" Text="GO" class="btn btn-success" Style="height: 38px; border-radius: 5px; margin: 0px 2px;" OnClick="Button4_Click"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                        <asp:LinkButton ID="Button5" runat="server" Text="GO" class="btn btn-warning" Style="height: 38px; border-radius: 5px; margin: 0px 2px;" OnClick="Button5_Click"><i class="far fa-solid fa-circle-pause"></i></asp:LinkButton>
                                        <asp:LinkButton ID="Button6" runat="server" Text="GO" class="btn btn-danger" Style="height: 38px; border-radius: 5px; margin: 0px 2px;" OnClick="Button6_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                        
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <div class="row">

                            <div class="col-md-3 ">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox14" runat="server" class="form-control" runat="server" placeholder="DOB" Style="margin-bottom: 15px; background-color: #D8D8D8;" ReadOnly="true"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox11" runat="server" class="form-control" runat="server" placeholder="Contact Number" Style="margin-bottom: 10px; background-color: #D8D8D8;" ReadOnly="true"> </asp:TextBox>

                                    </div>
                                </div>
                            </div> 
                            <div class="col-md-5">
                                <label>Email-ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox12" runat="server" class="form-control" runat="server" placeholder="Email-ID" Style="margin-bottom: 10px; background-color: #D8D8D8;" ReadOnly="true"> </asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 ">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" runat="server" placeholder="State" Style="margin-bottom: 15px; background-color: #D8D8D8;" ReadOnly="true"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox15" runat="server" class="form-control" runat="server" placeholder="City" Style="margin-bottom: 10px; background-color: #D8D8D8;" ReadOnly="true"> </asp:TextBox>

                                    </div>
                                </div>
                            </div> 
                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox16" runat="server" class="form-control" runat="server" placeholder="Pincode" Style="margin-bottom: 10px; background-color: #D8D8D8;" ReadOnly="true"> </asp:TextBox>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">

                           
                            <div class="col-12">
                                <label>Full Postal Address</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox8" runat="server" class="form-control" runat="server" placeholder="Full Postal Address" Style="margin-bottom: 10px;background-color: #D8D8D8;" TextMode="MultiLine" ReadOnly="true"> </asp:TextBox>

                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-8 mx-auto">

                                <asp:Button ID="Button2" runat="server" Text="Delete User Permanently" class="btn btn-danger btn-lg btn-block w-100" OnClick="Button2_Click" />
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
                                    <h4>Members List</h4>

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

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_table]"></asp:SqlDataSource>
                                <asp:GridView class="table table-dark table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="member_id">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id"></asp:BoundField>
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name"></asp:BoundField>
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status"></asp:BoundField>
                                        <asp:BoundField DataField="contact_number" HeaderText="Contact" SortExpression="contact_number"></asp:BoundField>
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email"></asp:BoundField>
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state"></asp:BoundField>
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city"></asp:BoundField>
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
