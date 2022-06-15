<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html>
<html lang="en">

<head>
    <style>
        
        .close, .close1{
            position:absolute;
            top:15px;
            right:20px;
            font-size:42px;
            transform: rotate(45deg);
            cursor:pointer;
        }
        .modalLoginReg, .modalLoginReg1, .coupon, .events{
            width:100%;
            height:100%;
            background-color: rgba(0,0,0,0.7);
            position: fixed;
            z-index: 1;
            top:0;
            justify-content: center;
            align-items: center;
            display: none;
            overflow: auto;
            color: black;
        }
        #navbarNav .nav-link{
            cursor: pointer;
        }
        .col{
            color: #3467eb;
        }
        .form-control{
            color: black;
        }
        .login{
            background-color: rgba(255, 255, 255, 1);
            width: 30%;
            position: relative;
            border: 1px solid rgb(227, 227, 227);
            border-radius: 10px;
            padding: 2%;
            padding-right: 3%;
            padding-left: 3%;
            box-shadow: 2px 5px 20px 1px #00000032;
            -webkit-animation-name: animatetop;
            -webkit-animation-duration: 0.4s;
            animation-name: animatetop;
            animation-duration: 0.4s
        }
        /* Add Animation */
        @-webkit-keyframes animatetop {
        from {top:-300px; opacity:0} 
        to {top:0; opacity:1}
        }

        @keyframes animatetop {
        from {top:-300px; opacity:0}
        to {top:0; opacity:1}
        }
        h3{
            text-align: center;
        }
        .mb-4{
            width: 100%;
        }
        .login input[type="submit"]{
            border-radius: 3px;
        }
        .loginAdmin{
            color: #3467eb;
        }
        .horizontal {
  display: inline;
  float:left;
  padding:10px 5px;
  border:1px solid #dddddd;
  margin-right:5px;
  }
                

    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Dropdown-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

     <!-- MDB -->
     <link
        href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.0.0/mdb.min.css"
        rel="stylesheet"
        />
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600;700;800&family=Roboto:wght@400;900&display=swap"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
        rel="stylesheet"
        />
    <link
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        rel="stylesheet"
        />
    
    <!-- Shopping Cart-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <!-- Responsive meta tag -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap Link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <!-- CSS Link -->
    <link rel="stylesheet" href="<c:url value="/resources/css/styles.css" />">
    <title>ECOMM</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
        integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
        integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <div id="home" class="container px-4 pt-3 pt-md-0">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <a class="navbar-brand" href="#home"><img src="images/Logo.png" width="50" height="50" alt="">
            </a>
            <span class="d-none d-sm-block navbar-brand">Shopping</span>
            <span class="d-block d-sm-none navbar-brand">Shopping</span>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml">
                    <li class="nav-item">
                        <a class="nav-link active" href="#products">Shop All</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"  onclick="events()">Events</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" onclick="coupon()">Coupons</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#category">Categories</a>
                    </li>
                </ul>
            </div>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <div class="container" style="color: black;">
                            <div class="row">
                                <div class="col-6">
                                    <div class="cart">
                                        <label data-toggle="collapse" data-target="#ViewCart">
                                            <i class="fa fa-shopping-cart" aria-hidden="true" style="font-size: 25px;"></i>
                                            <!-- <span class="items-count">7</span> – Items -->
                                        </label> 
                                        <div class="items-list collapse" id="ViewCart">                        
                                            <div class="item">
                                                <div class="row">
                                                    <div class="col-4">
                                                        <div class="item-pic">
                                                            <img src="<c:url value="/resources/assets/1.jpg" />" class="img-fluid" alt="product">
                                                        </div>
                                                        </div>
                                                        <div class="col-8 pl-0">
                                                            <h6 class="item-name">Call of Duty</h6>
                                                            <p class="item-price">$1199.99</p>
                                                            <span class="item-remove"><i class="fa fa-times" aria-hidden="true"></i></span>
                                                        </div>                           
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="row">
                                                    <div class="col-4">
                                                        <div class="item-pic">
                                                            <img src="assets/Mini/2.jpg" class="img-fluid" alt="product">
                                                        </div>
                                                    </div>
                                                    <div class="col-8 pl-0">
                                                        <h6 class="item-name">Item Name</h6>
                                                        <p class="item-price">$50</p>
                                                        <span class="item-remove"><i class="fa fa-times" aria-hidden="true"></i></span>
                                                    </div>                           
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="row">
                                                    <div class="col-4">
                                                        <div class="item-pic">
                                                            <img src="assets/Mini/3.jpg" class="img-fluid" alt="product">
                                                        </div>
                                                    </div>
                                                    <div class="col-8 pl-0">
                                                        <h6 class="item-name">Valorant the Rising</h6>
                                                        <p class="item-price">$1120.19</p>
                                                        <span class="item-remove"><i class="fa fa-times" aria-hidden="true"></i></span>
                                                    </div>                           
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="row">
                                                    <div class="col-4">
                                                        <div class="item-pic">
                                                            <img src="assets/Mini/4.jpg" class="img-fluid" alt="product">
                                                        </div>
                                                    </div>
                                                    <div class="col-8 pl-0">
                                                        <h6 class="item-name">Valorant</h6>
                                                        <p class="item-price">$1212.89</p>
                                                        <span class="item-remove"><i class="fa fa-times" aria-hidden="true"></i></span>
                                                    </div>                           
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="row">
                                                    <div class="col-4">
                                                        <div class="item-pic">
                                                            <img src="assets/Mini/5.jpg" class="img-fluid" alt="product">
                                                        </div>
                                                    </div>
                                                    <div class="col-8 pl-0">
                                                        <h6 class="item-name">CS: Go </h6>
                                                        <p class="item-price">$910.69</p>
                                                        <span class="item-remove"><i class="fa fa-times" aria-hidden="true"></i></span>
                                                    </div>                           
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="row">
                                                    <div class="col-4">
                                                        <div class="item-pic">
                                                            <img src="assets/Mini/6.jpg" class="img-fluid" alt="product">
                                                        </div>
                                                    </div>
                                                    <div class="col-8 pl-0">
                                                        <h6 class="item-name">One Piece</h6>
                                                        <p class="item-price">$819.59</p>
                                                        <span class="item-remove"><i class="fa fa-times" aria-hidden="true"></i></span>
                                                    </div>                           
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="view-cart">
                                                    <span class="close-cart" data-toggle="collapse" onclick="modalClose()">Close</span>
                                                    <a href="user-checkout.html">View Cart</a>                                                     
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    <script>
                    $(".item-remove").click(function(event) {
                        event.preventDefault();
                        $(this).parents('.item').remove();
                    });
                    </script> 
                    </li>
                    <li class="nav-item">
                        <div class="dropdown">
                        <i class="fa fa-bars"  aria-hidden="true" style="font-size:25px"></i>
                        <div class="dropdown-content">
                            <a href="#">Profile</a>
                            <a href="user-checkout.html">View Cart</a>
                            <a href="Login_Page.html">Logout</a>
                        </div>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
       
    </div>
    <section class="background-slider" style="margin-top: -130px;">
        <div>
            <!-- <h2>Play to win, but enjoy the fun.</h2> -->
        </div>
    </section>

    <script>
        function changeBg(){

            const images = [
            'url("assets/1.jpg")',
            'url("assets/2.jpg")',
            'url("assets/3.jpg")',
            'url("assets/4.jpg")',
            'url("assets/5.jpg")',
            'url("assets/6.jpg")',
            'url("assets/7.jpg")',
            ];

            const section = document.querySelector('.background-slider');
            const bg = images[Math.floor(Math.random() * images.length)];
            section.style.backgroundImage = bg;
        }

        setInterval(changeBg, 1500);

    </script>
    <!-- <div id="" class="">
        <div class="row ">
            <div class="col-lg-6 title mt-2 mb-5 ">
                <h1 class="d-none d-sm-block big-heading mb-2">Shop Now!</h1>
                <h1 class="d-block d-sm-none big-heading mb-2">Shop Now!</h1>
                <p class="d-none d-sm-block subtitle mb-4">We <span>offer great</span> values</p>
                <p class="d-block d-sm-none subtitle mb-4"></p>
                <a href="#products"><button type="button"
                        class="title-button btn btn-lg rounded-pill">Shop</button></a>
            </div>
            <div class="col-lg-6 d-md-flex justify-content-center title-image ">
                <img width="700" class="img-fluid home-image d-none d-sm-block" src="http://clipart-library.com/images_k/transparent-png-online/transparent-png-online-21.png" alt="">
            </div>
        </div>
    </div> -->


    <!-- Products -->
    <section id="products">
        <div class="owl-carousel owl-theme">
            <div class="item"><h4>1</h4></div>
            <div class="item"><h4>2</h4></div>
            <div class="item"><h4>3</h4></div>
            <div class="item"><h4>4</h4></div>
            <div class="item"><h4>5</h4></div>
            <div class="item"><h4>6</h4></div>
            <div class="item"><h4>7</h4></div>
            <div class="item"><h4>8</h4></div>
            <div class="item"><h4>9</h4></div>
            <div class="item"><h4>10</h4></div>
            <div class="item"><h4>11</h4></div>
            <div class="item"><h4>12</h4></div>
        </div>
        
         <!-- HOT HOTHOTHOTHOTHOTHOTHOTHOTHOHTOHOTHOTHOHTOHTOHTOHTOHT-->
		
        <div class="container px-4" id="container">
            <h1 class="padding-t pt-5 pt-md-0 products-heading text-center">Products</h1>
            <h5 class="text-center text-secondary">New Release</h5>
            <div class="row mb-5 mt-3">
            
              <!-- HOT HOTHOTHOTHOTHOTHOTHOTHOTHOHTOHOTHOTHOHTOHTOHTOHTOHT-->
            
              <c:forEach var="product" items="${allproducts}">
                <div class="products-column col-md-3 p-3" onclick="modalProduct()" style="cursor:pointer">
                    <div class="card">
                    <!-- Image here IMAGE -->
                        <img src="<c:url value="/resources/images/Far-Cry-6.jpg" />" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h3 class="card-title font-weight-bold">${product.productname}</h3>
                            <p class="card-text text-secondary">$ ${product.pprice}</p> 
                            <p class="card-text text-secondary">Stocks ${product.QOH}</p> 
                            <br />
                            <div class = "rating d-flex mt-1">
                                <span>
                                    <i class = "fa fa-star"></i> 
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                            </div>
                
                            <div class="d-flex justify-content-end">
                                <a href="" target="_blank"
                                    class="products-button text-white mt-3 mt-md-0"><i
                                        class="fa fa-cart-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach> 
    </section>
  <!-- HOT HOTHOTHOTHOTHOTHOTHOTHOTHOHTOHOTHOTHOHTOHTOHTOHTOHT-->
    
  
    <section>
        <div class="hot">
            <div  class="vampire">  
            </div>
            
        </div>
    </section>

    <section id="products">
        <div class="owl-carousel owl-theme">
            <div class="item"><h4>1</h4></div>
            <div class="item"><h4>2</h4></div>
            <div class="item"><h4>3</h4></div>
            <div class="item"><h4>4</h4></div>
            <div class="item"><h4>5</h4></div>
            <div class="item"><h4>6</h4></div>
            <div class="item"><h4>7</h4></div>
            <div class="item"><h4>8</h4></div>
            <div class="item"><h4>9</h4></div>
            <div class="item"><h4>10</h4></div>
            <div class="item"><h4>11</h4></div>
            <div class="item"><h4>12</h4></div>
        </div>

        <div class="container px-4" id="container">
            <h1 class="padding-t pt-5 pt-md-0 products-heading text-center" style="font-style: italic;">Popular Right Now</h1>
            <h5 class="text-center text-secondary"></h5>
            <div class="row mb-5 mt-3">
                <div class="products-column col-md-3 p-3" onclick="modalProduct()" style="cursor:pointer">
                    <div class="card">
                        <img src="images/gotg.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h3 class="card-title font-weight-bold">Guardians of the Galaxy</h3>
                            <p class="card-text text-secondary">P 2899.99</p>
                            <br />
                            <div class = "rating d-flex mt-1">
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                            </div>
                
                            <div class="d-flex justify-content-end">
                                <a href="" target="_blank"
                                    class="products-button text-white mt-3 mt-md-0"><i
                                        class="fa fa-cart-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="products-column col-md-3 p-3" onclick="modalProduct()" style="cursor:pointer">
                    <div class="card">
                        <img src="images/neo.jpg" class="card-img-top" alt="...">
                        <div class="card-body d-flex flex-column h-100">
                            <h3 class=" card-title font-weight-bold">NEO: The World Ends with You</h3>
                            <p class="flex-grow-1 card-text text-secondary">P 2899.99</p>
                                <div class = "rating d-flex mt-1">
                                    <span>
                                        <i class = "fa fa-star"></i>
                                    </span>
                                    <span>
                                        <i class = "fa fa-star"></i>
                                    </span>
                                    <span>
                                        <i class = "fa fa-star"></i>
                                    </span>
                                    <span>
                                        <i class = "fa fa-star"></i>
                                    </span>
                                    <span>
                                        <i class = "fa fa-star"></i>
                                    </span>
                                </div>
                            
                            
                            <div class="d-flex justify-content-end">
                                <a href="" target="_blank"
                                    class="products-button text-white mt-3 mt-md-0"><i
                                        class="fa fa-cart-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="products-column col-md-3 p-3" onclick="modalProduct()" style="cursor:pointer">
                    <div class="card">
                        <img src="images/gotham.jpg" class="card-img-top" alt="...">
                        <div class="card-body d-flex flex-column h-100">
                            <h3 class=" card-title font-weight-bold">Gotham Knights</h3>
                            <p class="flex-grow-1 card-text text-secondary">P 2499.99
                            </p>
                            <div class = "rating d-flex mt-1">
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                            </div>

                            <div class="d-flex justify-content-end">
                                <a href="" target="_blank"
                                    class="products-button text-white mt-3 mt-md-0"><i
                                        class="fa fa-cart-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="products-column col-md-3 p-3" onclick="modalProduct()" style="cursor:pointer">
                    <div class="card">
                        <img src="images/kof.jpg" class="card-img-top" alt="...">
                        <div class="card-body d-flex flex-column h-100">
                            <h3 class=" card-title font-weight-bold">King of Fighters XV</h3>
                            <p class="flex-grow-1 card-text text-secondary">P 1999.99
                            </p>
                            <div class = "rating d-flex mt-1">
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                            </div>

                            <div class="d-flex justify-content-end">
                                <a href="" target="_blank"
                                    class="products-button text-white mt-3 mt-md-0"><i
                                        class="fa fa-cart-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="products-column col-md-3 p-3" onclick="modalProduct()" style="cursor:pointer">
                    <div class="card">
                        <img src="images/vampire.jpg" class="card-img-top" alt="...">
                        <div class="card-body d-flex flex-column h-100">
                            <h3 class=" card-title font-weight-bold">Vampire: The Masquerade</h3>
                            <p class="flex-grow-1 card-text text-secondary">P 1579.99
                            </p>
                            <div class = "rating d-flex mt-1">
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                            </div>

                            <div class="d-flex justify-content-end">
                                <a href="" target="_blank"
                                    class="products-button text-white mt-3 mt-md-0"><i
                                        class="fa fa-cart-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="products-column col-md-3 p-3" onclick="modalProduct()" style="cursor:pointer">
                    <div class="card">
                        <img src="images/escape.jpg" class="card-img-top" alt="...">
                        <div class="card-body d-flex flex-column h-100">
                            <h3 class=" card-title font-weight-bold">The Escapist 2</h3>
                            <p class="flex-grow-1 card-text text-secondary">P 649.99
                            </p>
                            <div class = "rating d-flex mt-1">
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                            </div>

                            <div class="d-flex justify-content-end">
                                <a href="" target="_blank"
                                    class="products-button text-white mt-3 mt-md-0"><i
                                        class="fa fa-cart-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="products-column col-md-3 p-3" onclick="modalProduct()" style="cursor:pointer">
                    <div class="card">
                        <img src="images/sakuna.jpg" class="card-img-top" alt="...">
                        <div class="card-body d-flex flex-column h-100">
                            <h3 class=" card-title font-weight-bold">Sakuna: Of Rice and Ruin</h3>
                            <p class="flex-grow-1 card-text text-secondary">P 649.99
                            </p>
                            <div class = "rating d-flex mt-1">
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                            </div>

                            <div class="d-flex justify-content-end">
                                <a href="" target="_blank"
                                    class="products-button text-white mt-3 mt-md-0"><i
                                        class="fa fa-cart-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="products-column col-md-3 p-3" onclick="modalProduct()" style="cursor:pointer">
                    <div class="card">
                        <img src="images/genshin.jpg" class="card-img-top" alt="...">
                        <div class="card-body d-flex flex-column h-100">
                            <h3 class=" card-title font-weight-bold">Genshin Impact</h3>
                            <p class="flex-grow-1 card-text text-secondary">Free
                            </p>
                            <div class = "rating d-flex mt-1">
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                            </div>

                            <div class="d-flex justify-content-end">
                                <a href="" target="_blank"
                                    class="products-button text-white mt-3 mt-md-0"><i
                                        class="fa fa-cart-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Most Played Games -->
    <section>
        <div  class="most-played">
            <div  class="vampire">
                    <h1>Trigon: Space Story</h1>
                    <button class="view-more">View More</button>
                    <span style="font-weight:bolder">&nbsp;$34.91</span>
            </div>
            
        </div>
    </section>

    <!-- Gamers Review -->
    <section id="products">

        <div class="container px-4" id="container">
            <h1 class="padding-t pt-5 pt-md-0 products-heading text-center">Gamers Review</h1>
            <div class="row mb-5 mt-3">
                <div class="products-column col-md-3 p-3" >
                    <div class="card">
                        <img src="assets/Gamers Review Pic/Miracle.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h3 class="card-title font-weight-bold" style="text-align: left;">Miracle</h3>
                            <p class="card-text text-secondary">I really want this game tried buying it put my payment method was declined and i know i have enough on my card. I wish i knew why my payment method was...</p>
                        </div>
                    </div>
                </div>

                <div class="products-column col-md-3 p-3">
                    <div class="card">
                        <img src="assets/Gamers Review Pic/Dendi.jpg" class="card-img-top" alt="...">
                        <div class="card-body d-flex flex-column h-100">
                            <h3 class=" card-title font-weight-bold" style="text-align: left;">Dendi</h3>
                            <p class="flex-grow-1 card-text text-secondary">Like it a lot , easy to buy , legit , instant delivery , all game requirements listed below , description of the game below , easy payment. game in fun to play ,...</p>
                        </div>
                    </div>
                </div>

                <div class="products-column col-md-3 p-3">
                    <div class="card">
                        <img src="assets/Gamers Review Pic/Yaphets.jpeg" class="card-img-top" alt="...">
                        <div class="card-body d-flex flex-column h-100">
                            <h3 class=" card-title font-weight-bold" style="text-align: left;">YaphetS</h3>
                            <p class="flex-grow-1 card-text text-secondary">One word incredible. This game saved my mother from cancer and saved my right testicle going to the shredder . After having that experience Im a new man and am living my life very well everything...
                            </p>
                        </div>
                    </div>
                </div>

                <div class="products-column col-md-3 p-3">
                    <div class="card">
                        <img src="assets/Gamers Review Pic/Abed.jpg" class="card-img-top" alt="...">
                        <div class="card-body d-flex flex-column h-100">
                            <h3 class=" card-title font-weight-bold" style="text-align: left;">Abed</h3>
                            <p class="flex-grow-1 card-text text-secondary"> I really want this game tried buying it put my payment method was declined and i know i have enough on my card. I wish i knew why my payment method was...
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Categories -->
    <section id="products"></section>

        <div class="container px-4" id="container">
            <h1 id="category" class="padding-t pt-5 pt-md-0 products-heading text-center">Categories</h1>
            <div id="category">
                <div class="row">
                    <div class="column">
                      <a href="">Action</a>
                    </div>
                    <div class="column">
                     <a href="">Adventure</a>
                    </div>
                    <div class="column">
                     <a href="">Arcade</a>
                    </div>
                    <div class="column">
                        <a href="">Beat'em all</a>
                    </div>
                    <div class="column">
                        <a href="">Cooperation</a>
                    </div>
                    <div class="column">
                        <a href="">Early Access</a>
                    </div>
                    <div class="column">
                        <a href="">FPS</a>
                    </div>
                    <div class="column">
                        <a href="">Fighting</a>
                    </div>
                    <div class="column">
                        <a href="">Free to Play</a>
                    </div>
                    <div class="column">
                        <a href="">Indies</a>
                    </div>
                    <div class="column">
                        <a href="">Local Co-op</a>
                    </div>
                    <div class="column">
                        <a href="">MMO</a>
                    </div>
                    <div class="column">
                        <a href="">Management</a>
                    </div>
                    <div class="column">
                        <a href="">Multiplayer</a>
                    </div>
                    <div class="column">
                        <a href="">Online Co-op</a>
                    </div>
                    <div class="column">
                        <a href="">Online PVP</a>
                    </div>
                    <div class="column">
                        <a href="">Platformer</a>
                    </div>
                    <div class="column">
                        <a href="">RPG</a>
                    </div>
                    <div class="column">
                        <a href="">Racing</a>
                    </div>
                    <div class="column">
                        <a href="">Simulation</a>
                    </div>
                    <div class="column">
                        <a href="">Single Player</a>
                    </div>
                    <div class="column">
                        <a href="">Sports</a>
                    </div>
                    <div class="column">
                        <a href="">Strategy</a>
                    </div>
                    <div class="column">
                        <a href="">VR</a>
                    </div>
                    <div class="column">
                        <a href="">Wargame</a>
                    </div>
                  </div>
            </div>
        </div>


    <!-- Contact -->
    <section id="contact">
        <div class="container px-4">
            <h1 class="text-center contact-heading padding-t pt-5 pt-md-0">Contact Us!</h1>
            
            <div class="row padding-b pb-3">

                <div class="col-lg-6 order-2 order-lg-1">
                    <div class="container line mb-4 mb-lg-0"></div>
                    <div class="mb-3">
                        <i class="fas fa-phone-alt fa-2x d-inline-block align-top mt-2 mr-3"></i>
                        <div class="d-inline-block">
                            <h4>+639123456789</h4>
                            <p class="contact-detail"></p>
                        </div>
                    </div>
                    <div class="mb-3">
                        <i class="fas fa-envelope fa-2x d-inline-block align-top mt-2 mr-3"></i>
                        <div class="d-inline-block">
                            <h4>games_games@games.com</h4>
                            <p class="contact-detail"></p>
                        </div>
                    </div>
                    <div class="mb-3">
                        <i class="fas fa-map-marker-alt fa-2x d-inline-block align-top mt-2 mr-3"></i>
                        <div class="d-inline-block">
                            <h4>McKinley Hill Cyberpark, Taguig</h4>
                            <p class="contact-detail"></p>
                        </div>
                    </div>

                </div>
                <div class="contact-form col-lg-6 order-1">

                    <form action="mailto:" method="post" enctype="text/plain">
                        <div class="row">
                            <div class="col-md-6 form-group first-name-box required">
                                <!-- <label for="firstName"></label> -->
                                <input type="text" class="form-control form-control-lg input mb-3"
                                    placeholder="First name">
                            </div>
                            <div class="col-md-6 form-group last-name-box">
                                <!-- <label for="lastName"></label> -->
                                <input type="text" class="form-control form-control-lg input mb-3"
                                    placeholder="Last name">
                            </div>
                        </div>
                        <div class="form-group required">
                            <!-- <label for="email"></label> -->
                            <input type="email" class="form-control form-control-lg input mb-3" id="email"
                                placeholder="Email Address">
                        </div>
                        <div class="form-group required">
                            <!-- <label for="textArea"></label> -->
                            <textarea class="form-control form-control-lg input mb-3" id="textArea" rows="5"
                                placeholder="Message..."></textarea>
                        </div>
                        <button type="submit" class="btn btn-dark btn-lg contact-button mb-4">Send
                            Message</button>
                    </form>
                </div>
            </div>
        </div>

    </section>



    <!-- Footer -->
    <footer id="footer">


        <div class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 text-center d-lg-flex justify-content-end align-items-center p-2">
                        <h3 class="d-inline-block footer-text px-2"><a href="#home">Home</a></h3>
                        <p class="d-inline-block footer-text px-2">•</p>
                        <h3 class="d-inline-block footer-text px-2"><a href="#products">Shop</a></h3>
                        <p class="d-inline-block footer-text px-2">•</p>
                        <h3 class="d-inline-block footer-text px-2"><a href="#">Categories</a>
                        </h3>
                        <p class="d-inline-block footer-text px-2">•</p>
                        <h3 class="d-inline-block footer-text footer-contact px-2"><a href="#contact">Contact</a></h3>
                        <!-- <p class="d-inline-block pipe p-3">|</p> -->
                    </div>
                    <div class="col-lg-5 text-center d-lg-flex justify-content-start align-items-center p-4">
                        <a href="" target="_blank"><i
                                class="fab fa-twitter fa-2x footer-icon px-3"></i></a>
                        <a href="" target="_blank"> <i
                                class="fab fa-instagram fa-2x footer-icon px-3"></i></a>
                        <a href="" target="_blank"><i
                                class="fab fa-facebook fa-2x footer-icon px-3"></i></a>
                    </div>
                </div>
            </div>

            <!-- Login PopUp Modal-->
            <div class="modalLoginReg">
                <div class ="login">
                    <div class="close" onClick="modalClose()">+</div>
                    <form>
                        <!-- Email input -->
                        <h3>Sign in </h2>
                        </br>
                        <div class="form-outline mb-4">
                        <input style="color: black" type="email" id="form2Example1" class="form-control" />
                        <label class="form-label" for="form2Example1">Email address</label>
                        </div>
                    
                        <!-- Password input -->
                        <div class="form-outline mb-4">
                        <input style="color: black"  type="password" id="form2Example2" class="form-control" />
                        <label class="form-label" for="form2Example2">Password</label>
                        </div>
                        
                        <!-- 2 column grid layout for inline styling -->
                        <div class="row mb-4">
                        <div class="col d-flex justify-content-center">
                            <!-- Checkbox -->
                            <div class="form-check">
                            <!--<input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />--> 
                            <!--<label class="form-check-label" for="form2Example31"> Remember me </label>--> 
                            </div>
                        </div>
                            
                        <div class="col">
                            <!-- Simple link -->
                            <a href="#!">Forgot password?</a>
                        </div>
                        </div>
                    
                        <!-- Submit button -->
                        <input type="submit" class="btn btn-primary btn-block mb-4" value="Sign in"/>
                        <span close="signas">Sign in as an</span> <a href="../admin/login.html" class="loginAdmin">Admin?</a>
                    </form>
                    </div>
              </div>

      <!-- Coupon PopUp Modal-->
      <div class="coupon">
        <div class ="login1">
            <div class="close" onClick="modalClose()">+</div>
            <div>
                <h3>Coupons </h2>
                    <br />
                <div class="hl"></div>
                <br />
                <!-- Coupon Card-->
                <div class="coupon-card">
                    <div class="sale">
                        <p>20<span>%</span></p>
                    </div>
                    <div class="vl"></div>
                    <div class="details">
                        <p>Christmas Sale</p>
                        <p>Valid Until: January 3, 2023</p>
                    </div>
                </div>
                <div class="coupon-card">
                    <div class="sale">
                        <p>15<span>%</span></p>
                    </div>
                    <div class="vl"></div>
                    <div class="details">
                        <p>Halloween Sale</p>
                        <p>Valid Until: November 30, 2022</p>
                    </div>
                </div>
                <div class="coupon-card">
                    <div class="sale">
                        <p>30<span>%</span></p>
                    </div>
                    <div class="vl"></div>
                    <div class="details">
                        <p>Black Friday Sale</p>
                        <p>Valid Until: January 3, 2023</p>
                    </div>
                </div>
                <div class="coupon-card">
                    <div class="sale">
                        <p>25<span>%</span></p>
                    </div>
                    <div class="vl"></div>
                    <div class="details">
                        <p>Summer Sale</p>
                        <p>Valid Until: August 1, 2023</p>
                    </div>
                </div>
                <div class="coupon-card">
                    <div class="sale">
                        <p>10<span>%</span></p>
                    </div>
                    <div class="vl"></div>
                    <div class="details">
                        <p>Winter Sale</p>
                        <p>Valid Until: February 3, 2023</p>
                    </div>
                </div>
                <div class="coupon-card">
                    <div class="sale">
                        <p>50<span>%</span></p>
                    </div>
                    <div class="vl"></div>
                    <div class="details">
                        <p>Buy 1 Take Sale</p>
                        <p>Valid Until: January 3, 2023</p>
                    </div>
                 </div>
            </div>
      </div>
    </div>
    <style>

        .title-event p{
            cursor: pointer;
            font-weight: 700;
        }
        .title-event p:hover{
            text-decoration: none;
            opacity: .7;
        }
    </style>
    <div class="events">
        <div class ="login1">
            <div class="close" onClick="modalClose()">+</div>
            <div>
                <h3>Events </h2>
                    <br />
                <div class="hl"></div>
                <div class="title-event" style="margin-top: 10px;justify-content: center;"> 
                    <p style="display: inline-block;padding-right: 10%;color: rgb(195, 16, 16);" onclick="ongoing()" class="p2">Ongoing Events </p>
                    <p style="display: inline-block" onclick="upcoming()" class="p1">Upcoming Events </p>
                   
                </div>
                <br />
                <div class="upcoming" style="display: none;">
                    <div class="coupon-card">
                        <div class="sale">
                            <p>20<span>%</span></p>
                        </div>
                        <div class="vl"></div>
                        <div class="details">
                            <p>Christmas Sale</p>
                            <p>Starts: December 24, 2022</p>
                        </div>
                    </div>
                    <div class="coupon-card">
                        <div class="sale">
                            <p>15<span>%</span></p>
                        </div>
                        <div class="vl"></div>
                        <div class="details">
                            <p>Halloween Sale</p>
                            <p>Starts: November 1, 2022</p>
                        </div>
                    </div>
                    <div class="coupon-card">
                        <div class="sale">
                            <p>30<span>%</span></p>
                        </div>
                        <div class="vl"></div>
                        <div class="details">
                            <p>New Year Sale</p>
                            <p>Starts: December 30, 2022</p>
                        </div>
                    </div>
                    <div class="coupon-card">
                        <div class="sale">
                            <p>10<span>%</span></p>
                        </div>
                        <div class="vl"></div>
                        <div class="details">
                            <p>Winter Sale</p>
                            <p>Starts: September 1, 2022</p>
                        </div>
                    </div>
                </div>
                <!-- Coupon Card-->
                <div class="ongoing">
                    <div class="coupon-card">
                        <div class="sale">
                            <p>25<span>%</span></p>
                        </div>
                        <div class="vl"></div>
                        <div class="details">
                            <p>Summer Sale</p>
                            <p>Valid Until: August 1, 2023</p>
                        </div>
                    </div>
                    <div class="coupon-card">
                        <div class="sale">
                            <p>50<span>%</span></p>
                        </div>
                        <div class="vl"></div>
                        <div class="details">
                            <p>Buy 1 Take Sale</p>
                            <p>Valid Until: January 3, 2023</p>
                        </div>
                     </div>
                </div>
                
            </div>
      </div>
    </div>

      <div class="productModal" >
        <div class ="product-content">
            <h2 style="font-size: 3em;font-weight: 700;">Far Cry 6</h2>
            <div class="close" onClick="modalClose()"><span style="color:white;">+</span></div>
            <div class="row">
                  <div class="column3" >
                      <div><img id="myImage" src="assets/Far Cry 6/Far-Cry1.jpg" /> </div>
                      <div class="column2" >
                        <img src="assets/Far Cry 6/Mini/Far-Cry2.jpg" onclick="document.getElementById('myImage').src='assets/Far Cry 6/Far-Cry2.jpg'" />
                      </div>
                      <div class="column2" >
                        <img src="assets/Far Cry 6/Mini/Far-Cry3.jpg" onclick="document.getElementById('myImage').src='assets/Far Cry 6/Far-Cry3.jpg'"/>
                      </div>
                      <div class="column2" >
                        <img src="assets/Far Cry 6/Mini/Far-Cry4.jpg" onclick="document.getElementById('myImage').src='assets/Far Cry 6/Far-Cry4.jpg'"/>
                      </div>
                      <div class="column2" >
                        <img src="assets/Far Cry 6/Mini/Far-Cry5.jpg" onclick="document.getElementById('myImage').src='assets/Far Cry 6/Far-Cry5.jpeg'"/>
                      </div>
                      <div class="column2" >
                        <img src="assets/Far Cry 6/Mini/Far-Cry6.jpg" onclick="document.getElementById('myImage').src='assets/Far Cry 6/Far-Cry6.jpg'"/>
                      </div>
                  </div>
              <div class="column1" >
                  <img src="https://cdn2.unrealengine.com/fc6-logo-400x150-7808789f6a13.png?h=270&resize=1&w=480">
                <h2 style="color:rgb(216, 3, 3);">P 2749.99</h2>
                  <p style="color: rgb(141, 141, 141)">Genres <span style="float:right;color:white">Action, Shooting</span></p>
                  <p style="color: rgb(141, 141, 141)">Developer <span style="float:right;color:white">Ubisoft</span></p>
                  <p style="color: rgb(141, 141, 141)">Publish Date <span style="float:right;color:white">10/07/21</span></p>
                      <hr />
                <br />
                <span>Qty: &nbsp</span><input type="number" value="1"/>
                <br />
                <br />
                <button class="buy" onclick="modalClose()">BUY NOW</button>
                <button class="add" onclick="modalClose()">ADD TO CART</button>
                <br />
                <br />
                <h4>Ratings: </h4>
                <div class = "rating d-flex mt-1">
                    <span>
                        <i class = "fa fa-star"></i>
                    </span>
                    <span>
                        <i class = "fa fa-star"></i>
                    </span>
                    <span>
                        <i class = "fa fa-star"></i>
                    </span>
                    <span>
                        <i class = "fa fa-star"></i>
                    </span>
                    <span>
                        <i class = "fa fa-star"></i>
                    </span>
                </div>
              </div>
              <div >
                  <h3 style="text-align: left;">Game Description:</h3>
                <p>Antón Castillo rose to power on the promise of restoring the once-prosperous island nation of Yara back to its former glory and plans to forge his vision of paradise by any means necessary. With his 13-year-old son Diego reluctantly following in his father’s bloody footsteps, Antón has the future of Yara clenched tightly in his hands.</p>
              </div>
            </div>
            </div>
      </div>


      <div class="productModal1" >
        <div class ="product-content">
            <h2 style="font-size: 3em;font-weight: 700;">Final Fantasy VII Remake</h2>
            <div class="close" onClick="modalClose()"><span style="color:white;">+</span></div>
            <div class="row">
                  <div class="column3" >
                      <div><img id="myImage1" src="assets/FFVII Remake/FFVII-1.jfif" /> </div>
                      <div class="column2" >
                        <img src="assets/FFVII Remake/FFVII-2.jpg" onclick="document.getElementById('myImage1').src='assets/FFVII Remake/FFVII-2.jpg'" />
                      </div>
                      <div class="column2" >
                        <img src="assets/FFVII Remake/FFVII-3.jpg" onclick="document.getElementById('myImage1').src='assets/FFVII Remake/FFVII-3.jpg'"/>
                      </div>
                      <div class="column2" >
                        <img src="assets/FFVII Remake/FFVII-4.jpg" onclick="document.getElementById('myImage1').src='assets/FFVII Remake/FFVII-4.jpg'"/>
                      </div>
                      <div class="column2" >
                        <img src="assets/FFVII Remake/FFVII-5.jpg" onclick="document.getElementById('myImage1').src='assets/FFVII Remake/FFVII-5.jpg'"/>
                      </div>
                      <div class="column2" >
                        <img src="assets/FFVII Remake/FFVII-7.jpg" onclick="document.getElementById('myImage1').src='assets/FFVII Remake/FFVII-7.jpg'"/>
                      </div>
                  </div>
                  
                  
                  
              <div class="column1" >
                <img src="assets/FFVII Remake/Logo.png" height="120px">
                <h2 style="color:rgb(216, 3, 3);">P 1699.99</h2>
                     <p style="color: rgb(141, 141, 141)">Genres <span style="float:right;color:white">Action, Shooting</span></p>
                     <p style="color: rgb(141, 141, 141)">Developer <span style="float:right;color:white">Ubisoft</span></p>
                     <p style="color: rgb(141, 141, 141)">Publish Date <span style="float:right;color:white">10/07/21</span></p>
                      <hr />
                <br />
                <span>Qty: &nbsp</span><input type="number" value="1"/>
                <br />
                <br />
                <button class="buy" onclick="modalClose()">BUY NOW</button>
                <button class="add" onclick="modalClose()">ADD TO CART</button>
                <br />
                <br />
                <h4>Ratings: </h4>
                <div class = "rating d-flex mt-1">
                    <span>
                        <i class = "fa fa-star"></i>
                    </span>
                    <span>
                        <i class = "fa fa-star"></i>
                    </span>
                    <span>
                        <i class = "fa fa-star"></i>
                    </span>
                    <span>
                        <i class = "fa fa-star"></i>
                    </span>
                    <span>
                        <i class = "fa fa-star"></i>
                    </span>
                </div>
              </div>
              <div >
                  <br />
                  <h3 style="text-align: left;">Game Description:</h3>
                <p>They are coming back to Midgar… Mako Reactors are draining the life energy of the planet. The Shinra Corporation rules over a corrupt surveillance state. A few prosper, the rest are left to rot in the city slums of Midgar. That changes tonight. The elite mercenary and ex-SOLDIER Cloud Strife has been hired by the resistance movement AVALANCHE to fight back. Their mission will change the world forever.</p>
              </div>
            </div>
            </div>
      </div>
            

    </footer>
    <script>

        function modalProduct(){
            document.querySelector('.productModal').style.display ='flex';
        }
        function modalProduct1(){
            document.querySelector('.productModal1').style.display ='flex';
        }
        function ongoing(){
            document.querySelector('.ongoing').style.display ='block';
            document.querySelector('.upcoming').style.display ='none';
            document.querySelector('.p1').style.color = 'black';
            document.querySelector('.p2').style.color ='rgb(195, 16, 16)';
        }
        function upcoming(){
            document.querySelector('.upcoming').style.display ='block';
            document.querySelector('.ongoing').style.display ='none';
            document.querySelector('.p1').style.color = 'rgb(195, 16, 16)';
            document.querySelector('.p2').style.color ='black';
        }
      /*   function modalProduct2(){
            document.querySelector('.productModal2').style.display ='flex';
        } */

        function coupon(){
            document.querySelector('.coupon').style.display ='flex';
        }
        function events(){
            document.querySelector('.events').style.display ='flex';
        }
        
        function modalClose(){
            document.querySelector('.productModal').style.display ='none';
            document.querySelector('.productModal1').style.display ='none';
            document.querySelector('.coupon').style.display ='none';
            document.querySelector('.events').style.display ='none';
            //document.querySelector('.productModal2').style.display ='none';
            document.querySelector('.items-list').style.display ='none';
        }

    </script>


    <!-- Font Awesome -->
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" data-auto-replace-svg="nest"></script>


    <!-- Bootstrap CDN -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>

    <!-- Owl Carousel -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.0.0/mdb.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>
    