<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Page_2" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" /> 
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Products</title>
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
                       <li class="navLink"><a href="Default.aspx"><h4>Home</h4></a></li>
                       <li class="navLink active"><a href="Products.aspx"><h4>Products</h4></a></li>
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
   <div class="tables Page-2-Tables container">
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
                                       
       <!----------------------- Login Status Table : Not Logged In  -------------------------->
       <div class="container Status-Div" id="Status_Div" runat="server">
                      <div class="row Status-Div-Row">
                           <div class="col-sm-12">
                                 <asp:Label CssClass="WarningLabel Login-Status-Label" ID="login_Status_Label" runat="server" Text=" " ></asp:Label>&nbsp;
                                 <asp:Button CssClass="Button " ID="logout_Button" runat="server" Text="Log Out" OnClick="logout_Button_Click" />                                
                           </div>
                      </div>
                 </div>
      <div id="Products_Div" runat="server">
     <!----------------------- Dropdown menu -------------------------->
       <div class="Dropdown-Menu" >         
        <div class="container ">
            <div class="row dropdown-button">
                <div class="dropdown ">
                      <button class="btn btn-default dropdown-toggle" type="button" id="item_Categoris" data-toggle="dropdown" data-hover="dropdown" data-delay="500">Select category
                      <span class="caret"></span></button>
                      <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#" class="dropdown-option-Whisky">Whisky</a></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#" class="dropdown-option-Beer">Beer</a></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#" class="dropdown-option-Tequila">Tequila</a></li>
                            <li role="presentation" class="divider"></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#" class="dropdown-menu-All">All Categories</a></li>
                      </ul>
                </div>
            </div>
        </div>
    </div>
              <!----------------------- Products -------------------------->
                 <div class="container Products-Div" >
                         <!-------------Product 1-------------->
                         <div class="row Products-Table-Row Whisky">
                               <div class="col-sm-5 Products-Col">
                                       <a href="#" class="Product-Img-Link" id="Product-Img-1" data-toggle="modal" data-target="#Product-1-Model">
                                           <img src="img/item_1.jpg" class="product_Img" data-toggle="popover" data-trigger="hover" data-content="Click to see description" data-placement="top" alt="Product 1" />
                                       </a>
                               </div>
                               <div class="col-sm-7 Products-Col">
                                       <p class="Item-Title-Text">Jameson Irish Whisky</p>
                                       <br />
                                       <div class="Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><p class="Item-Price-Text">34.95</p>
                                           <p class="Item-Amount-Text"> 750 mL bottle</p>
                                       </div>
                                       <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                       <ContentTemplate>
                                           
                                       <div class="btn-group">
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_1_Buy" runat="server" OnClick="Cart_Button_1_Click" Text="Add to Cart" />
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_1_Fav" runat="server" OnClick="Fav_Button_1_Click" Text="Add to Favourites" /> &nbsp;
                                           
                                       </div> 
                                          &nbsp;<i class="fa fa-circle-o-notch fa-spin " id="fa_icon_1" runat="server" style="visibility:hidden;color:#000;line-height:40px;font-size:22px;font-weight:500;"></i>
                                       <br />
                                           <div class="Item_Labels">
                                              <asp:Label CssClass="text-success itemAdded_Text" id="Item_1_Added" runat="server"> </asp:Label>
                                              <asp:Label CssClass="text-danger itemExists_Text" id="Item_1_Exists" runat="server"> </asp:Label>
                                           </div>
                                           </ContentTemplate>
                                       </asp:UpdatePanel>
                               </div>
                          </div>
                         <!-------------Product 2-------------->
                          <div class="row Products-Table-Row Whisky">
                               <div class="col-sm-5 Products-Col">
                                       <a href="#" class="Product-Img-Link" id="Product-Img-2" data-toggle="modal" data-target="#Product-2-Model" >
                                           <img src="img/item_2.jpg" class="product_Img" alt="Product 2" data-toggle="popover" data-trigger="hover" data-content="Click to see description" data-placement="top" />
                                       </a>
                               </div>
                               <div class="col-sm-7 Products-Col">
                                       <p class="Item-Title-Text">Jack Daniel's Old No. 7</p>
                                       <br />
                                       <div class="Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><p class="Item-Price-Text">30.95</p>
                                           <p class="Item-Amount-Text"> 750 mL bottle</p>
                                       </div>
                                      <asp:UpdatePanel ID="Product_2" runat="server">
                                       <ContentTemplate>
                                       <div class="btn-group">
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_2_Buy" runat="server" OnClick="Cart_Button_2_Click" Text="Add to Cart" />
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_2_Fav" runat="server" OnClick="Fav_Button_2_Click" Text="Add to Favourites" /> 
                                       </div> 
                                           &nbsp;<i class="fa fa-circle-o-notch fa-spin " id="fa_icon_2" runat="server" style="visibility:hidden;color:#000;line-height:40px;font-size:22px;font-weight:500;"></i>
                                       <br />
                                       <div class="Item_Labels">
                                          <asp:Label CssClass="text-success itemAdded_Text" ID="Item_2_Added" runat="server"> </asp:Label>
                                          <asp:Label CssClass="text-danger itemExists_Text" id="Item_2_Exists" runat="server"> </asp:Label>
                                       </div>

                                       </ContentTemplate>
                                       </asp:UpdatePanel>
                               </div>
                          </div>
                         <!-------------Product 3-------------->
                          <div class="row Products-Table-Row Whisky">
                               <div class="col-sm-5 Products-Col">
                                       <a href="#" class="Product-Img-Link" id="Product-Img-3" data-toggle="modal" data-target="#Product-3-Model" >
                                           <img src="img/item_3.jpg" class="product_Img" alt="Product 3" data-toggle="popover" data-trigger="hover" data-content="Click to see description" data-placement="top"/>

                                       </a>
                               </div>
                               <div class="col-sm-7 Products-Col">
                                       <p class="Item-Title-Text">Johnnie Walker Black Label</p>
                                       <br />
                                       <div class="Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><p class="Item-Price-Text">51.95</p>
                                           <p class="Item-Amount-Text"> 750 mL bottle</p>
                                       </div>
                                       <asp:UpdatePanel ID="Product_3" runat="server">
                                       <ContentTemplate>
                                       <div class="btn-group">
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_3_Buy" runat="server" OnClick="Cart_Button_3_Click" Text="Add to Cart" />
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_3_Fav" runat="server" OnClick="Fav_Button_3_Click" Text="Add to Favourites" /> 
                                       </div> 
                                           &nbsp;<i class="fa fa-circle-o-notch fa-spin " id="fa_icon_3" runat="server" style="visibility:hidden;color:#000;line-height:40px;font-size:22px;font-weight:500;"></i>
                                       <br />
                                        <div class="Item_Labels">
                                          <asp:Label CssClass="text-success itemAdded_Text" id="Item_3_Added" runat="server"></asp:Label>
                                          <asp:Label CssClass="text-danger itemExists_Text" id="Item_3_Exists" runat="server"></asp:Label>
                                        </div>
                                       </ContentTemplate>
                                       </asp:UpdatePanel>
                               </div>
                          </div>
                         <!-------------Product 4-------------->
                          <div class="row Products-Table-Row Whisky">
                               <div class="col-sm-5 Products-Col">
                                       <a href="#" class="Product-Img-Link" id="Product-Img-4" data-toggle="modal" data-target="#Product-4-Model" >
                                           <img src="img/item_4.jpg" class="product_Img" alt="Product 4" data-toggle="popover" data-trigger="hover" data-content="Click to see description" data-placement="top" />

                                       </a>
                               </div>
                               <div class="col-sm-7 Products-Col">
                                       <p class="Item-Title-Text">Forty Creek Founder's Reserve</p>
                                       <br />
                                       <div class="Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><p class="Item-Price-Text">74.95</p>
                                           <p class="Item-Amount-Text"> 750 mL bottle</p>
                                       </div>
                                       <asp:UpdatePanel ID="Product_4" runat="server">
                                       <ContentTemplate>
                                       <div class="btn-group">
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_4_Buy" runat="server" OnClick="Cart_Button_4_Click" Text="Add to Cart" />
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_4_Fav" runat="server" OnClick="Fav_Button_4_Click" Text="Add to Favourites" /> 
                                       </div> 
                                           &nbsp;<i class="fa fa-circle-o-notch fa-spin " id="fa_icon_4" runat="server" style="visibility:hidden;color:#000;line-height:40px;font-size:22px;font-weight:500;"></i>
                                       <br />
                                        <div class="Item_Labels">
                                          <asp:Label CssClass="text-success itemAdded_Text" id="Item_4_Added" runat="server"></asp:Label>
                                          <asp:Label CssClass="text-danger itemExists_Text"  id="Item_4_Exists" runat="server"></asp:Label>
                                        </div>
                                       </ContentTemplate>
                                       </asp:UpdatePanel>
                               </div>
                          </div>
                         <!-------------Product 5-------------->
                          <div class="row Products-Table-Row Beer">
                               <div class="col-sm-5 Products-Col">
                                       <a href="#" class="Product-Img-Link" id="Product-Img-5" data-toggle="modal" data-target="#Product-5-Model" >
                                           <img src="img/item_5.jpg" class="product_Img" alt="Product 5" data-toggle="popover" data-trigger="hover" data-content="Click to see description" data-placement="top" />

                                       </a>
                               </div>
                               <div class="col-sm-7 Products-Col">
                                       <p class="Item-Title-Text">Molson Canadian - Premium Lager</p>
                                       <br />
                                       <div class="Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><p class="Item-Price-Text">11.95</p>
                                           <p class="Item-Amount-Text"> 6 x 341 mL bottle</p>
                                       </div>
                                       <asp:UpdatePanel ID="Product_5" runat="server">
                                       <ContentTemplate>
                                       <div class="btn-group">
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_5_Buy" runat="server" OnClick="Cart_Button_5_Click" Text="Add to Cart" />
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_5_Fav" runat="server" OnClick="Fav_Button_5_Click" Text="Add to Favourites" /> 
                                       </div> 
                                           &nbsp;<i class="fa fa-circle-o-notch fa-spin " id="fa_icon_5" runat="server" style="visibility:hidden;color:#000;line-height:40px;font-size:22px;font-weight:500;"></i>
                                       <br />
                                        <div class="Item_Labels">
                                          <asp:Label CssClass="text-success itemAdded_Text" id="Item_5_Added" runat="server"></asp:Label>
                                          <asp:Label CssClass="text-danger itemExists_Text" id="Item_5_Exists" runat="server"></asp:Label>
                                        </div>
                                       </ContentTemplate>
                                       </asp:UpdatePanel>
                               </div>
                          </div>
                         <!-------------Product 6-------------->
                          <div class="row Products-Table-Row Beer">
                               <div class="col-sm-5 Products-Col">
                                       <a href="#" class="Product-Img-Link" id="Product-Img-6" data-toggle="modal" data-target="#Product-6-Model" >
                                           <img src="img/item_6.jpg" class="product_Img" alt="Product 6" data-toggle="popover" data-trigger="hover" data-content="Click to see description" data-placement="top" />

                                       </a>
                               </div>
                               <div class="col-sm-7 Products-Col">
                                       <p class="Item-Title-Text">Hoegaarden Wit-Blanche</p>
                                       <br />
                                       <div class="Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><p class="Item-Price-Text">14.50</p>
                                           <p class="Item-Amount-Text"> 6 x 341 mL bottle</p>
                                       </div>
                                       <asp:UpdatePanel ID="Product_6" runat="server">
                                       <ContentTemplate>
                                       <div class="btn-group">
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_6_Buy" runat="server" OnClick="Cart_Button_6_Click" Text="Add to Cart" />
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_6_Fav" runat="server" OnClick="Fav_Button_6_Click" Text="Add to Favourites" /> 
                                       </div> 
                                           &nbsp;<i class="fa fa-circle-o-notch fa-spin " id="fa_icon_6" runat="server" style="visibility:hidden;color:#000;line-height:40px;font-size:22px;font-weight:500;"></i>
                                       <br />
                                       <div class="Item_Labels">
                                          <asp:Label CssClass="text-success itemAdded_Text" id="Item_6_Added" runat="server"></asp:Label>
                                          <asp:Label CssClass="text-danger itemExists_Text" id="Item_6_Exists" runat="server"></asp:Label>
                                        </div>
                                       </ContentTemplate>
                                       </asp:UpdatePanel>
                               </div>
                          </div>
                         <!-------------Product 7-------------->
                          <div class="row Products-Table-Row Beer">
                               <div class="col-sm-5 Products-Col">
                                       <a href="#" class="Product-Img-Link" id="Product-Img-7" data-toggle="modal" data-target="#Product-7-Model" >
                                           <img src="img/item_7.jpg" class="product_Img" alt="Product 7" data-toggle="popover" data-trigger="hover" data-content="Click to see description" data-placement="top" />

                                       </a>
                               </div>
                               <div class="col-sm-7 Products-Col">
                                       <p class="Item-Title-Text">Budweiser</p>
                                       <br />
                                       <div class="Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><p class="Item-Price-Text">11.95</p>
                                           <p class="Item-Amount-Text"> 6 x 341 mL bottle</p>
                                       </div>
                                       <asp:UpdatePanel ID="Product_7" runat="server">
                                       <ContentTemplate>
                                       <div class="btn-group">
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_7_Buy" runat="server" OnClick="Cart_Button_7_Click" Text="Add to Cart" />
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_7_Fav" runat="server" OnClick="Fav_Button_7_Click" Text="Add to Favourites" /> 
                                       </div> 
                                           &nbsp;<i class="fa fa-circle-o-notch fa-spin " id="fa_icon_7" runat="server" style="visibility:hidden;color:#000;line-height:40px;font-size:22px;font-weight:500;"></i>
                                       <br />
                                      <div class="Item_Labels">
                                          <asp:Label CssClass="text-success itemAdded_Text" id="Item_7_Added" runat="server"></asp:Label>
                                          <asp:Label CssClass="text-danger itemExists_Text" id="Item_7_Exists" runat="server"></asp:Label>
                                        </div>
                                       </ContentTemplate>
                                       </asp:UpdatePanel>
                               </div>
                          </div>
                         <!-------------Product 8-------------->
                          <div class="row Products-Table-Row Tequila">
                               <div class="col-sm-5 Products-Col">
                                       <a href="#" class="Product-Img-Link" id="Product-Img-8" data-toggle="modal" data-target="#Product-8-Model" >
                                           <img src="img/item_8.jpg" class="product_Img" alt="Product 8" data-toggle="popover" data-trigger="hover" data-content="Click to see description" data-placement="top" />

                                       </a>
                               </div>
                               <div class="col-sm-7 Products-Col">
                                       <p class="Item-Title-Text">Patron Silver Tequila</p>
                                       <br />
                                       <div class="Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><p class="Item-Price-Text">79.95</p>
                                           <p class="Item-Amount-Text"> 750 mL bottle</p>
                                       </div>
                                       <asp:UpdatePanel ID="Product_8" runat="server">
                                       <ContentTemplate>
                                       <div class="btn-group">
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_8_Buy" runat="server" OnClick="Cart_Button_8_Click" Text="Add to Cart" />
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_8_Fav" runat="server" OnClick="Fav_Button_8_Click" Text="Add to Favourites" /> 
                                       </div> 
                                           &nbsp;<i class="fa fa-circle-o-notch fa-spin " id="fa_icon_8" runat="server" style="visibility:hidden;color:#000;line-height:40px;font-size:22px;font-weight:500;"></i>
                                       <br />
                                       <div class="Item_Labels">
                                          <asp:Label CssClass="text-success itemAdded_Text" id="Item_8_Added" runat="server"></asp:Label>
                                          <asp:Label CssClass="text-danger itemExists_Text" id="Item_8_Exists" runat="server"></asp:Label>
                                         </div>
                                       </ContentTemplate>
                                       </asp:UpdatePanel>
                               </div>
                          </div>
                         <!-------------Product 9-------------->
                          <div class="row Products-Table-Row Tequila">
                               <div class="col-sm-5 Products-Col">
                                       <a href="#" class="Product-Img-Link" id="Product-Img-9" data-toggle="modal" data-target="#Product-9-Model" >
                                           <img src="img/item_9.jpg" class="product_Img" alt="Product 9" data-toggle="popover" data-trigger="hover" data-content="Click to see description" data-placement="top" />

                                       </a>
                               </div>
                               <div class="col-sm-7 Products-Col">
                                       <p class="Item-Title-Text">Los Arango Reposado Tequila</p>
                                       <br />
                                       <div class="Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><p class="Item-Price-Text">50.00</p>
                                           <p class="Item-Amount-Text"> 750 mL bottle</p>
                                       </div>
                                       <asp:UpdatePanel ID="Product_9" runat="server">
                                       <ContentTemplate>
                                       <div class="btn-group">
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_9_Buy" runat="server" OnClick="Cart_Button_9_Click" Text="Add to Cart" />
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_9_Fav" runat="server" OnClick="Fav_Button_9_Click" Text="Add to Favourites" /> 
                                       </div> 
                                           &nbsp;<i class="fa fa-circle-o-notch fa-spin " id="fa_icon_9" runat="server" style="visibility:hidden;color:#000;line-height:40px;font-size:22px;font-weight:500;"></i>
                                       <br />
                                       <div class="Item_Labels">
                                          <asp:Label CssClass="text-success itemAdded_Text"  id="Item_9_Added" runat="server"></asp:Label>
                                          <asp:Label CssClass="text-danger itemExists_Text" id="Item_9_Exists" runat="server"></asp:Label>
                                        </div>
                                       </ContentTemplate>
                                       </asp:UpdatePanel>
                               </div>
                          </div>
                         <!-------------Product 10-------------->
                          <div class="row Products-Table-Row Tequila">
                               <div class="col-sm-5 Products-Col">
                                       <a href="#" class="Product-Img-Link" id="Product-Img-10" data-toggle="modal" data-target="#Product-10-Model">
                                           <img src="img/item_10.jpg" class="product_Img" alt="Product 10"  data-toggle="popover" data-trigger="hover" data-content="Click to see description" data-placement="top" />

                                       </a>
                               </div>
                               <div class="col-sm-7 Products-Col">
                                       <p class="Item-Title-Text">Cabo Wabo Reposado Tequila</p>
                                       <br />
                                       <div class="Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><p class="Item-Price-Text">79.95</p>
                                           <p class="Item-Amount-Text"> 750 mL bottle</p>
                                       </div>
                                       <asp:UpdatePanel ID="Product_10" runat="server">
                                       <ContentTemplate>
                                       <div class="btn-group">
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_10_Buy" runat="server" OnClick="Cart_Button_10_Click" Text="Add to Cart" />
                                          <asp:Button CssClass="btn btn-primary btn-custom " ID="Item_10_Fav" runat="server" OnClick="Fav_Button_10_Click" Text="Add to Favourites" /> 
                                       </div> 
                                           &nbsp;<i class="fa fa-circle-o-notch fa-spin " id="fa_icon_10" runat="server" style="visibility:hidden;color:#000;line-height:40px;font-size:22px;font-weight:500;"></i>
                                       <br />
                                           <div class="Item_Labels">
                                              <asp:Label CssClass="text-success itemAdded_Text" id="Item_10_Added" runat="server"></asp:Label>
                                              <asp:Label CssClass="text-danger itemExists_Text" id="Item_10_Exists" runat="server"></asp:Label>
                                           </div>
                                       </ContentTemplate>
                                       </asp:UpdatePanel>
                               </div>
                          </div>
                         <div class="row Products-Table-Row">
                              <h4 class="Page-2-Source-Info">Source: LcBo.Com</h4>
                         </div>
                 </div>
            </div>
            <div class="login_Status_Black" id="login_Status_Black" runat="server">
                  <asp:Label id='login_Status_Black_Text' runat="server"></asp:Label>
            </div>
           </ContentTemplate>
         </asp:UpdatePanel>
       </div><!-------Tables Div Ends here--------->
    </div><!-------formContainer Ends here--------->
<!--------------------- Modal Objects--------------------------->
 <div>
<!--------------------- Modal Object 1--------------------------->
    <div class="modal fade" id="Product-1-Model" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close Modal-Close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Jameson Irish Whisky</h3>
        </div>
        <div class="modal-body container-fluid">
                      <div class="col-sm-6">
                          <img src="img/item_1.jpg" class="Modal-Img" alt="Item 1" />
                      </div>
                      <div class="col-sm-6">
                          <p class="Modal-Info-Heading">Jameson Irish Whiskey</p><p class="Modal-Text"> is a blend of pot still and fine grain whiskeys that is as versatile as it is smooth. Triple-distilled and aged for a minimum of 4 years, this is the timeless whiskey that turned our green bottle into an icon.</p>
                          <br /><br />
                          <p class="Modal-Info-Heading">Nose:</p><p class="Modal-Text"> To the nose, Jameson has a light floral fragrance, peppered with spicy wood and sweet notes.</p>
                          <br /><br />
                          <p class="Modal-Info-Heading">Taste:</p><p class="Modal-Text"> Perfect balance of spicy, nutty and vanilla notes with hints of sweet sherry and exceptional smoothness. </p>
                      </div>
        </div>
        <div class="modal-footer">
            <div class="container-fluid">
                <div class="row">
                     <p class="Modal-Text col-sm-6">Source: www.JamesonWhisky.com</p>
                    <div class="col-sm-4"></div>
                     <button type="button" class="btn btn-default col-sm-2" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
      </div>
    </div>
 </div>
<!--------------------- Modal Object 2--------------------------->
    <div class="modal fade" id="Product-2-Model" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close Modal-Close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Jack Daniel's Old No. 7</h3>
        </div>
        <div class="modal-body container-fluid">
                      <div class="col-sm-6">
                          <img src="img/item_2.jpg" class="Modal-Img" alt="Item 1" />
                      </div>
                      <div class="col-sm-6">
                          <p class="Modal-Info-Heading">Jack Daniel's Old No. 7</p><p class="Modal-Text"> The original all-conquering cola-friendly colossus, Jack Daniel's No. 7 commands a legion of fans worldwide, thanks to the sweet smoothness imparted by the Lincoln County Process of charcoal-mellowing the spirit before maturation.</p>
                          <br /><br />
                          <p class="Modal-Info-Heading">Charcol Mellowed:</p><p class="Modal-Text"> Mellowed drop by drop through 10-feet of sugar maple charcoal, then matured in handcrafted barrels of our own making. And our Tennessee Whiskey doesn’t follow a calendar. It’s only ready when our tasters say it is. We judge it by the way it looks. By its aroma. And of course, by the way it tastes. It’s how Jack Daniel himself did it over a century ago. And how we still do it today.</p>
                      </div>
        </div>
        <div class="modal-footer">
            <div class="container-fluid">
                <div class="row">
                     <p class="Modal-Text col-sm-6">Source: www.JackDaniels.com</p>
                    <div class="col-sm-4"></div>
                     <button type="button" class="btn btn-default col-sm-2" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
      </div>
    </div>
 </div>
<!--------------------- Modal Object 3--------------------------->
        <div class="modal fade" id="Product-3-Model" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close Modal-Close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Johnnie Walker Black Label</h3>
        </div>
        <div class="modal-body container-fluid">
                      <div class="col-sm-6">
                          <img src="img/item_3.jpg" class="Modal-Img" alt="Item 1" />
                      </div>
                      <div class="col-sm-6">
                          <p class="Modal-Info-Heading">Johnnie Walker Black Label</p><p class="Modal-Text"> is a true icon, recognised as the benchmark for all other deluxe blends. Created using only whiskies aged for a minimum of 12 years from the four corners of Scotland, Johnnie Walker Black Label has an unmistakably smooth, deep, complex character. An impressive whisky to share on any occasion, whether you're entertaining at home with friends or on a memorable night out.</p>
                          <br /><br />
                          <p class="Modal-Info-Heading">Serve:</p><p class="Modal-Text"> Enjoy Johnnie Walker Black Label in any way you like - on its own, with a dash of water, or along with your favourite mixer.</p>
                     </div>
        </div>
        <div class="modal-footer">
            <div class="container-fluid">
                <div class="row">
                     <p class="Modal-Text col-sm-6">Source: www.JohnnieWalker.com</p>
                    <div class="col-sm-4"></div>
                     <button type="button" class="btn btn-default col-sm-2" data-dismiss="modal">Close</button>
                </div>
            </div>
          
        </div>
      </div>
     </div>
</div>
<!--------------------- Modal Object 4--------------------------->
        <div class="modal fade" id="Product-4-Model" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close Modal-Close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Forty Creek Founder's Reserve</h3>
        </div>
        <div class="modal-body container-fluid">
                      <div class="col-sm-6">
                          <img src="img/item_4.jpg" class="Modal-Img" alt="Item 1" />
                      </div>
                      <div class="col-sm-6">
                          <p class="Modal-Info-Heading">Forty Creek Whisky</p><p class="Modal-Text"> releases a new, limited edition expression every year. Carefully crafted over the years, these expressions are Forty Creek’s true passion projects – collectible, small-batch whiskies that express new elements of our fine Canadian whisky. Each whisky has a taste profile of its own, yet remains characteristically true to the Forty Creek family.</p>
                          <br /><br />
                          <p class="Modal-Info-Heading">Deep amber</p><p class="Modal-Text"> in colour with rich aromas of apricot and orange, this limited edition exhibits bold flavours of exotic spice with a long, dry finish. The whisky stocks have been aged from four to nine years in a mixture of both lightly toasted and heavily charred American White oak barrels.</p>
                      </div>
        </div>
        <div class="modal-footer">
            <div class="container-fluid">
                <div class="row">
                     <p class="Modal-Text col-sm-6">Source: www.FortyCreekWhisky.com</p>
                    <div class="col-sm-4"></div>
                     <button type="button" class="btn btn-default col-sm-2" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
        </div>
      </div>
 </div>
<!--------------------- Modal Object 5--------------------------->
        <div class="modal fade" id="Product-5-Model" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close Modal-Close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Molson Canadian - Premium Lager</h3>
        </div>
        <div class="modal-body container-fluid">
                      <div class="col-sm-6">
                          <img src="img/item_5.jpg" class="Modal-Img" alt="Item 1" />
                      </div>
                      <div class="col-sm-6">
                          <p class="Modal-Info-Heading">Molson Canadian</p><p class="Modal-Text"> is made from the best this land has to offer: Canadian water, prairie barley, and no preservatives. The result is a beer as clean crisp and fresh as the country it comes from. Molson Canadian. Made from Canada.</p>
                          <br /><br />
                          <p class="Modal-Info-Heading">STYLE - Light & Malty.</p><p class="Modal-Text"> Golden colour; light floral aroma; soft fruit and balanced with light hops, soft finish.</p>
                      </div>
        </div>
        <div class="modal-footer">
            <div class="container-fluid">
                <div class="row">
                     <p class="Modal-Text col-sm-6">Source: www.MolsonCanadian.ca</p>
                    <div class="col-sm-4"></div>
                     <button type="button" class="btn btn-default col-sm-2" data-dismiss="modal">Close</button>
                </div>
            </div>
           </div>
        </div>
      </div>
 </div>
<!--------------------- Modal Object 6--------------------------->
        <div class="modal fade" id="Product-6-Model" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close Modal-Close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Hoegaarden Wit-Blanche</h3>
        </div>
        <div class="modal-body container-fluid">
                      <div class="col-sm-6">
                          <img src="img/item_6.jpg" class="Modal-Img" alt="Item 1" />
                      </div>
                      <div class="col-sm-6">
                          <p class="Modal-Info-Heading">Hoegaarden</p><p class="Modal-Text"> Wit-Blanche is brewed with coriander and lemon zests for a more exquisite and fresher taste. Hoegaarden displays a curious blond cloudy colour explained by the lack of filtration before bottling during the brewing process. Therefore the beer still contains suspended yeast. It is covered by a long-lasting creamy head upon which effervescence smoothly strikes. It reveals a fine fruity and spicy nose reminiscent of citrus fruits, coriander and hops. In the mouth, we discover flavours similar to the aromas sensed in the nose with a fruity taste along with a sweet presence of coriander. Then a fine bitterness reveals itself on the palate, reaffirming the character of this Witbier beer which is a nice example of what Belgian witbier beers are. Enjoy Hoegaarden to the full in its Hoegaarden Glass.</p>
                       </div>
        </div>
        <div class="modal-footer">
            <div class="container-fluid">
                <div class="row">
                     <p class="Modal-Text col-sm-6">Source: Hoegaarden.com</p>
                    <div class="col-sm-4"></div>
                     <button type="button" class="btn btn-default col-sm-2" data-dismiss="modal">Close</button>
                </div>
            </div>
           </div>
        </div>
      </div>
 </div>
<!--------------------- Modal Object 7--------------------------->
        <div class="modal fade" id="Product-7-Model" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close Modal-Close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Budweiser</h3>
        </div>
        <div class="modal-body container-fluid">
                      <div class="col-sm-6">
                          <img src="img/item_7.jpg" class="Modal-Img" alt="Item 1" />
                      </div>
                      <div class="col-sm-6">
                          <p class="Modal-Info-Heading">Budweiser</p><p class="Modal-Text"> has been brewed in Canada since 1980. Using only the finest ingredients and our exclusive Beechwood aging process, it has a smoothness and drinkability you will find in no other beer.</p>
                          
                      </div>
        </div>
        <div class="modal-footer">
            <div class="container-fluid">
                <div class="row">
                     <p class="Modal-Text col-sm-6">Source: Budweiser.ca</p>
                    <div class="col-sm-4"></div>
                     <button type="button" class="btn btn-default col-sm-2" data-dismiss="modal">Close</button>
                </div>
            </div>
           </div>
        </div>
      </div>
 </div>
<!--------------------- Modal Object 8--------------------------->
        <div class="modal fade" id="Product-8-Model" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close Modal-Close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Patron Silver Tequila</h3>
        </div>
        <div class="modal-body container-fluid">
                      <div class="col-sm-6">
                          <img src="img/item_8.jpg" class="Modal-Img" alt="Item 1" />
                      </div>
                      <div class="col-sm-6">
                          <p class="Modal-Info-Heading">B</p><p class="Modal-Text">rilliant crystal clear in appearance; pronounced aromas of citrus rind, melon and cucumber with notes of herb and smoke; initial palate is rich, sweet and ultra-smooth, with flavours of lime/citrus, spice with peppery and light briny notes on the long complex finish.</p>
                      </div>
        </div>
        <div class="modal-footer">
            <div class="container-fluid">
                <div class="row">
                     <p class="Modal-Text col-sm-6">Source: www.PatronTequila.com</p>
                    <div class="col-sm-4"></div>
                     <button type="button" class="btn btn-default col-sm-2" data-dismiss="modal">Close</button>
                </div>
            </div>
         </div>
       </div>
      </div>
 </div>
<!--------------------- Modal Object 9--------------------------->
        <div class="modal fade" id="Product-9-Model" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close Modal-Close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Los Arango Reposado Tequila</h3>
        </div>
        <div class="modal-body container-fluid">
                      <div class="col-sm-6">
                          <img src="img/item_9.jpg" class="Modal-Img" alt="Item 1" />
                      </div>
                      <div class="col-sm-6">
                          <p class="Modal-Info-Heading">C</p><p class="Modal-Text">lear with a slight pale straw tone. The nose shows white pepper, lime and fresh lemon. Clean and silky on the palate, it shows lovely white pepper from start to finish with hints of lime on the finish, which is medium to long.</p>
                      </div>
        </div>
        <div class="modal-footer">
            <div class="container-fluid">
                <div class="row">
                     <p class="Modal-Text col-sm-6">Source: www.LcBo.com</p>
                    <div class="col-sm-4"></div>
                     <button type="button" class="btn btn-default col-sm-2" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>

      </div>
    </div>
 </div>
<!--------------------- Modal Object 10--------------------------->
        <div class="modal fade" id="Product-10-Model" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close Modal-Close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Cabo Wabo Reposado Tequila</h3>
        </div>
        <div class="modal-body container-fluid">
                      <div class="col-sm-6">
                          <img src="img/item_10.jpg" class="Modal-Img" alt="Item 1" />
                      </div>
                      <div class="col-sm-6">
                          <p class="Modal-Info-Heading">C</p><p class="Modal-Text">lear pale yellow colour; forward aromas of wood shavings, sweet fruit, spicy oak, herb and green olive; quite robust and full with a creamy textured palate, flavours of vanilla, pepper and citrus, with sweet fruit notes on a lengthy complex finish.</p>
                      </div>
        </div>
        <div class="modal-footer">
            <div class="container-fluid">
                <div class="row">
                     <p class="Modal-Text col-sm-6">Source: www.CaboWabo.com/</p>
                    <div class="col-sm-4"></div>
                     <button type="button" class="btn btn-default col-sm-2" data-dismiss="modal">Close</button>
                </div>
            </div>
          </div>
        </div>
      </div>
 </div>

</div>
</form>
<!--------------------- Footer ------------------------->
 <div class="footer Footer-Sticky">
      <div class="container Footer-Container">
        <p class="footer-text Footer-Sticky-Text">Created by: Amninder Chahal</p>
      </div>
    </div>
    <footer class="Footer-Full">
      <div class="container Footer-Container">
        <p class="Footer-Full-Text">Created by: Amninder Chahal</p>
      </div>
    </footer>

</body>
</html>