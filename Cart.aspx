<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Favorites" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" /> 
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Cart</title>
	<link rel="shortcut icon" href="img/logo.png" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="css/StyleSheet.css" type="text/css" />
    <script src="jquery/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="jquery/jquery-ui.js" type="text/javascript"></script>
    <script src="jquery/font-awesome-min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
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
                       <li class="navLink"><a href="Products.aspx"><h4>Products</h4></a></li>
                       <li class="navLink"><a href="My_Items.aspx"><h4>My Items</h4></a></li>
                       <li class="navLink active"><a href="Cart.aspx"><h4>Cart</h4></a></li>
                    </ul>
              </div>
         </div>
    </nav>
    <!--------------- Form starts here------------->
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <div class="formContent">
         <div class="tables Page-2-Tables">
           <asp:UpdatePanel ID="My_Items_Ajax" runat="server">
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
                <!----------------------- Cart Items -------------------------->
                <div class="container Cart-Div" id="products_Div" runat="server">

                    <!-------------Product 1-------------->
                         <div class="row Cart-Table-Row Whisky" id="Cart_Item_1" runat="server">
                               <div class="col-sm-4 Products-Col">
                                       <img src="img/item_1.jpg" class="Cart_Img" alt="Product Image" />
                               </div>
                               <div class="col-sm-5 Products-Col">
                                       <a href="Products.aspx" class="Cart-Link Fav-Item-Title-Text">Jameson Irish Whisky</a>
                                       <br />
                                       <div class="Quantity-Div">
                                            <label class="Quantity-Text" for="sel1">Select Quantity: </label>
                                            <select class="Select-List form-control" id="sel1">
                                                  <option>1</option>
                                                  <option>2</option>
                                                  <option>3</option>
                                                  <option>5</option>
                                                  <option>8</option>
                                                  <option>10</option>
                                            </select>
                                       </div>
                                       <label class="Cart-Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><label class="Cart-Item-Price-Text">34.95</label>
                                           <label class="Item-Amount-Text"> 750 mL bottle</label>
                                       </label>
                               </div>
                               <div class="col-sm-3 Cart-Button-Div">
                                      <i class="fa fa-spinner fa-spin text-danger" id="fa-icon-1" style="visibility:hidden;font-size:25px;"></i>&nbsp;
                                      <asp:Button CssClass="Cart-Button Cart_Button" id="Cart_Button_1" data-toggle="popover" data-trigger="hover" data-content="Remove Item from Cart" runat="server" Text="X" OnClick="Cart_Button_1_Click" />
                                      <asp:Button CssClass="Hidden_Button" id="Hidden_Button_1" runat="server" Text="Remove Item" OnClick="Cart_Button_1_Click" />
                                      <asp:Label CssClass="text-danger Cart_Label" id="Cart_Label_1" runat="server"></asp:Label>
                              </div>
                           </div>
                    <!-------------Product 2-------------->
                         <div class="row Cart-Table-Row" id="Cart_Item_2" runat="server">
                               <div class="col-sm-4 Products-Col">
                                       <img src="img/item_2.jpg" class="Cart_Img" alt="Product Image" />
                               </div>
                               <div class="col-sm-5 Products-Col">
                                       <a href="Products.aspx" class="Cart-Link Fav-Item-Title-Text">Jack Daniel's Old No. 7</a>
                                       <br />
                                       <div class="Quantity-Div">
                                            <label class="Quantity-Text" for="sel2">Select Quantity: </label>
                                            <select class="Select-List form-control" id="sel2">
                                                  <option>1</option>
                                                  <option>2</option>
                                                  <option>3</option>
                                                  <option>5</option>
                                                  <option>8</option>
                                                  <option>10</option>
                                            </select>
                                       </div>
                                       <label class="Cart-Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><label class="Cart-Item-Price-Text">30.95</label>
                                           <label class="Item-Amount-Text"> 750 mL bottle</label>
                                       </label>
                               </div>
                               <div class="col-sm-3 Cart-Button-Div">
                                   <i class="fa fa-spinner fa-spin text-danger" id="fa-icon-2" style="visibility:hidden;font-size:25px;"></i>&nbsp;
                                      <asp:Button CssClass="Cart-Button" id="Cart_Button_2" data-toggle="popover" data-trigger="hover" data-content="Remove Item from Cart" runat="server" Text="X" OnClick="Cart_Button_2_Click" />
                                      <asp:Button CssClass="Hidden_Button" id="Button2" runat="server" Text="Remove Item" OnClick="Cart_Button_2_Click" />   
                                   <asp:Label CssClass="text-danger Cart_Label" id="Cart_Label_2" runat="server"></asp:Label>
                              </div>
                           </div>
                    <!-------------Product 3-------------->
                         <div class="row Cart-Table-Row" id="Cart_Item_3" runat="server">
                               <div class="col-sm-4 Products-Col">
                                       <img src="img/item_3.jpg" class="Cart_Img" alt="Product Image" />
                               </div>
                               <div class="col-sm-5 Products-Col">
                                       <a href="Products.aspx" class="Cart-Link Fav-Item-Title-Text">Johnnie Walker Black Label</a>
                                       <br />
                                       <div class="Quantity-Div">
                                            <label class="Quantity-Text" for="sel3">Select Quantity: </label>
                                            <select class="Select-List form-control" id="sel3">
                                                  <option>1</option>
                                                  <option>2</option>
                                                  <option>3</option>
                                                  <option>5</option>
                                                  <option>8</option>
                                                  <option>10</option>
                                            </select>
                                       </div>
                                       <label class="Cart-Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><label class="Cart-Item-Price-Text">51.95</label>
                                           <label class="Item-Amount-Text"> 750 mL bottle</label>
                                       </label>
                               </div>
                               <div class="col-sm-3 Cart-Button-Div">
                                   <i class="fa fa-spinner fa-spin text-danger" id="fa-icon-3" style="visibility:hidden;font-size:25px;"></i>&nbsp;
                                      <asp:Button CssClass="Cart-Button" id="Cart_Button_3" data-toggle="popover" data-trigger="hover" data-content="Remove Item from Cart" runat="server" Text="X" OnClick="Cart_Button_3_Click" />
                                      <asp:Button CssClass="Hidden_Button" id="Button3" runat="server" Text="Remove Item" OnClick="Cart_Button_3_Click" />
                                   <asp:Label CssClass="text-danger Cart_Label" id="Cart_Label_3" runat="server"></asp:Label>
                              </div>
                           </div>
                      <!-------------Product 4-------------->
                         <div class="row Cart-Table-Row" id="Cart_Item_4" runat="server">
                               <div class="col-sm-4 Products-Col">
                                       <img src="img/item_4.jpg" class="Cart_Img" alt="Product Image" />
                               </div>
                               <div class="col-sm-5 Products-Col">
                                       <a href="Products.aspx" class="Cart-Link Fav-Item-Title-Text">Forty Creek Founder's Reserve</a>
                                       <br />
                                       <div class="Quantity-Div">
                                            <label class="Quantity-Text" for="sel4">Select Quantity: </label>
                                            <select class="Select-List form-control" id="sel4">
                                                  <option>1</option>
                                                  <option>2</option>
                                                  <option>3</option>
                                                  <option>5</option>
                                                  <option>8</option>
                                                  <option>10</option>
                                            </select>
                                       </div>
                                       <label class="Cart-Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><label class="Cart-Item-Price-Text">74.95</label>
                                           <label class="Item-Amount-Text"> 750 mL bottle</label>
                                       </label>
                               </div>
                               <div class="col-sm-3 Cart-Button-Div">
                                   <i class="fa fa-spinner fa-spin text-danger" id="fa-icon-4" style="visibility:hidden;font-size:25px;"></i>&nbsp;
                                      <asp:Button CssClass="Cart-Button" id="Cart_Button_4" data-toggle="popover" data-trigger="hover" data-content="Remove Item from Cart" runat="server" Text="X" OnClick="Cart_Button_4_Click" />
                                   <asp:Button CssClass="Hidden_Button" id="Button4" runat="server" Text="Remove Item" OnClick="Cart_Button_4_Click" />   
                                   <asp:Label CssClass="text-danger Cart_Label" id="Cart_Label_4" runat="server"></asp:Label>
                              </div>
                           </div>
                      <!-------------Product 5-------------->
                         <div class="row Cart-Table-Row" id="Cart_Item_5" runat="server">
                               <div class="col-sm-4 Products-Col">
                                       <img src="img/item_5.jpg" class="Cart_Img" alt="Product Image" />
                               </div>
                               <div class="col-sm-5 Products-Col">
                                       <a href="Products.aspx" class="Cart-Link Fav-Item-Title-Text">Molson Canadian - Premium Lager</a>
                                       <br />
                                       <div class="Quantity-Div">
                                            <label class="Quantity-Text" for="sel5">Select Quantity: </label>
                                            <select class="Select-List form-control" id="sel5">
                                                  <option>1</option>
                                                  <option>2</option>
                                                  <option>3</option>
                                                  <option>5</option>
                                                  <option>8</option>
                                                  <option>10</option>
                                            </select>
                                       </div>
                                       <label class="Cart-Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><label class="Cart-Item-Price-Text">11.95</label>
                                           <label class="Item-Amount-Text"> 6 x 341 mL bottle</label>
                                       </label>
                               </div>
                               <div class="col-sm-3 Cart-Button-Div">
                                   <i class="fa fa-spinner fa-spin text-danger" id="fa-icon-5" style="visibility:hidden;font-size:28px;"></i>&nbsp;
                                      <asp:Button CssClass="Cart-Button" id="Cart_Button_5" data-toggle="popover" data-trigger="hover" data-content="Remove Item from Cart" runat="server" Text="X" OnClick="Cart_Button_5_Click" />
                                      <asp:Button CssClass="Hidden_Button" id="Button5" runat="server" Text="Remove Item" OnClick="Cart_Button_5_Click" />
                                   <asp:Label CssClass="text-danger Cart_Label" id="Cart_Label_5" runat="server"></asp:Label>
                              </div>
                           </div>
                     <!-------------Product 6-------------->
                         <div class="row Cart-Table-Row" id="Cart_Item_6" runat="server">
                               <div class="col-sm-4 Products-Col">
                                       <img src="img/item_6.jpg" class="Cart_Img" alt="Product Image" />
                               </div>
                               <div class="col-sm-5 Products-Col">
                                       <a href="Products.aspx" class="Cart-Link Fav-Item-Title-Text">Hoegaarden Wit-Blanche</a>
                                       <br />
                                       <div class="Quantity-Div">
                                            <label class="Quantity-Text" for="sel6">Select Quantity: </label>
                                            <select class="Select-List form-control" id="sel6">
                                                  <option>1</option>
                                                  <option>2</option>
                                                  <option>3</option>
                                                  <option>5</option>
                                                  <option>8</option>
                                                  <option>10</option>
                                            </select>
                                       </div>
                                       <label class="Cart-Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><label class="Cart-Item-Price-Text">14.50</label>
                                           <label class="Item-Amount-Text"> 6 x 341 mL bottle</label>
                                       </label>
                               </div>
                               <div class="col-sm-3 Cart-Button-Div">
                                   <i class="fa fa-spinner fa-spin text-danger" id="fa-icon-6" style="visibility:hidden;font-size:28px;"></i>&nbsp;
                                      <asp:Button CssClass="Cart-Button" id="Cart_Button_6" data-toggle="popover" data-trigger="hover" data-content="Remove Item from Cart" runat="server" Text="X" OnClick="Cart_Button_6_Click" />
                                      <asp:Button CssClass="Hidden_Button" id="Button6" runat="server" Text="Remove Item" OnClick="Cart_Button_6_Click" />
                                   <asp:Label CssClass="text-danger Cart_Label" id="Cart_Label_6" runat="server"></asp:Label>
                              </div>
                           </div>
                      <!-------------Product 7-------------->
                         <div class="row Cart-Table-Row" id="Cart_Item_7" runat="server">
                               <div class="col-sm-4 Products-Col">
                                       <img src="img/item_7.jpg" class="Cart_Img" alt="Product Image" />
                               </div>
                               <div class="col-sm-5 Products-Col">
                                       <a href="Products.aspx" class="Cart-Link Fav-Item-Title-Text">Budweiser</a>
                                       <br />
                                       <div class="Quantity-Div">
                                            <label class="Quantity-Text" for="sel7">Select Quantity: </label>
                                            <select class="Select-List form-control" id="sel7">
                                                  <option>1</option>
                                                  <option>2</option>
                                                  <option>3</option>
                                                  <option>5</option>
                                                  <option>8</option>
                                                  <option>10</option>
                                            </select>
                                       </div>
                                       <label class="Cart-Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><label class="Cart-Item-Price-Text">11.95</label>
                                           <label class="Item-Amount-Text"> 6 x 341 mL bottle</label>
                                       </label>
                               </div>
                               <div class="col-sm-3 Cart-Button-Div">
                                   <i class="fa fa-spinner fa-spin text-danger" id="fa-icon-7" style="visibility:hidden;font-size:28px;"></i>&nbsp;
                                      <asp:Button CssClass="Cart-Button" id="Cart_Button_7" data-toggle="popover" data-trigger="hover" data-content="Remove Item from Cart" runat="server" Text="X" OnClick="Cart_Button_7_Click" />
                                      <asp:Button CssClass="Hidden_Button" id="Button7" runat="server" Text="Remove Item" OnClick="Cart_Button_7_Click" />
                                   <asp:Label CssClass="text-danger Cart_Label" id="Cart_Label_7" runat="server"></asp:Label>
                              </div>
                           </div>
                      <!-------------Product 8-------------->
                         <div class="row Cart-Table-Row" id="Cart_Item_8" runat="server">
                               <div class="col-sm-4 Products-Col">
                                       <img src="img/item_8.jpg" class="Cart_Img" alt="Product Image" />
                               </div>
                               <div class="col-sm-5 Products-Col">
                                       <a href="Products.aspx" class="Cart-Link Fav-Item-Title-Text">Patron Silver Tequila</a>
                                       <br />
                                       <div class="Quantity-Div">
                                            <label class="Quantity-Text" for="sel8">Select Quantity: </label>
                                            <select class="Select-List form-control" id="sel8">
                                                  <option>1</option>
                                                  <option>2</option>
                                                  <option>3</option>
                                                  <option>5</option>
                                                  <option>8</option>
                                                  <option>10</option>
                                            </select>
                                       </div>
                                       <label class="Cart-Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><label class="Cart-Item-Price-Text">79.95</label>
                                           <label class="Item-Amount-Text"> 750 mL bottle</label>
                                       </label>
                               </div>
                               <div class="col-sm-3 Cart-Button-Div">
                                   <i class="fa fa-spinner fa-spin text-danger" id="fa-icon-8" style="visibility:hidden;font-size:28px;"></i>&nbsp;
                                      <asp:Button CssClass="Cart-Button" id="Cart_Button_8" data-toggle="popover" data-trigger="hover" data-content="Remove Item from Cart" runat="server" Text="X" OnClick="Cart_Button_8_Click" />
                                      <asp:Button CssClass="Hidden_Button" id="Button8" runat="server" Text="Remove Item" OnClick="Cart_Button_8_Click" />
                                   <asp:Label CssClass="text-danger Cart_Label" id="Cart_Label_8" runat="server"></asp:Label>
                              </div>
                           </div>
                    <!-------------Product 9-------------->
                         <div class="row Cart-Table-Row" id="Cart_Item_9" runat="server">
                               <div class="col-sm-4 Products-Col">
                                       <img src="img/item_9.jpg" class="Cart_Img" alt="Product Image" />
                               </div>
                               <div class="col-sm-5 Products-Col">
                                       <a href="Products.aspx" class="Cart-Link Fav-Item-Title-Text">Los Arango Reposado Tequila</a>
                                       <br />
                                       <div class="Quantity-Div">
                                            <label class="Quantity-Text" for="sel9">Select Quantity: </label>
                                            <select class="Select-List form-control" id="sel9">
                                                  <option>1</option>
                                                  <option>2</option>
                                                  <option>3</option>
                                                  <option>5</option>
                                                  <option>8</option>
                                                  <option>10</option>
                                            </select>
                                       </div>
                                       <label class="Cart-Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><label class="Cart-Item-Price-Text">50.00</label>
                                           <label class="Item-Amount-Text"> 750 mL bottle</label>
                                       </label>
                               </div>
                               <div class="col-sm-3 Cart-Button-Div">
                                   <i class="fa fa-spinner fa-spin text-danger" id="fa-icon-9" style="visibility:hidden;font-size:28px;"></i>&nbsp;
                                      <asp:Button CssClass="Cart-Button" id="Cart_Button_9" data-toggle="popover" data-trigger="hover" data-content="Remove Item from Cart" runat="server" Text="X" OnClick="Cart_Button_9_Click" />
                                      <asp:Button CssClass="Hidden_Button" id="Button9" runat="server" Text="Remove Item" OnClick="Cart_Button_9_Click" />
                                   <asp:Label CssClass="text-danger Cart_Label" id="Cart_Label_9" runat="server"></asp:Label>
                              </div>
                           </div>
                    <!-------------Product 10-------------->
                         <div class="row Cart-Table-Row" id="Cart_Item_10" runat="server">
                               <div class="col-sm-4 Products-Col">
                                       <img src="img/item_10.jpg" class="Cart_Img" alt="Product Image" />
                               </div>
                               <div class="col-sm-5 Products-Col">
                                       <a href="Products.aspx" class="Cart-Link Fav-Item-Title-Text">Cabo Wabo Reposado Tequila</a>
                                       <br />
                                       <div class="Quantity-Div">
                                            <label class="Quantity-Text" for="sel10">Select Quantity: </label>
                                            <select class="Select-List form-control" id="sel10">
                                                  <option>1</option>
                                                  <option>2</option>
                                                  <option>3</option>
                                                  <option>5</option>
                                                  <option>8</option>
                                                  <option>10</option>
                                            </select>
                                       </div>
                                       <label class="Cart-Item-Price-Div">
                                           <span class="glyphicon glyphicon-usd dollar-icon"></span><label class="Cart-Item-Price-Text">79.95</label>
                                           <label class="Item-Amount-Text"> 750 mL bottle</label>
                                       </label>
                               </div>
                               <div class="col-sm-3 Cart-Button-Div">
                                   <i class="fa fa-spinner fa-spin text-danger" id="fa-icon-10" style="visibility:hidden;font-size:28px;"></i>&nbsp;
                                      <asp:Button CssClass="Cart-Button" id="Cart_Button_10" data-toggle="popover" data-trigger="hover" data-content="Remove Item from Cart" runat="server" Text="X" OnClick="Cart_Button_10_Click" />
                                      <asp:Button CssClass="Hidden_Button" id="Button10" runat="server" Text="Remove Item" OnClick="Cart_Button_10_Click" />
                                   <asp:Label CssClass="text-danger Cart_Label" id="Cart_Label_10" runat="server"></asp:Label>
                              </div>
                           </div>
                         <!-------------Cart Buttons-------------->
                         <div class="row Cart-Table-Row Cart-Buttons-Row" id="Cart_Item_11" runat="server">
                             <div class="cart-button-div">
                                <asp:Button CssClass="Button" id="Cart_Remove_All" data-toggle="popover" data-trigger="hover" data-content="Remove all Items from Cart" data-placement="top" runat="server" Text="Remove All Items" OnClick="Cart_Remove_All_Click" />&nbsp;
                                <asp:Button CssClass="Button" id="Check_Out" data-toggle="popover" data-trigger="hover" data-content="Check Out doesn't actually Work" data-placement="right" runat="server" Text="Check Out" OnClick="Check_Out_Click" />
                                 <br /><i class="fa fa-spinner fa-spin text-danger" id="fa-icon-11" style="visibility:hidden;line-height:38px;font-size:24px;"></i><label style="visibility:hidden;display:inline;">my label is</label>
                              </div>
                         </div>
                    
                </div>
               <!--------------------- Products End here ------------------------->
               <div class="login_Status_Black" id="login_Status_Black" runat="server">
                       <asp:Label id='login_Status_Black_Text' runat="server"></asp:Label>
                 </div>
           </ContentTemplate>
           </asp:UpdatePanel>
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
