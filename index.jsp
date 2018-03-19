

<!DOCTYPE html>
<html lang="en">
<head>
<title>Welcome</title>

<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Andragogy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Oswald:300,400,700&amp;subset=latin-ext" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

  <% response.setHeader("Cache-Control","no-cache"); %>
    <% response.setHeader("Cache-Control","no-store");%>
    <% response.setHeader("Pragma","no-cache");%>
    <% response.setDateHeader("Expires", 0);%>
    
    <% if (session.getAttribute("username")==null){
       response.sendRedirect("../../logandreg/index.html");  
    }%>

</head>
	
<body>    
    <div class="header_address_mail">
		<div class="container">
			<div>
				<h1 align="center" class="fa fa-film" style="font-size: 36px;color:window">BookMyMovie</h1>
			</div>
		</div>
	</div>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3_agile_logo">
                            <br>
				<h1 style="color: #f00;">Welcome <%= session.getAttribute("username") %></h1>
			</div>
			<div class="header-nav">
				<nav class="navbar navbar-default">
					<div class="navbar-header navbar-left">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-12">
							<ul class="nav navbar-nav w3_agile_nav">
								<li class="active"><a href="index.jsp"><span>Home</span></a></li>
								<li><a href="booking.jsp"><span>Book Tickets</span></a></li>
								<li><a href="user.jsp"><span>User</span></a></li>
								<li><a href="students.jsp"><span>Students</span></a></li>
								<li><a href="contact.jsp"><span>Contact Us</span></a></li>
								<li><a href="logout.jsp"><span>Log Out</span></a></li>
							</ul>
							
						</nav>
					</div>
				</nav>
			</div>
			<div class="clearfix"> </div>
		</div>
                     
	</div>
<center> <b><h3  color="red" font-family="Time New Roman">  Movies</h3></center></b>
<!-- header -->
<!-- banner -->
<!-- banner-slider -->
			<div class="banner-slider">
					<div class="slider">
						<div class="callbacks_container">
							<ul class="rslides callbacks callbacks1" id="slider4">
								<li>
									<div class="agileits-banner-info">
										<div class="container" >
										<div class="w3ls-banner-shadow">	
                                                                                    <img src="https://img.youtube.com/vi/spTA7LPKROo/maxresdefault.jpg" alt="user" width="100%"  >
											
                                                                                </div>
										</div>
									</div>
								</li>
								<li>
									<div class="agileits-banner-info agileits-banner-info1">
										<div class="container">
											<div class="w3ls-banner-shadow">
											<img src="https://i.ytimg.com/vi/x_7YlGv9u1g/maxresdefault.jpg" alt="user" width="100%"  >	
											</div>
										</div>
									</div>
								</li>
                                                                <li>
									<div class="agileits-banner-info agileits-banner-info2">
										<div class="container">
											<div class="w3ls-banner-shadow">
											<img src="http://view7media.com/wp-content/uploads/2017/06/vikram-vedha-movie-trailer.jpg" alt="user" width="100%"  >	
											</div>
										</div>
									</div>
								</li>
                                                                <li>
									<div class="agileits-banner-info agileits-banner-info2">
										<div class="container">
											<div class="w3ls-banner-shadow">
											<img src="https://i.ytimg.com/vi/pC2yUlN2kMU/maxresdefault.jpg" alt="user" width="100%"  >	
											</div>
										</div>
									</div>
								</li>
                                                                <li>
									<div class="agileits-banner-info agileits-banner-info2">
										<div class="container">
											<div class="w3ls-banner-shadow">
											<img src="https://tollybeats.com/uploads/posts/posts_1503298829599a850d28386.jpg" alt="user" width="100%"  >	
											</div>
										</div>
									</div>
								</li>
                                                                
								<li>
									<div class="agileits-banner-info agileits-banner-info2">
										<div class="container">
											<div class="w3ls-banner-shadow">
											<img src="https://i.ytimg.com/vi/J_yb8HORges/maxresdefault.jpg" alt="user" width="100%"  >	
											</div>
										</div>
									</div>
								</li>
                                                                <li>
									<div class="agileits-banner-info agileits-banner-info2">
										<div class="container">
											<div class="w3ls-banner-shadow">
											<img src="https://i.ytimg.com/vi/lD8YsdRwP_0/maxresdefault.jpg" alt="user" width="100%"  >	
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="clearfix"> </div>
						<script src="js/responsiveslides.min.js"></script>
						<script>
							// You can also use "$(window).load(function() {"
							$(function () {
							  // Slideshow 4
							  $("#slider4").responsiveSlides({
								auto: true,
								pager:true,
								nav:false,
								speed: 500,
								namespace: "callbacks",
								before: function () {
								  $('.events').append("<li>before event fired.</li>");
								},
								after: function () {
								  $('.events').append("<li>after event fired.</li>");
								}
							  });
						
							});
						 </script>
						<!--banner Slider starts Here-->
					</div>
			</div>
			<!-- //banner-slider -->
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smooth-scrolling -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>