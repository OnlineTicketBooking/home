<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contact us</title>
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
<link rel="stylesheet" href="css/lightbox.css">
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
<!-- header -->
	<div class="header_address_mail">
		<div class="container">
			<div>
				<h1 align="center"  class="fa fa-film" style="font-size: 36px;color:window">BookMyMovie</h1>
			</div>
		</div>
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
								<li><a href="index.jsp"><span>Home</span></a></li>
								<li><a href="booking.jsp"><span>Book Tickets</span></a></li>
								<li><a href="faculty.jsp"><span>Faculty</span></a></li>
								<li> <a href="students.jsp"><span>Students</span></a></li>
								<li class="active"><a href="contact.jsp"><span>Contact Us</span></a></li>
								<li><a href="logout.jsp"><span>Log Out</span></a></li>
							</ul>
							
						</nav>
					</div>
				</nav>
			</div>
			<div class="clearfix"> </div>
<!-- banner1 -->
	<div class="banner1">
	</div>
<!-- //banner1 -->
    <div class="gallery">
	<div class="container"> 
			<div class="w3layouts_header">
				<h2><span>-----Contact Here-----</span></h2>
			</div>
		<div class="gallery-grids">
			<div class="gallery-top-grids">
				<div class="col-sm-3 gallery-grids-left">
					<div class="gallery-grid">
						<a class="example-image-link" href="images/c1.jpg" data-lightbox="roadtrip" data-title="Contact : 987865678">
							<img src="images/c1.jpg" alt="" />
							<div class="w3captn-agileits">
								<h4>BANGLORE</h4>
								<p>click here to zoom</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-sm-3 gallery-grids-left">
					<div class="gallery-grid">
						<a class="example-image-link" href="images/c2.jpg" data-lightbox="roadtrip" data-title="Contact : 7867567654">
							<img src="images/c2.jpg" alt="" />
							<div class="w3captn-agileits">
								<h4>HYDERABAD</h4>
								<p>click here to zoom</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-sm-3 gallery-grids-left">
					<div class="gallery-grid">
						<a class="example-image-link" href="images/c3.jpg" data-lightbox="roadtrip" data-title="Contact : 8978908745">
							<img src="images/c3.jpg" alt="" />
							<div class="w3captn-agileits">
								<h4>COIMBATORE</h4>
								<p>click here to zoom</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-sm-3 gallery-grids-left">
					<div class="gallery-grid">
						<a class="example-image-link" href="images/c4.jpg" data-lightbox="roadtrip" data-title="Contact : 8786545676">
							<img src="images/c4.jpg" alt="" />
							<div class="w3captn-agileits">
								<h4>DELHI</h4>
								<p>click here to zoom</p>
							</div>
						</a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
			<script src="js/lightbox-plus-jquery.min.js"> </script>
		</div>
	</div>
	</div>
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