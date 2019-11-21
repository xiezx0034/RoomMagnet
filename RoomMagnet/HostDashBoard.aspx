﻿<%@ Page  Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HostDashBoard.aspx.cs" Inherits="HostDashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .sub-banner {
            height: 130px;
        }

        .project-tab {
            padding: 10%;
            margin-top: -8%;
        }

            .project-tab #tabs {
                background: #007b5e;
                color: #eee;
            }

                .project-tab #tabs h6.section-title {
                    color: #eee;
                }

                .project-tab #tabs .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
                    color: #0062cc;
                    background-color: transparent;
                    border-color: transparent transparent #f3f3f3;
                    border-bottom: 3px solid !important;
                    font-size: 16px;
                    font-weight: bold;
                }

            .project-tab .nav-link {
                border: 1px solid transparent;
                border-top-left-radius: .25rem;
                border-top-right-radius: .25rem;
                color: #d8dce0;
                font-size: 16px;
                font-weight: 600;
            }

                .project-tab .nav-link:hover {
                    border: none;
                }

            .project-tab thead {
                background: #f3f3f3;
                color: #333;
            }

            .project-tab a {
                text-decoration: none;
                color: #333;
                font-weight: 600;
            }

        .tabbing-box .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link:hover {
            background-color: #17a2b8;
        }

          .propertybox {
        width: 80%;
        padding-top: 0px;
        padding-left: 0px;
        padding-right: 0px;
        box-shadow: 2px 2px 2px 2px grey;
        margin: 12px;
        margin-bottom: 12px;
        text-align: justify;
        border-radius: 5px;
    }

        .propertybox .btn {
            width: 110px;
            font-size: 12px;
            text-align: center;
            background-color: palevioletred;
            border-radius: 7px;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="sub-banner overview-bgi">
        <div class="container">

            <div class="headingg">
                <h1>Host Panel</h1>
            </div>

        </div>
    </div>


    <section id="tabs" class="project-tab">
        <div class="container-fluid">
            <div class="row">

                <div class="col-md-12">
                    <nav>
                        <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">

                            <a class="nav-item nav-link active " id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Profile</a>
                            <a class="nav-item nav-link " id="nav-addproperty-tab" data-toggle="tab" href="#nav-addproperty" role="tab" aria-controls="nav-addproperty" aria-selected="false">Add Property</a>
                            <a class="nav-item nav-link " id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">My Properties
                            </a>
                            <a class="nav-item nav-link " id="nav-fav-tab" data-toggle="tab" href="#nav-fav" role="tab" aria-controls="nav-fav" aria-selected="false">Applicants</a>
                        </div>
                    </nav>
                    <br>
                    <div class="tab-content" id="nav-tabContent">

                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                            <div class="col-md-2">
                            </div>
                            <div class="col-md-8">
                                <div class="hostProfile">
                                    <div class="form-row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="ContentPlaceHolder1_tbName">First Name</label>
                                                <asp:TextBox ID="tbName" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="ContentPlaceHolder1_tbName1">Last Name</label>
                                                <asp:TextBox ID="tbName1" runat="server" Class="form-control" placeholder="Last Name"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="ContentPlaceHolder1_tbUname">Email</label>

                                        <asp:TextBox ID="tbUname" runat="server" Class="form-control" placeholder="Usename"></asp:TextBox>

                                    </div>
                                    <div class="form-row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="ContentPlaceHolder1_tbPass">Password</label>

                                                <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>

                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="ContentPlaceHolder1_tbCPass">Confirm Password</label>

                                                <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="ContentPlaceHolder1_tbEmail">Email address</label>
                                                <asp:TextBox ID="tbEmail" runat="server" Class="form-control" aria-describedby="emailHelp" placeholder="Enter email" TextMode="Email"></asp:TextBox>
                                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                            </div>
                                        </div>

                                        <div class="col">
                                            <div class="form-group">
                                                <label for="ContentPlaceHolder1_tbPhone">Phone Number</label>
                                                <asp:TextBox ID="tbPhone" runat="server" Class="form-control" aria-describedby="phoneHelp" placeholder="Phone Number" TextMode="Number"></asp:TextBox>

                                            </div>
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label for="inputAddress">Address</label>
                                        <input type="text" class="form-control" id="tbAddress" placeholder="1234 Main St">
                                    </div>
                                   <%-- <div class="form-group">
                                        <label for="inputAddress2">Address 2</label>
                                        <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
                                    </div>--%>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputCity">City</label>
                                            <input type="text" class="form-control" id="inputCity">
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="inputState">State</label>


                                            <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control" Style="height: auto">

                                                <asp:ListItem Value="AL">AL</asp:ListItem>
                                                <asp:ListItem Value="AK">AK</asp:ListItem>
                                                <asp:ListItem Value="AZ">AZ</asp:ListItem>
                                                <asp:ListItem Value="AR">AR</asp:ListItem>
                                                <asp:ListItem Value="CA">CA</asp:ListItem>
                                                <asp:ListItem Value="CO">CO</asp:ListItem>
                                                <asp:ListItem Value="CT">CT</asp:ListItem>
                                                <asp:ListItem Value="DC">DC</asp:ListItem>
                                                <asp:ListItem Value="DE">DE</asp:ListItem>
                                                <asp:ListItem Value="FL">FL</asp:ListItem>
                                                <asp:ListItem Value="GA">GA</asp:ListItem>
                                                <asp:ListItem Value="HI">HI</asp:ListItem>
                                                <asp:ListItem Value="ID">ID</asp:ListItem>
                                                <asp:ListItem Value="IL">IL</asp:ListItem>
                                                <asp:ListItem Value="IN">IN</asp:ListItem>
                                                <asp:ListItem Value="IA">IA</asp:ListItem>
                                                <asp:ListItem Value="KS">KS</asp:ListItem>
                                                <asp:ListItem Value="KY">KY</asp:ListItem>
                                                <asp:ListItem Value="LA">LA</asp:ListItem>
                                                <asp:ListItem Value="ME">ME</asp:ListItem>
                                                <asp:ListItem Value="MD">MD</asp:ListItem>
                                                <asp:ListItem Value="MA">MA</asp:ListItem>
                                                <asp:ListItem Value="MI">MI</asp:ListItem>
                                                <asp:ListItem Value="MN">MN</asp:ListItem>
                                                <asp:ListItem Value="MS">MS</asp:ListItem>
                                                <asp:ListItem Value="MO">MO</asp:ListItem>
                                                <asp:ListItem Value="MT">MT</asp:ListItem>
                                                <asp:ListItem Value="NE">NE</asp:ListItem>
                                                <asp:ListItem Value="NV">NV</asp:ListItem>
                                                <asp:ListItem Value="NH">NH</asp:ListItem>
                                                <asp:ListItem Value="NJ">NJ</asp:ListItem>
                                                <asp:ListItem Value="NM">NM</asp:ListItem>
                                                <asp:ListItem Value="NY">NY</asp:ListItem>
                                                <asp:ListItem Value="NC">NC</asp:ListItem>
                                                <asp:ListItem Value="ND">ND</asp:ListItem>
                                                <asp:ListItem Value="OH">OH</asp:ListItem>
                                                <asp:ListItem Value="OK">OK</asp:ListItem>
                                                <asp:ListItem Value="OR">OR</asp:ListItem>
                                                <asp:ListItem Value="PA">PA</asp:ListItem>
                                                <asp:ListItem Value="RI">RI</asp:ListItem>
                                                <asp:ListItem Value="SC">SC</asp:ListItem>
                                                <asp:ListItem Value="SD">SD</asp:ListItem>
                                                <asp:ListItem Value="TN">TN</asp:ListItem>
                                                <asp:ListItem Value="TX">TX</asp:ListItem>
                                                <asp:ListItem Value="UT">UT</asp:ListItem>
                                                <asp:ListItem Value="VT">VT</asp:ListItem>
                                                <asp:ListItem Value="VA">VA</asp:ListItem>
                                                <asp:ListItem Value="WA">WA</asp:ListItem>
                                                <asp:ListItem Value="WV">WV</asp:ListItem>
                                                <asp:ListItem Value="WI">WI</asp:ListItem>
                                                <asp:ListItem Value="WY">WY</asp:ListItem>

                                            </asp:DropDownList>

                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="inputZip">Zip</label>
                                            <input type="text" class="form-control" id="inputZip">
                                        </div>
                                    </div>

                                    <asp:Button runat="server" ID="UpdateProfile"  OnClick="UpdateProfile_Click" CssClass="btn btn-primary"   Text="Update"></asp:Button>

                                </div>
                            </div>

                        </div>


                        <div class="tab-pane fade" id="nav-addproperty" role="tabpanel" aria-labelledby="nav-addproperty-tab">
                            <div class="col-md-2">
                            </div>
                            <div class="col-md-8">
                                <div class="hostaddproperty">



                                    <div class="form-group">
                                        <label for="inputAddress">Address</label>

                                        <asp:TextBox ID="tbPropertyAddress" CssClass="form-control" runat="server" placeholder="1234 Main St"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbPropertyAddress" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="addProperty">Please enter your address</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="addProperty" Display="Dynamic" ControlToValidate="tbPropertyAddress" ForeColor="Red" Text="Invalid address" ValidationExpression="^\w+\s\w+$"></asp:RegularExpressionValidator>
                                    </div>
                                    <%--<div class="form-group">
                                        <label for="inputAddress2">Address 2</label>

                                        <asp:TextBox ID="tbPropertyAddress2" CssClass="form-control" runat="server" placeholder="Apartment, studio, or floor"></asp:TextBox>
                                    </div>--%>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputCity">City</label>

                                            <asp:TextBox ID="tbPropertyCity" CssClass="form-control" runat="server" placeholder="City"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbPropertyCity" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="addProperty">Please enter your city name</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="tbPropertyCity" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$" ValidationGroup="addProperty">Invalid city name</asp:RegularExpressionValidator>

                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="inputState">State</label>


                                            <asp:DropDownList ID="ddState" runat="server" CssClass="form-control" Style="height: auto">

                                                <asp:ListItem Value="AL">AL</asp:ListItem>
                                                <asp:ListItem Value="AK">AK</asp:ListItem>
                                                <asp:ListItem Value="AZ">AZ</asp:ListItem>
                                                <asp:ListItem Value="AR">AR</asp:ListItem>
                                                <asp:ListItem Value="CA">CA</asp:ListItem>
                                                <asp:ListItem Value="CO">CO</asp:ListItem>
                                                <asp:ListItem Value="CT">CT</asp:ListItem>
                                                <asp:ListItem Value="DC">DC</asp:ListItem>
                                                <asp:ListItem Value="DE">DE</asp:ListItem>
                                                <asp:ListItem Value="FL">FL</asp:ListItem>
                                                <asp:ListItem Value="GA">GA</asp:ListItem>
                                                <asp:ListItem Value="HI">HI</asp:ListItem>
                                                <asp:ListItem Value="ID">ID</asp:ListItem>
                                                <asp:ListItem Value="IL">IL</asp:ListItem>
                                                <asp:ListItem Value="IN">IN</asp:ListItem>
                                                <asp:ListItem Value="IA">IA</asp:ListItem>
                                                <asp:ListItem Value="KS">KS</asp:ListItem>
                                                <asp:ListItem Value="KY">KY</asp:ListItem>
                                                <asp:ListItem Value="LA">LA</asp:ListItem>
                                                <asp:ListItem Value="ME">ME</asp:ListItem>
                                                <asp:ListItem Value="MD">MD</asp:ListItem>
                                                <asp:ListItem Value="MA">MA</asp:ListItem>
                                                <asp:ListItem Value="MI">MI</asp:ListItem>
                                                <asp:ListItem Value="MN">MN</asp:ListItem>
                                                <asp:ListItem Value="MS">MS</asp:ListItem>
                                                <asp:ListItem Value="MO">MO</asp:ListItem>
                                                <asp:ListItem Value="MT">MT</asp:ListItem>
                                                <asp:ListItem Value="NE">NE</asp:ListItem>
                                                <asp:ListItem Value="NV">NV</asp:ListItem>
                                                <asp:ListItem Value="NH">NH</asp:ListItem>
                                                <asp:ListItem Value="NJ">NJ</asp:ListItem>
                                                <asp:ListItem Value="NM">NM</asp:ListItem>
                                                <asp:ListItem Value="NY">NY</asp:ListItem>
                                                <asp:ListItem Value="NC">NC</asp:ListItem>
                                                <asp:ListItem Value="ND">ND</asp:ListItem>
                                                <asp:ListItem Value="OH">OH</asp:ListItem>
                                                <asp:ListItem Value="OK">OK</asp:ListItem>
                                                <asp:ListItem Value="OR">OR</asp:ListItem>
                                                <asp:ListItem Value="PA">PA</asp:ListItem>
                                                <asp:ListItem Value="RI">RI</asp:ListItem>
                                                <asp:ListItem Value="SC">SC</asp:ListItem>
                                                <asp:ListItem Value="SD">SD</asp:ListItem>
                                                <asp:ListItem Value="TN">TN</asp:ListItem>
                                                <asp:ListItem Value="TX">TX</asp:ListItem>
                                                <asp:ListItem Value="UT">UT</asp:ListItem>
                                                <asp:ListItem Value="VT">VT</asp:ListItem>
                                                <asp:ListItem Value="VA">VA</asp:ListItem>
                                                <asp:ListItem Value="WA">WA</asp:ListItem>
                                                <asp:ListItem Value="WV">WV</asp:ListItem>
                                                <asp:ListItem Value="WI">WI</asp:ListItem>
                                                <asp:ListItem Value="WY">WY</asp:ListItem>

                                            </asp:DropDownList>

                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="inputZip">Zip</label>
                                            <asp:TextBox ID="tbPropertyZip" CssClass="form-control" runat="server" placeholder="Zip"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbPropertyZip" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="addProperty">Please enter your Zip code</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tbPropertyZip" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?" ValidationGroup="addProperty">Invalid ZIP</asp:RegularExpressionValidator>
                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="ContentPlaceHolder1_tbCapacity">Capacity</label>
                                                <asp:TextBox ID="tbPropertyCapacity" runat="server" Class="form-control" placeholder="Capacity" TextMode="Number"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbPropertyCapacity" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="addProperty">Please enter capacity</asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                       
                                    </div>
                                    <div class="form-row">
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="ContentPlaceHolder1_tbPrice">Price</label>

                                                <asp:TextBox ID="tbPropertyPrice" runat="server" Class="form-control" placeholder="Price" TextMode="Number"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPropertyPrice" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="addProperty">Please enter price</asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="ContentPlaceHolder1_tbPrice">Room Type</label>

                                                <asp:TextBox ID="tbPropertyRoomType" runat="server" Class="form-control" placeholder="Room Type"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbPropertyRoomType" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="addProperty">Please enter room type</asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="ContentPlaceHolder1_tbDecription">Description</label>

                                        <asp:TextBox ID="tbPropertyDescription" runat="server" Class="form-control" placeholder="Decription" Rows="3" TextMode="MultiLine"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbPropertyDescription" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="addProperty">Please enter property description</asp:RequiredFieldValidator>

                                    </div>
                                    <div class="form-group">
                                        <label for="ContentPlaceHolder1_tbAmenities">Amenities</label>

                                        <label for="tbAmenities"><b>Amenities</b></label>
                                        <asp:CheckBoxList ID="cblAmenities" CssClass="list-group list-group-flush" runat="server">
                                            <asp:ListItem>Wifi</asp:ListItem>
                                            <asp:ListItem>Cable</asp:ListItem>
                                            <asp:ListItem>Air Condition</asp:ListItem>
                                            <asp:ListItem>Heat</asp:ListItem>
                                            <asp:ListItem>Washer</asp:ListItem>
                                            <asp:ListItem>Dryer</asp:ListItem>
                                        </asp:CheckBoxList>

                                    </div>
                                    <div class="form-group">
                                        <label for="ContentPlaceHolder1_tbDecription">Image Upload</label>
                                        <asp:FileUpload runat="server" CssClass="btn btn-default btn-file" Style="display: block" accept=".png,.jpg,.jpeg" ID="firstUploader"></asp:FileUpload>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="firstUploader" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="addProperty">Please upload a picture of property</asp:RequiredFieldValidator>


                                    </div>

                                    <asp:Button ID="btnAddProperty" type="submit" OnClick="btnAddProperty_Click" class="btn btn-primary" runat="server" ValidationGroup="addProperty" Text="Add Property"></asp:Button>

                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">


                            <h2>Properties</h2>

                            <asp:Repeater ID="Repeater1" runat="server">

                                <ItemTemplate>
                                    <div class="container propertybox">

                                        <div class="thumbnail">

                                               
                                            <div class="row">
                                                <div class="col-5">
                                                       <img src='<%#    "data:Image.jpg;base64," + Convert.ToBase64String( (byte[])Eval("image")  ) %>' alt="" style="width:90%" />
                                                </div>

                                         <div class="col-4">
                                              <div class="caption" style="padding: 15px;">
                                                 
                                                        <h5><%# String.Concat(Eval("HouseNumber"), " ", Eval("Street"))%></h5>
                                                        <h5><%# String.Concat(Eval("City"), ", ", Eval("State"), " ", Eval("Zip")) %></h5>
                                                        <h5><strong><%#Eval("Price", "{0:C0}").ToString() %> per month</strong></h5>
                                             
                                                   </div>
                                             </div>
                                                 

                                                    <div class="col-md-3 btnsetting" style="padding-top: 10px">
                                                      
                                                        <p>
                                                            <a href="propertydescription.aspx?id=<%# Eval("AccomodationID")%>" class="glyphicon glyphicon-list-alt">View </a></p>
                                                        <p>
                                                          <p>
                                                              <a href="EditProperty.aspx?id=<%# Eval("AccomodationID")%>" class="glyphicon glyphicon-edit">Edit</a></p>
                                                        <p>
                                                          <p>
                                                              <asp:LinkButton ID="LinkButton1" CommandName='<%# Eval("AccomodationID")%>' CssClass="glyphicon glyphicon-remove" OnClick="btnPropertyDelete_Click" runat="server">Delete</asp:LinkButton>
                                                             
                                                            
                                                        <p>
                                                          
                                                        </p>
                                                    </div>
              
                                                </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                        </div>


                        <div class="tab-pane fade" id="nav-fav" role="tabpanel" aria-labelledby="nav-fav-tab">
                            <h1>Applicants</h1>
                            <hr/>
                            <asp:Repeater ID="rptrTenant" runat="server">
                                <HeaderTemplate>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>User ID</th>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                 <th>City</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <th><asp:Label ID="lbltenantid" runat="server" Text='<%# Eval("tenantid") %>' /></th>
                                        <td><%# Eval("FirstName") %></td>
                                        <td><%# Eval("LastName") %></td>
                                         <td><%# Eval("City") %></td>
                                        <td><asp:Label ID="lblstatus" runat="server"></asp:Label></td>
                                        <td>
                                            <div class="form-row">
                                                <div class="col">
                                                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control" Style="height: auto">
                                                        <asp:ListItem Value="0">Reject</asp:ListItem>
                                                        <asp:ListItem Value="1">Accept</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col">

                                                    <asp:Button ID="BtnStatusChange" CssClass="btn btn-success" OnClick="BtnStatusChange_Click" runat="server" Text="Update" />
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
            </table>
               
                                </FooterTemplate>
                            </asp:Repeater>

                        </div>

                    </div>

                </div>
            </div>
        </div>
    </section>


</asp:Content>
