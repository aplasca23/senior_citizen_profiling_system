﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="SCProfilingSystem.Pages.WebForm2" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
   <meta name="description" content="" />
   <meta name="author" content="" />
       
        <title>Admin Register</title>

   <link href="../css/styles.css" rel="stylesheet" />
   <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"></script>

</head>
    
<body class="bg-primary">
<div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Create Admin Account</h3></div>
                                    <div class="card-body">
                                        <form runat="server">
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="inputFirstName">First Name</label>
                                                        <asp:TextBox ID="firstname" class="form-control"  placeholder="First Name" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="lastname">Last Name</label>
                                                        <asp:TextBox ID="lastname" class="form-control py-4" placeholder="Last Name" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="email">Email</label>
                                                <asp:TextBox ID="email" class="form-control py-4" type="email" aria-describedby="emailHelp" placeholder="Enter email address" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="username">Username</label>
                                                        <asp:TextBox ID="username" class="form-control py-4" placeholder="Username" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="small mb-1" for="password">Password</label>
                                                        <asp:TextBox ID="password" class="form-control py-4" type="password" placeholder="Password" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>   
                                            <asp:Button ID="Register" class="btn btn-primary btn-block" href="login.html" runat="server" Text="Register" />
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div class="small"><a href="login.html">Have an account? Go to login</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="../js/scripts.js"></script>

</body>

</html>
