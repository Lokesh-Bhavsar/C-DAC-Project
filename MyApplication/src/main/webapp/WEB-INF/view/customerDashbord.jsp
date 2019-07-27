<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>DashBorad</title>
    <link rel="stylesheet" href="static/css/dashbord.css" >
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
</head>
<body>

<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">Home</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/registration">New Registration</a></li>
					<li><a href="/dashbord">Dashbord</a></li>

				</ul>
			</div>
		</div>
	</div>
<div class="top-nav-bar">
     <div class="search-box">
         <i class="fa fa-bars"></i>
         <i class="fa fa-times"></i>
         <img src="static/dashbordimages/1.jpg" alt="not found" class="logo">
         <input type="text" class="form-control">
         <span class="input-group-text">
             <i class="fa fa-search" aria-hidden="true"></i>

         </span>
     </div>
     <div class="menu-bar">
        <ul>
            <li><a href="#"><i class="fa fa-shopping-basket"></i>Card</a></li>
            <li><a href="/login">Sign In</a></li>
            <li><a href="/registration">Sign Up</a></li>

    
        </ul>
    </div>
     </div>
     <section class="header"><br>
         <div class="side-menu">
             <ul>
                 <li>Category 1<i class="fa fa-angle-right"></i>
                    <ul>
                        <li>Sub Menu-1</li>
                        <li>Sub Menu-1</li>
                        <li>Sub Menu-1</li>
                    </ul>
                </li>
                 <li>Category 2<i class="fa fa-angle-right"></i>
                    <ul>
                            <li>Sub Menu-2</li>
                            <li>Sub Menu-2</li>
                            <li>Sub Menu-2</li>
                    </ul>
                </li>
                 <li>Category 3<i class="fa fa-angle-right"></i>
                    <ul>
                            <li>Sub Menu-3</li>
                            <li>Sub Menu-3</li>
                            <li>Sub Menu-3</li>
                    </ul>
                </li>
             </ul>

         </div>
         <div class="slider">
                <div id="slider" class="space" data-ride="carousel">
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <img src="static/dashbordimages/2.jpg" class="d-block">
                          </div>
                          <div class="carousel-item">
                            <img src="static/dashbordimages/3.jpg" class="d-block">
                          </div>
                          <div class="carousel-item">
                            <img src="static/dashbordimages/4.jpg" class="d-block">
                          </div>
                          <div class="carousel-item">
                                <img src="static/dashbordimages/5.jpg" class="d-block">
                         </div>
                        </div>
                        <ol class="carousel-indicators">
                                <li data-target="#slider" data-slide-to="0" class="active"></li>
                                <li data-target="#slider" data-slide-to="1"></li>
                                <li data-target="#slider" data-slide-to="2"></li>
                                <li data-target="#slider" data-slide-to="3"></li>
                              </ol>
                      </div>
                      
         </div>
     </section>   
     <!---------------------fetured categories------------------------>
     <section class="featured-categories">
       
         <div class="row">
             <div class="col-md-4">
                    <img src="static/dashbordimages/6.jpg">
             </div>
             <div class="col-md-4">
                    <img src="static/dashbordimages/7.jpg">
             </div>
             <div class="col-md-4">
                   <img src="static/dashbordimages/8.jpg">
            </div>
       
         </div>
     </section>
         <!---------------------on sale product---------------------->
<section class="on-sale">
    <div class="container">
        <div class="title-box">
            <h2>On sale</h2>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="product-top">
                    <img src="static/dashbordimages/9.jpg">
                    <div class="overlay-right">
                        <button type="button" class="btn btn-secondary" title="Quick Shop">
                            <i class="fa fa-eye"></i>
                        </button>
                        <button type="button" class="btn btn-secondary" title="Add to Wish List">
                                <i class="fa fa-heart-o"></i>
                        </button>
                        <button  type="button" class="btn btn-secondary" title="Add to Cart">
                               <a href="/registration"> <i class="fa fa-shopping-cart"></i></a>
                        </button>

                    </div>

                </div>
                <div class="product-bottom text-center">
                    <h3>Product Name 1</h3>
                    <h5>$45</h5>

                </div>
                
            </div>

            <div class="col-md-4">
                    <div class="product-top">
                        <img src="static/dashbordimages/10.jpg">
                        <div class="overlay-right">
                            <button type="button" class="btn btn-secondary" title="Quick Shop">
                                <i class="fa fa-eye"></i>
                            </button>
                            <button type="button" class="btn btn-secondary" title="Add to Wish List">
                                    <i class="fa fa-heart-o"></i>
                            </button>
                            <button type="button" class="btn btn-secondary" title="Add to Cart">
                                    <i class="fa fa-shopping-cart"></i>
                            </button>
    
                        </div>
    
                    </div>
                    <div class="product-bottom text-center">
                        <h3>Product Name3</h3>
                        <h5>$35</h5>
    
                    </div>
                    
                </div>
                <div class="col-md-4">
                        <div class="product-top">
                            <img src="static/dashbordimages/11.jpg">
                            <div class="overlay-right">
                                <button type="button" class="btn btn-secondary" title="Quick Shop">
                                    <i class="fa fa-eye"></i>
                                </button>
                                <button type="button" class="btn btn-secondary" title="Add to Wish List">
                                        <i class="fa fa-heart-o"></i>
                                </button>
                                <button type="button" class="btn btn-secondary" title="Add to Cart">
                                        <i class="fa fa-shopping-cart"></i>
                                </button>
        
                            </div>
        
                        </div>
                        <div class="product-bottom text-center">
                            <h3>Product Name 3</h3>
                            <h5>$40</h5>
        
                        </div>
                        
                    </div>
                  

        </div>
    </div>
</section>

</body>
</html>