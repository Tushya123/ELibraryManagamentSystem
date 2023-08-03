<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignuppage.aspx.cs" Inherits="ELibraryManagement.usersignuppage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
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
                                    <h4>Member Signup</h4>
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
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" runat="server" placeholder="Member ID"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" runat="server" placeholder="Password" TextMode="Date"> </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" runat="server" placeholder="Contact Number" TextMode="Number"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" runat="server" placeholder="Email ID" TextMode="Email"> </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                        <asp:ListItem Text="Assam" Value="Assam" />
                                        <asp:ListItem Text="Bihar" Value="Bihar" />
                                        <asp:ListItem Text="Chattisgarh" Value="Chattisgarh" />
                                        <asp:ListItem Text="Goa" Value="Goa" />
                                        <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                        <asp:ListItem Text="Haryana" Value="Haryana" />
                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                        <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                        <asp:ListItem Text="Kerela" Value="Kerela" />
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                        <asp:ListItem Text="Manipur" Value="Manipur" />
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                        <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                        <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                        <asp:ListItem Text="Odisha" Value="Odisha" />
                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                        <asp:ListItem Text="Telangana" Value="Telangana" />
                                        <asp:ListItem Text="Tripura" Value="Tripura" />
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                        <asp:ListItem Text="Uttrakhand" Value="Uttrakhand" />
                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />


                                        <%-- Andhra Pradesh	
2	Arunachal Pradesh	
3	Assam	
4	Bihar	
5	Chhattisgarh	
6	Goa	
7Gujarat
8	Haryana	
9	Himachal Pradesh
10	Jharkhand
11	Karnataka	
12	Kerala	Thiruvana
13	Madhya Prade
14	Maharasht
15	Manip
16	Meghalaya
17	Mizor
18	Nagala
19	Odisha	Bh
20	Punjab	
21	Rajasthan
22	Sikkim
23	Tamil Nadu
24	Telangana	
25	Tripura
26	Uttar Prades
27	Uttarakhand
28	West Bengal --%>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" runat="server" placeholder="City" TextMode="SingleLine"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox6" runat="server" class="form-control" runat="server" placeholder="Pincode" TextMode="Number"> </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox7" runat="server" class="form-control" runat="server" placeholder="City" TextMode="MultiLine" Rows="2"> </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <center>
                            <div class="col">
                                <span class="badge badge-primary" style="background-color:#007FFF; border-radius:10px;">Login Credentials</span>
                            </div>
                                </center>
                        </div>

                        <div class="row">
                            <div class="col-md-6">

                                <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox8" runat="server" class="form-control" runat="server" placeholder="User ID"> </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox9" runat="server" class="form-control" runat="server" placeholder="Password" TextMode="Password"> </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">

                                <div class="form-group" style="margin: 17px 0px;">
                                    <asp:Button ID="Button1" runat="server" Text="Sign Up" class="btn btn-success w-100 btn-lg" OnClick="Button1_Click" />
                                </div>

                            </div>
                        </div>

                    </div>
                </div>

                <a href="homepage.aspx" style="text-decoration:none;"><< Back to Home Page</a>
                <br />
                <br />
            </div>
        </div>
    </div>
</asp:Content>
