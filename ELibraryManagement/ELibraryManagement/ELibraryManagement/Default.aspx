<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ELibraryManagement.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="imgs/home-bg.jpg" class="img-fluid" />
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Features</h2>
                        <p><b>Our 3 primary features</b></p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="imgs/digital-inventory.png" width="150" />
                        <h4>Digital Book Inventory</h4>
                        </center>
                        <p class="text-justify">Book inventory is the cost of inventory on hand, as stated in an organization's accounting records. </p>
                    
                </div>
                <div class="col-md-4">
                    <center>
                        <img src="imgs/search-online.png" width="150"/>
                        <h4>Search Books</h4>
                         </center>
                        <p class="text-justify">You can search for the books after signing in to access the Books which are available</p>

                   
                </div>

                <div class="col-md-4">
                    <center>
                        <img src="imgs/defaulters-list.png" width="150"/>
                        <h4>Defaulters List</h4>
                        </center>
                        <p class="text-justify">Defaulters lists typically contain information about individuals or entities who have failed to fulfill their financial obligations, such as loan repayments, credit card debts, or other financial commitments</p>
                    
                </div>

            </div>
        </div>
    </section>
     <section>
       <img src="imgs/in-homepage-banner.jpg" class="img-fluid"/>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h4>Our Process</h4>
                        <p><b>We have a simple 3 step process:</b></p>
                        </center>

                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="imgs/sign-up.png" class="img-fluid" width="150"/>
                        <h4>Sign Up</h4>

                    </center>
                    <p class="text-justify">First process is to sign up on this website to access all the books descriptions,details,prices etc</p>
                </div>
                <div class="col-md-4">
                    <center>
                       <img src="imgs/search-online.png" width="150"/>
                        <h4>Search Books</h4>

                    </center>
                    <p class="text-justify">The primary functionality of a book is to be read. Whether it's a physical book or an electronic version, readers can immerse themselves in the content and follow the story or information provided by the author.</p>
                </div> 
                <div class="col-md-4">
                    <center>
                        <img src="imgs/library.png" width="150"/>
                        
                        <h4>Visit Us</h4>

                    </center>
                    <p class="text-justify">You can visit us if you have any query regarding the signup/signin functionalites </p>
                </div>
                

            </div>
        </div>
    </section>
</asp:Content>
