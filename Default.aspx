<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" /> 
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Home Page</title>
	<link rel="shortcut icon" href="img/logo.png" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="css/StyleSheet.css" type="text/css" />
    <script src="jquery/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="jquery/font-awesome-min.js"></script>
    <script src="jquery/custom.js" type="text/javascript"></script>
</head>
<body>
    <!--------------- Navigation Bar------------->
     <nav class="navbar navbar-inverse navbar-fixed-top">
          <div class="container-fluid row">
              <div class="col-sm-1"></div>
              <div class="navbar-header col-sm-3">
                     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                       <span class="icon-bar"></span>
                       <span class="icon-bar"></span>
                       <span class="icon-bar"></span>
                     </button>
                     <a class="navbar-brand" id="Nav_Home_Link" href="Default.aspx"><h4 style="color:#fff">LIQUOR STORE</h4></a>
              </div>
              <div class="collapse navbar-collapse col-sm-8" id="myNavbar">
                    <ul class="nav navbar-nav">
                       <li class="navLink active"><a href="Default.aspx"><h4>Home</h4></a></li>
                       <li class="navLink"><a href="Products.aspx"><h4>Products</h4></a></li>
                       <li class="navLink"><a href="My_Items.aspx"><h4>My Items</h4></a></li>
                       <li class="navLink"><a href="Cart.aspx"><h4>Cart</h4></a></li> 
                    </ul>
              </div>
         </div>
    </nav>

   <!--------------- Form starts here------------->
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
       <div class="formContent">
            <div class="tables" >
                 <!--------------  Log in Div -------------------->
                  <div class="Login-Table" id="login_Table" runat="server">
                    <div class="container">
                     <asp:UpdatePanel ID="Login_Form" runat="server">
                     <ContentTemplate>
                      <div class="row Row">
                          <div class="col-sm-12 ">
                              <em class="loginDiv_Heading">Log In</em>
                          </div>
                      </div>
                      <div class="row Row">
                          <div class="col-sm-12">
                              <asp:Label CssClass="WarningLabel " ID="login_Label" runat="server" Text=" " ></asp:Label>
                          </div>
                      </div>
                      <div class="row Row Row-Border">
                          <div class="col-sm-5 Col-1">
                              <label class="username_Text">Email: </label>
                          </div>
                          <div class="col-sm-7 Col-2">
                              <asp:TextBox CssClass="textBox" ID="login_Email" runat="server" TextMode="Email"></asp:TextBox>
                          </div>
                      </div>
                      <div class="row Row Row-Border">
                          <div class="col-sm-5 Col-1">
                              <label class="username_Text">Password: </label>
                          </div>
                          <div class="col-sm-7 Col-2">
                              <asp:TextBox CssClass="textBox" ID="login_Password" runat="server" TextMode="Password"></asp:TextBox>
                          </div>
                      </div>
                      <div class="row Row">
                          <div class="col-sm-12">
                              <i class="fa fa-cog fa-spin " id="fa_icon_login" runat="server" style="visibility:hidden;color:#000;font-size:18px;font-weight:600;"></i>&nbsp;
                              <asp:Button CssClass="Button" ID="login_Button11" runat="server" Text="Log In" OnClick="login_Button_Click"  />
                          </div>
                          
                      </div>
                     </ContentTemplate>
                     </asp:UpdatePanel>
                  </div>
                </div>
                
              <!--------------  Sign Up Div -------------------->
               <div class="Signup-Table" id="signup_Table" runat="server">
                <div class="container">
                    <asp:UpdatePanel ID="Signup_Form" runat="server">
                     <ContentTemplate>

                          <div class="row Row">
                          <div class="col-sm-12 ">
                              <em class="loginDiv_Heading">Sign Up</em>
                          </div>
                      </div>
                      <div class="row Row">
                          <div class="col-sm-12">
                              <asp:Label CssClass="WarningLabel" ID="signup_Label" runat="server" Text=" " ></asp:Label>
                          </div>
                      </div>
                      <div class="row Row Row-Border">
                          <div class="col-sm-5 Col-1">
                              <label class="username_Text">User Name: </label>
                          </div>
                          <div class="col-sm-7 Col-2">
                              <asp:TextBox CssClass="textBox" ID="signup_Name" runat="server" ></asp:TextBox>
                          </div>
                      </div>
                       <div class="row Row Row-Border">
                          <div class="col-sm-5 Col-1">
                              <label class="username_Text">Email: </label>
                          </div>
                          <div class="col-sm-7 Col-2">
                              <asp:TextBox CssClass="textBox" ID="signup_Email" runat="server" TextMode="Email"></asp:TextBox>
                          </div>
                      </div>
                       <div class="row Row Row-Border">
                          <div class="col-sm-5 Col-1">
                              <label class="username_Text">Password: </label>
                          </div>
                          <div class="col-sm-7 Col-2">
                              <asp:TextBox CssClass="textBox" ID="signup_Password1" runat="server" TextMode="Password" ></asp:TextBox>
                          </div>
                      </div>
                       <div class="row Row Row-Border">
                          <div class="col-sm-5 Col-1">
                              <label class="username_Text">Confirm Password: </label>
                          </div>
                          <div class="col-sm-7 Col-2">
                              <asp:TextBox CssClass="textBox" ID="signup_Password2" runat="server" TextMode="Password"></asp:TextBox>
                          </div>
                      </div>
                       <div class="row Row Row-Border">
                          <div class="col-sm-5 Col-1">
                              <label class="username_Text">Date Of Birth: </label>
                          </div>
                          <div class="col-sm-7 Col-2">
                              <asp:TextBox CssClass="textBox" ID="signup_DOB" runat="server" TextMode="Date"></asp:TextBox>
                          </div>
                      </div>
                       <div class="row Row">
                          <div class="col-sm-12">
                              <i class="fa fa-cog fa-spin " id="fa_icon_signup" runat="server" style="visibility:hidden;color:#000;font-size:18px;font-weight:600;"></i>&nbsp;
                              <asp:Button CssClass="Button" ID="signup_Button" runat="server" Text="Sign Up" OnClick="signup_Button_Click"  />
                          </div>
                      </div>

                      </ContentTemplate>
                     </asp:UpdatePanel>
                   </div>
               </div>
                
            <!------------If Already Logged In------------------>
                  <div class="Active-Login-Table" id="activeLogin_Table" runat="server">
                     <asp:Label CssClass="WarningLabel" ID="activeLogin_Label" runat="server" Text=" " ></asp:Label> <br />
                    <asp:Button CssClass="Button " ID="logout_Button" runat="server" Text="Log Out" OnClick="logout_Button_Click" />
                 </div>
         </div> 
       </div>
     </form>
    <!------------Enter Key Disabled Modal------------------>
    <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Enter Key Disabled</h4>
        </div>
        <div class="modal-body">
          <p>Please use buttons instead.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
    <!--------------------- Footer ------------------------->
    <div class="footer Footer-Sticky">
      <div class="container Footer-Container">
        <p class="footer-text Footer-Sticky-Text">Created by: Amninder Chahal</p>
      </div>
    </div>
    <footer class="Footer-Full">
      <div class="container Footer-Container">
        <p class="text-muted Footer-Full-Text">Created by: Amninder Chahal</p>
      </div>
    </footer>
</body>
    <script>
        //------------------- Disable Enter Key -------------------//
        
        $(document).on("keypress", "form", function (event) {
            if (event.keyCode == 13) {
                $('#myModal').modal('show');
                return event.keyCode != 13;
            }
            
        });
    </script>
</html>

