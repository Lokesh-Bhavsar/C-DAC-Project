<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>E-MART | home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">



   <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
   
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
   
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
 </head>
<body>
         <div class="container">
            <div class="row">
               
                <div class="col-md-2">
                        <div class="users">
                               <a href="#">e-mart.com</a>
                            </div>     
                 </div>  
                 <div class="col-md-3 col-md-offset-7">
                 
                    <div class="user-menu">
                        <ul>
                            <li><a href="#"><i class="fa fa-user"></i>My Account</a></li>
                             <li><a href="checkout.html"><i class="fa fa-user"></i>Logout</a></li>
                            </ul>
                    </div>
                   
                 
                 </div>
            </div>
        </div> 
  
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="./">Welcome ${Login.Username}! </a></h1>
                    </div>
                </div>
                
               
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="products">Home</a></li>
                        <li><a href="product/new">Add a New Product</a></li>
                        <li><a href="#">####</a></li>
                        <li><a href="contactUs">Vendor contact</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-1 col-lg-12">
                        
                    <div class="product-bit-title text-center">
                        <h2>Products Details</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
   

        <div class="container">
        <%--   <block include="fragments/header :: header"></block> 
            <div if="${not #lists.isEmpty(products)}"> --%>
              
 <h2>Product List</h2>
        <table class="table table-striped">
            <tr>
                <th>Id</th>
                <th>Product Id</th>
                <th>Name</th>
                <th>Description</th>  
                <th>Price</th>
                <th>View</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>  
<c:forEach items="${products}" var="product">  
<tr><td>${product.id}</td>
<td>${product.productId}</td>
<td>${product.name}</td>  
<td>${product.description}</td>  
<td>${product.price}</td>
  <td><a href="/product/${product.id}">View</a></td>
  <td><a href="/product/edit/${product.id}">Edit</a></td>
  <td><a href="/product/delete/${product.id}">Delete</a></td>
</c:forEach>  
</table>  
  
            </div>
       


   <!--  <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>Efarm<span>Cart</span></h2>
                        <p>farmer guidlines**************</p>
                        <div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">User Navigation </h2>
                        <ul>
                            <li><a href="">My account</a></li>
                    
                            <li><a href="">Vendor contact</a></li>
                     
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Categories</h2>
                        <ul>
                            <li><a href="">Fertilizers</a></li>
                            <li><a href="">Equipments</a></li>
                            <li><a href="">Seeds and Crops</a></li>
                            
                        </ul>                        
                    </div>
                </div>
           
            </div>
        </div>
    </div>
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                       <p>&copy; 2015 e-Mart. All Rights Reserved. <a href="http://www.freshdesignweb.com" target="_blank">e-mart_farmer.com</a></p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    Latest jQuery form server
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    Bootstrap JS form CDN
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    jQuery sticky menu
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    
    jQuery easing
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    Main Script
    <script src="js/main.js"></script> -->
  </body>
</html>