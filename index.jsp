<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



<!DOCTYPE html>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Movie Ticket Booking Widget Flat Responsive Widget Template :: w3layouts</title>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Movie Ticket Booking Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<link href='//fonts.googleapis.com/css?family=Kotta+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/jquery.seat-charts.js"></script>
</head>
<body>
   
    <% Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sos","sos");
                
                PreparedStatement pst = con.prepareStatement("SELECT SEATS FROM MOVIE ");
                
                ResultSet rs = pst.executeQuery();
                rs.next();
                
               
%>
<div class="content">
	<h1>Movie Ticket Booking Widget</h1>
	<div class="main">
		<h2>Multiplex Theatre Showing Screen 1</h2>
		<div class="demo">
			<div id="seat-map">
				<div class="front">SCREEN</div>					
			</div>
			<div class="booking-details">
				<ul class="book-left">
					<li>Movie </li>
					<li>Time </li>
					<li>Tickets</li>
					<li>Total</li>
					<li>Seats :</li>
				</ul>
				<ul class="book-right">
					<li>: SR Theater</li>
					<li>: March 2, 21:00</li>
					<li>: <span id="counter">0</span></li>
					<li>: <b><i>Rs</i><span id="total">0</span></b></li>
				</ul>
				<div class="clear"></div>
				<ul id="selected-seats" class="scrollbar scrollbar1"></ul>
			
						
				<button class="checkout-button">Book Now</button>	
				<div id="legend"></div>
			</div>
			<div style="clear:both"></div>
	    </div>

			<script type="text/javascript">
				var price = 10; //price
				$(document).ready(function() {
					var $cart = $('#selected-seats'), //Sitting Area
					$counter = $('#counter'), //Votes
					$total = $('#total'); //Total money
					var str="";
					var sc = $('#seat-map').seatCharts({
						map: [  //Seating chart
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'__________',
							'aaaaaaaa__',
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'aaaaaaaaaa',
							'__aaaaaa__'
					],
						naming : {
							top : false,
							getLabel : function (character, row, column) {
								return column;
							}
						},
						legend : { //Definition legend
							node : $('#legend'),
							items : [
								[ 'a', 'available',   'Available' ],
								[ 'a', 'unavailable', 'Sold'],
								[ 'a', 'selected', 'Selected']
							]					
						},
						click:  function () { //Click event
							if (this.status() === 'available') { //optional seat
                                                             var   str=",''"+(this.settings.row+1)+"_"+(this.settings.label)+"''";
                                                           console.log("hi");                                                    
                                         
								$('<li>Row'+(this.settings.row+1)+' Seat'+this.settings.label+'</li>')
                                            

                                                                        .attr('id', 'cart-item-'+this.settings.id)
									.data('seatId', this.settings.id)
									.appendTo($cart);
                                                                
                                                                        
                                                                
                                                                // st=;
                                                            //    System.out.println(this.settings.row+1);
                
                                                              
							        $counter.text(sc.find('selected').length+1);
								$total.text(recalculateTotal(sc)+price);
											
								return 'selected';
                                                               
							} else if (this.status() == 'selected') { //Checked
									//Update Number
									$counter.text(sc.find('selected').length-1);
									//update totalnum
									$total.text(recalculateTotal(sc)-price);
										
									//Delete reservation
									$('#cart-item-'+this.settings.id).remove();
									//optional
									return 'available';
							} else if (this.status() == 'unavailable') { //sold
								return 'unavailable';
							} else {
								return this.style();
							}
						}
					});
					//sold seat
					sc.get([<%=rs.getString(1)%>]).status('unavailable');
                                                                
				});
				//sum total money
				function recalculateTotal(sc) {
					var total = 0;
					sc.find('selected').each(function () {
						total += price;
					});
							
					return total;
				}
			</script>
                        <%
                            String dbstr = request.getParameter("str");
                            PreparedStatement pst1 = con.prepareStatement("UPDATE MOVIE SET SEATS=CONCAT(SEATS,dbstr)");
                            pst1.executeQuery();
                        %>
	</div>
	
</div>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>
