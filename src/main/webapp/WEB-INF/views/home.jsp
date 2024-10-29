<!doctype html>
<html class="no-js" lang="en">

    <head>
        <!-- meta data -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!--font-family-->
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

		<link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet">
        
        <!-- title of site -->
        <title>ABC Cars</title>

        <!--font-awesome.min.css-->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!--linear icon css-->
        <link rel="stylesheet" href="css/linearicons.css">

        <!--flaticon.css-->
        <link rel="stylesheet" href="css/flaticon.css">

        <!--animate.css-->
        <link rel="stylesheet" href="css/animate.css">

        <!--owl.carousel.css-->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">

        <!--bootstrap.min.css-->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- bootsnav -->
        <link rel="stylesheet" href="css/bootsnav.css">

        <!--style.css-->
        <link rel="stylesheet" href="css/style.css">

        <!--responsive.css-->
        <link rel="stylesheet" href="css/responsive.css">

        
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		
        <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
		<style>
			body {
				background-color: #1c0d342a;
			}
			/* Style for the search form container */
.search-form-container {
    display: flex;
    justify-content: center;
}

/* Style for the search form */
.search-form {
    display: flex;
    align-items: stretch; /* Ensures all child elements match in height */
    width: 60%; /* Default width */
    margin-top: 20px;
    margin-bottom: 20px;
}

/* Style for the search input field */
.search-form .form-control {
    border: 2px solid #ccc;
    border-radius: 5px 0 0 5px; /* Rounded corners on the left only */
    padding: 10px;
    font-size: 16px;
    transition: border-color 0.3s ease;
    flex: 1; /* Allow the input field to grow */
    height: auto; /* Ensures it adjusts with the button height */
}

/* Style for the search input field on focus */
.search-form .form-control:focus {
    border-color: #FFC23C;
    outline: none;
}

/* Style for the search button */
.search-form .btn-primaryy {
    border: none;
    border-radius: 0 5px 5px 0; /* Rounded corners on the right only */
    padding: 10px 20px;
    font-size: 16px;
    background-color: #FFC23C;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s ease;
    display: flex;
    align-items: center; /* Center text vertically */
    justify-content: center; /* Center text horizontally */
    height: auto; /* Adjusts button height to match input */
}

/* Style for the search button hover effect */
.search-form .btn-primaryy:hover {
    background-color: orange;
}

/* Responsive Styles */
@media (max-width: 768px) {
    /* Adjust the search form width for smaller screens */
    .search-form {
        width: 80%; /* Make it wider on smaller screens */
    }

    /* Reduce padding on the search input and button */
    .search-form .form-control,
    .search-form .btn-primaryy {
        padding: 8px; /* Slightly smaller padding */
        font-size: 14px; /* Smaller font size */
    }

    /* Adjust the button size */
    .search-form .btn-primaryy {
        padding: 8px 16px; /* Adjust button padding */
    }
}

@media (max-width: 480px) {
    /* Further adjustments for extra small screens */
    .search-form {
        flex-direction: column; /* Stack elements vertically */
        width: 100%; /* Full width on very small screens */
    }

    .search-form .form-control,
    .search-form .btn-primaryy {
        width: 100%; /* Make input and button full width */
        margin-bottom: 10px; /* Add space between stacked elements */
    }

    .search-form .btn-primaryy {
        margin-bottom: 0; /* Remove bottom margin for the button */
    }
}


		</style>
    </head>
	
	<body>
		<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->
	
		<!--welcome-hero start -->
		<section id="home" class="welcome-hero">

			<!-- top-area Start -->
			<div class="top-area">
				<div class="header-area">
					<!-- Start Navigation -->
				    <nav class="navbar navbar-default bootsnav  navbar-sticky navbar-scrollspy"  data-minus-value-desktop="70" data-minus-value-mobile="55" data-speed="1000">

				        <div class="container">

				            <!-- Start Header Navigation -->
				            <div class="navbar-header">
				                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
				                    <i class="fa fa-bars"></i>
				                </button>
				                <a class="navbar-brand" href="/home">ABC CARS<span></span></a>

				            </div><!--/.navbar-header-->
				            <!-- End Header Navigation -->

				            <!-- Collect the nav links, forms, and other content for toggling -->
				            <div class="collapse navbar-collapse menu-ui-design" id="navbar-menu">
								<ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
									<li class="scroll active"><a href="#home">home</a></li>
									<li class="scroll"><a href="#service">service</a></li>
									<li class="scroll"><a href="#new-cars">new cars</a></li>
									<li class="scroll"><a href="#brand">brands</a></li>
									<li class="scroll"><a href="#contact">contact</a></li>
									<li><a href="/registration" class="register">REGISTER</a></li>
									<li><a href="/loginform" class="login">LOG IN</a></li>
								</ul><!--/.nav -->
							</div><!-- /.navbar-collapse -->							
				        </div><!--/.container-->					
				    </nav><!--/nav-->
				    <!-- End Navigation -->
					<div class="search-form-container">
						<form action="search" method="get" class="search-form">
							<input class="form-control" type="search" placeholder="Search" name="keyword" />
							<button type="submit" class="btn-primaryy">Search</button>
						</form>
					</div>	
				</div><!--/.header-area-->
			    <div class="clearfix"></div>

			</div><!-- /.top-area-->
			<!-- top-area End -->

			<div class="container">
				<div class="welcome-hero-txt">
					<h2>get your desired car in resonable price</h2>
					
				</div>
			</div>

		</section><!--/.welcome-hero-->
		<!--welcome-hero end -->
		<!--service start -->
		<section id="service" class="service">
			<!-- <div class="container"> -->
				<div class="section-header">
					<h2>Services</h2>
				</div>
				<div class="service-content">
					<div class="row">
						<div class="col-md-4 col-sm-6">
							<div class="single-service-item">
								<div class="single-service-icon">
									<i class="flaticon-car"></i>
								</div>
								<h2><a href="#">largest dealership <span> of</span> car</a></h2>
								<p>
									Discover the ultimate destination for car enthusiasts with the largest dealership, offering an extensive range of vehicles to suit every need and preference.								</p>
							</div>
						</div>
						<div class="col-md-4 col-sm-6">
							<div class="single-service-item">
								<div class="single-service-icon">
									<i class="flaticon-car-repair"></i>
								</div>
								<h2><a href="#">unlimited repair warranty</a></h2>
								<p>
									Enjoy peace of mind with our industry-leading unlimited repair warranty, ensuring your vehicle is covered for any unforeseen issues.								</p>
							</div>
						</div>
						<div class="col-md-4 col-sm-6">
							<div class="single-service-item">
								<div class="single-service-icon">
									<i class="flaticon-car-1"></i>
								</div>
								<h2><a href="#">insurance support</a></h2>
								<p>
									Benefit from our comprehensive insurance support services, guiding you through every step of the process to keep you protected on the road.								</p>
							</div>
						</div>
					</div>
				</div>
			</div><!--/.container-->

		</section><!--/.service-->

		<!-- clients-say strat -->
		<section id="clients-say"  class="clients-say">
			<div class="container">
				<div class="section-header">
					<h2>what our clients say</h2>
				</div><!--/.section-header-->
				<div class="row">
					<div class="owl-carousel testimonial-carousel">
						<div class="col-sm-3 col-xs-12">
							<div class="single-testimonial-box">
								<div class="testimonial-description">
									<div class="testimonial-info">
										<div class="testimonial-img">
											<img src="images/clients/c1.png" alt="image of clients person" />
										</div><!--/.testimonial-img-->
									</div><!--/.testimonial-info-->
									<div class="testimonial-comment">
										<p>"I recently purchased a car from this dealership, and the experience was exceptional. The staff were knowledgeable, friendly, and went above and beyond to ensure I found the perfect car. Highly recommended!"</p>
									</div><!--/.testimonial-comment-->
									<div class="testimonial-person">
										<h2><a href="#">tomas lili</a></h2>
										<h4>new york</h4>
									</div><!--/.testimonial-person-->
								</div><!--/.testimonial-description-->
							</div><!--/.single-testimonial-box-->
						</div><!--/.col-->
						<div class="col-sm-3 col-xs-12">
							<div class="single-testimonial-box">
								<div class="testimonial-description">
									<div class="testimonial-info">
										<div class="testimonial-img">
											<img src="images/clients/c2.png" alt="image of clients person" />
										</div><!--/.testimonial-img-->
									</div><!--/.testimonial-info-->
									<div class="testimonial-comment">
										<p>"Fantastic service and a great selection of cars. I was able to test drive multiple models, and the staff provided detailed information about each one. The buying process was smooth and hassle-free. I'm thrilled with my new car!"</p>
									</div><!--/.testimonial-comment-->
									<div class="testimonial-person">
										<h2><a href="#">romi rain</a></h2>
										<h4>london</h4>
									</div><!--/.testimonial-person-->
								</div><!--/.testimonial-description-->
							</div><!--/.single-testimonial-box-->
						</div><!--/.col-->
						<div class="col-sm-3 col-xs-12">
							<div class="single-testimonial-box">
								<div class="testimonial-description">
									<div class="testimonial-info">
										<div class="testimonial-img">
											<img src="images/clients/c3.png" alt="image of clients person" />
										</div><!--/.testimonial-img-->
									</div><!--/.testimonial-info-->
									<div class="testimonial-comment">
										<p>"A seamless experience from start to finish. The team provided excellent customer service, answered all my questions, and helped me find exactly what I was looking for. I couldn't be happier with my purchase!"</p>
									</div><!--/.testimonial-comment-->
									<div class="testimonial-person">
										<h2><a href="#">john doe</a></h2>
										<h4>washington</h4>
									</div><!--/.testimonial-person-->
								</div><!--/.testimonial-description-->
							</div><!--/.single-testimonial-box-->
						</div><!--/.col-->
					</div><!--/.testimonial-carousel-->
				</div><!--/.row-->
			</div><!--/.container-->

		</section><!--/.clients-say-->	
		<!-- clients-say end -->

		
		<!--blog start -->
		<section id="blog" class="blog"></section><!--/.blog-->
		<!--blog end -->

		<!--contact start-->
		<footer id="contact"  class="contact">
			<div class="container">
				<div class="footer-top">
					<div class="row">
						<div class="col-md-3 col-sm-6">
							<div class="single-footer-widget">
								<div class="footer-logo">
									<a href="/home">ABC Cars</a>
								</div>
								<p>
									Ased do eiusm tempor incidi ut labore et dolore magnaian aliqua. Ut enim ad minim veniam.
								</p>
								<div class="footer-contact">
									<p>info@abccars.com</p>
									<p>+1 (885) 2563154554</p>
								</div>
							</div>
						</div>
						<div class="col-md-2 col-sm-6">
							<div class="single-footer-widget">
								<h2>about devloon</h2>
								<ul>
									<li><a href="#">about us</a></li>
									<li><a href="#">career</a></li>
									<li><a href="#">terms <span> of service</span></a></li>
									<li><a href="#">privacy policy</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3 col-xs-12">
							<div class="single-footer-widget">
								<h2>top brands</h2>
								<div class="row">
									<div class="col-md-7 col-xs-6">
										<ul>
											<li><a href="#">BMW</a></li>
											<li><a href="#">lamborghini</a></li>
											<li><a href="#">camaro</a></li>
											<li><a href="#">audi</a></li>
											<li><a href="#">infiniti</a></li>
											<li><a href="#">nissan</a></li>
										</ul>
									</div>
									<div class="col-md-5 col-xs-6">
										<ul>
											<li><a href="#">ferrari</a></li>
											<li><a href="#">porsche</a></li>
											<li><a href="#">land rover</a></li>
											<li><a href="#">aston martin</a></li>
											<li><a href="#">mersedes</a></li>
											<li><a href="#">opel</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-offset-1 col-md-3 col-sm-6">
							<div class="single-footer-widget">
								<h2>news letter</h2>
								<div class="footer-newsletter">
									<p>
										Subscribe to get latest news  update and informations
									</p>
								</div>
								<div class="hm-foot-email">
									<div class="foot-email-box">
										<input type="text" class="form-control" placeholder="Add Email">
									</div><!--/.foot-email-box-->
									<div class="foot-email-subscribe">
										<span><i class="fa fa-arrow-right"></i></span>
									</div><!--/.foot-email-icon-->
								</div><!--/.hm-foot-email-->
							</div>
						</div>
					</div>
				</div>
				<div class="footer-copyright">
					<div class="row">
						
						<div class="col-sm-6">
							<div class="footer-social">
								<a href="#"><i class="fa fa-facebook"></i></a>	
								<a href="#"><i class="fa fa-instagram"></i></a>
								<a href="#"><i class="fa fa-linkedin"></i></a>
								<a href="#"><i class="fa fa-pinterest-p"></i></a>
								<a href="#"><i class="fa fa-behance"></i></a>	
							</div>
						</div>
					</div>
				</div><!--/.footer-copyright-->
			</div><!--/.container-->

			<div id="scroll-Top">
				<div class="return-to-top">
					<i class="fa fa-angle-up " id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
				</div>
				
			</div><!--/.scroll-Top-->
			
        </footer><!--/.contact-->
		<!--contact end-->


		
		<!-- Include all js compiled plugins (below), or include individual files as needed -->

		<script src="js/jquery.js"></script>
        
        <!--modernizr.min.js-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
		
		<!--bootstrap.min.js-->
        <script src="js/bootstrap.min.js"></script>
		
		<!-- bootsnav js -->
		<script src="js/bootsnav.js"></script>

		<!--owl.carousel.js-->
        <script src="js/owl.carousel.min.js"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

        <!--Custom JS-->
        <script src="js/custom.js"></script>
        
    </body>
	
</html>
