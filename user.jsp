

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>User profile</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/lightbox.css">
<!-- BEGIN GLOBAL MANDATORY STYLES -->
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/themes/light.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="assets/plugins/select2/select2_metro.css" />
        <link href="assets/css/pages/login-soft.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    <% Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sos","sos");
    String user=session.getAttribute("username").toString();
    
     PreparedStatement pst = con.prepareStatement("Select * from REG where USERNAME='"+user+"'");
     ResultSet rs = pst.executeQuery(); 
     rs.next();
     out.print(rs.getString(4));
    %>

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
<b><div class="header-nav">
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
								<li  class="active"><a href="user.jsp"><span>User</span></a></li>
								<li><a href="students.jsp"><span>Students</span></a></li>
								<li><a href="contact.jsp"><span>Contact Us</span></a></li>
								<li><a href="logout.jsp"><span>Log Out</span></a></li>
							</ul>
							
						</nav>
                                        </div>
				</nav>
    </div></b>
			<div class="clearfix"> </div>
		
	</div>
<!-- header -->
<div class="content">
    <center><b>
<form class="form-vertical register-form" name="myform" onsubmit="return Allvalidate()" action="update.jsp" method="post">
                    
                   
			<h2>User Profile</h2>
			<p>Your personal details below:</p>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">First Name</label>
				<div class="controls">
					<div class="input-icon centered">
						<i class="icon-font"></i>
                                                <input class="m-wrap placeholder-no-fix" type="text" value=<%=rs.getString(1)%> name="firstname"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Last Name</label>
				<div class="controls">
					<div class="input-icon centered">
						<i class="icon-font"></i>
						<input class="m-wrap placeholder-no-fix" type="text" value=<%=rs.getString(2)%> name="lastname"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Email</label>
				<div class="controls">
					<div class="input-icon centered">
						<i class="icon-envelope"></i>
						<input class="m-wrap placeholder-no-fix" type="text" value=<%=rs.getString(3)%> name="email"/>
					</div>
				</div>
			</div>
			<div class="control-group">
                            <label class="control-label visible-ie8 visible-ie9" >Date of Birth</label>
				<div class="controls">
					<div class="input-icon centered">
						<i class="icon-calendar"></i>
						<input class="m-wrap placeholder-no-fix"  readonly="readonly"name="dob"  type="date" value=<%=rs.getString(4)%> />
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Age</label>
				<div class="controls">
					<div class="input-icon centered">
						<i class="fa fa-history"></i>
						<input class="m-wrap placeholder-no-fix" type="text" readonly="readonly"value=<%=rs.getString(5)%> name="age"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Mobile number</label>
				<div class="controls">
					<div class="input-icon centered">
						<i class="fa fa-phone"></i>
						<input class="m-wrap placeholder-no-fix" type="text" value=<%=rs.getString(6)%> name="mobile"/>
					</div>
				</div>
			</div>
			<p>Edit your profile details below:</p>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9" >Username</label>
				<div class="controls">
					<div class="input-icon centered">
						<i class="icon-user"></i>
						<input class="m-wrap placeholder-no-fix" type="text" autocomplete="off" value=<%=rs.getString(7)%> name="username" readonly="readonly"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<div class="controls">
					<div class="input-icon centered">
						<i class="icon-lock"></i>
						<input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" id="register_password" placeholder="Enter Ur new or OLD password" name="password"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Re-type Your Password</label>
				<div class="controls">
					<div class="input-icon centered">
						<i class="icon-ok"></i>
						<input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" placeholder="Re-type Your Password" name="retype"/>
					</div>
				</div>
			</div>
			<div class="form-actions">
				<button type="submit" id="register-submit-btn" class="btn green pull-center">
				Update <i class="m-icon-swapright m-icon-white"></i>
				</button>            
			</div>
		</form>
        </b>
</center>
</div>
<!-- gallery -->
	<div class="gallery">
		
	</div>
	<!-- //gallery --> 
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
										
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script>
	function Allvalidate()
        {
                var ValidationSummary = "";
                ValidationSummary += NameValidation();
                ValidationSummary += LNameValidation();
                ValidationSummary += AgeValidation();
		ValidationSummary += MobileValidation();
		ValidationSummary += EmailValidation();
		ValidationSummary += UserValidation();
		ValidationSummary += PasswordValidation();
		ValidationSummary += RetypeValidation();
     
        if (ValidationSummary != "")
            {
                alert(ValidationSummary);
                return true;
            }
        else
            {
                
                return true;
            } 
        }
        function NameValidation()
        {
                var firstname = document.myform.firstname.value;
		var val = /^[a-zA-Z]*$/
		 if (firstname == "")
                {
                    return ("Please Enter FirstName" + "\n");
                }
                else if (val.test(firstname))
                {
                    return "";
 
                }
                else
                {
                    return ("FirstName should have only alphabets" + "\n");
                }
		 
		
	}
	function LNameValidation()
        {   
                var lastname = document.myform.lastname.value;
                var val = /^[a-zA-Z]*$/
		if (lastname == "")
                {
                    return ("Please Enter LastName" + "\n");
                }
                else if (val.test(lastname))
                {
                    return "";
 
                }
                else
                {
                    return ("LastName should have only alphabets" + "\n");
                }
		 
		
	}
        function AgeValidation()
        {
		var age = document.myform.age.value;
		var val = /^([0][0-9]|[123456789]|[123456789][0-9]|100)$/
		if (age == "")
                {
                    return ("Please Enter Age" + "\n");
                }
                else if (val.test(age))
                {
                    return "";
 
                }
                else
                {
                    return ("Age should not be 0 or greater than 100" + "\n");
                }
		 
		
        }
		 
        function MobileValidation()
        {
		var mobileno = document.myform.mobile.value;
		var val = /^([7-9]{1}[0-9]{9})$/
		if (mobileno == "")
                {
                    return ("Please Enter Mobileno" + "\n");
                }
                else if (val.test(mobileno))
                {
                    return "";
 
                }
                else
                {
                    return ("Enter Valid Mobile Number" + "\n");
                }
		 
		
        }
		 
	function EmailValidation()
        {
		var emailID = document.myform.email.value;
			
		var val = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
		if (emailID == "")
                {
                    return ("Please Enter EmailID" + "\n");
                }
                else if (val.test(emailID))
                {
                    return "";
 
                }
                else
                {
                    return ("EmailId is not valid!!" + "\n");
                }
		 
		
	}
		 
        function UserValidation()
        {
		
		var username = document.myform.username.value;
		var val = /^[a-zA-Z0-9]+[\.-]?(\w)*$/
		if (username == "")
                {
                    return ("Please Enter Username" + "\n");
                }
                else if (val.test(username))
                {
                    return "";
 
                }
                else
                {
                    return ("Improper Format!!" + "\n");
                }
		 
		
	}
		 
        function PasswordValidation()
        {
		var password = document.myform.password.value;
			
		var val = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*\[\]"\';:_\-<>\., =\+\/\\]).{8,}$/
		if (password == "")
                {
                    return ("Please Enter Password" + "\n");
                }
                else if(password.length<6)
		{
                    return ("Not of appropriate length" + "\n");
                }
		else if (val.test(password))
                {
                            return "";
                }
                else return "";
               
		 
	}
		 
		 
		 
        function RetypeValidation()
        {
		var password = document.myform.password.value;
		var retype = document.myform.retype.value;
			
		if (retype == "")
                {
                    return ("Please Enter Password" + "\n");
                }
                else if (retype.match(password))
                {
                    return "";
 
                }
                else
                {
                    return ("Passwords dont match !!!!" + "\n");
                }
		 
		
        }
		 
		
	</script>
</body>
</html>
