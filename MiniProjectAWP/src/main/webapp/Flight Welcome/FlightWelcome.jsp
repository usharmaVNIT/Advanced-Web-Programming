<%-- 
    Document   : FlightWelcome
    Created on : 13 Jun 2020, 15:47:27
    Author     : Official
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String uname = (String)session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
	<title>Flight Ticket Booking</title>
	<link rel="stylesheet" href="css/style.css">
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Flight Ticket Booking  Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</head>
<body>
    <header>
            <nav class="navbar navbar-inverse sticky">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">AWP PROJECT</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="../Introduction.html#about">About</a></li>
        <li><a href="../Introduction.html#contact">Contact</a></li>
        <li><a href="#">Feed Back</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
          <li><a href="#"><span class="glyphicon glyphicon-user"></span><%=uname%></a></li>
          <li><a href="FlightWelcomeNotRegistered.html"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
        </header>
	<h1>Flight Ticket Booking</h1>
	<div class="main-agileinfo">
		<div class="sap_tabs">
			<div id="horizontalTab">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item"><span>One way</span></li>
					<li class="resp-tab-item"><span>Round Trip</span></li>
				</ul>
				<div class="clearfix"> </div>
				<div class="resp-tabs-container">
					<div class="tab-1 resp-tab-content oneway">
						<form action="../Flightbooking/Flightbooking.jsp?oneway=true" method="post">
							<div class="from">
								<h3>From</h3>
								<input type="text" name="depcity" class="city1" placeholder="Type Departure City" required="">
							</div>
							<div class="to">
								<h3>To</h3>
								<input type="text" name="descity" class="city2" placeholder="Type Destination City" required="">
							</div>
							<div class="clear"></div>
							<div class="date">
								<div class="depart">
									<h3>Depart</h3>
									<input class="date" id="datepicker2" name="depdate" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">
									
								</div>
							</div>
							<div class="class">
								<h3>Class</h3>
								<select id="w3_country1" onchange="change_country(this.value)" class="frm-field required" name="tickettype">
									<option value="economy">Economy</option>
									<option value="Premium Economy">Premium Economy</option>
									<option value="Business">Business</option>
									<option value="First Class">First class</option>
								</select>

							</div>
							<div class="clear"></div>
							<div class="numofppl">
								<div class="adults">
									<h3>Adult:(12+ yrs)</h3>
									<div class="quantity">
										<div class="quantity-select">
<!--											<div class="entry value-minus">&nbsp;</div>
											<div class="entry value"><span>1</span></div>
											<div class="entry value-plus active">&nbsp;</div>-->
<input type="number" name = "quantityTicketadult" required ="">
										</div>
									</div>
								</div>
								<div class="child">
									<h3>Child:(2-11 yrs)</h3>
									<div class="quantity">
										<div class="quantity-select">
<!--											<div class="entry value-minus">&nbsp;</div>
											<div class="entry value" ><span>1</span></div>
											<div class="entry value-plus active">&nbsp;</div>-->
<input type="number" name = "quantityTicketchild" required="">
										</div>
									</div>
								</div>
								<div class="clear"></div>
							</div>
							<div class="clear"></div>
							<input type="submit" value="Search Flights">
						</form>

					</div>
					<div class="tab-1 resp-tab-content roundtrip">
						<form action="../Flightbooking/Flightbooking.jsp?oneway=false" method="post">
							<div class="from">
								<h3>From</h3>
								<input type="text" name="depcity" class="city1" placeholder="Type Departure City" required="">
							</div>
							<div class="to">
								<h3>To</h3>
								<input type="text" name="descity" class="city2" placeholder="Type Destination City" required="">
							</div>
							<div class="clear"></div>
							<div class="date">
								<div class="depart">
									<h3>Depart</h3>
									<input  id="datepicker" name="depdate" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">
								</div>
								<div class="return">
									<h3>Return</h3>
									<input  id="datepicker1" name="retdate" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">
								</div>
								<div class="clear"></div>
							</div>
							<div class="class">
								<h3>Class</h3>
								<select id="w3_country1" onchange="change_country(this.value)" class="frm-field required" name="tickettype">
									<option value="economy">Economy</option>
									<option value="Premium Economy">Premium Economy</option>
									<option value="Business">Business</option>
									<option value="First Class">First class</option>
								</select>

							</div>
							<div class="clear"></div>
							<div class="numofppl">
								<div class="adults">
									<h3>Adult:(12+ yrs)</h3>
									<div class="quantity">
										<div class="quantity-select">
<!--											<div class="entry value-minus">&nbsp;</div>
											<div class="entry value"><span>1</span></div>
											<div class="entry value-plus active">&nbsp;</div>-->
<input type="number" name = "quantityTicketadult" required ="">
										</div>
									</div>
								</div>
								<div class="child">
									<h3>Child:(2-11 yrs)</h3>
									<div class="quantity">
										<div class="quantity-select">
<!--											<div class="entry value-minus">&nbsp;</div>
											<div class="entry value"><span>1</span></div>
											<div class="entry value-plus active">&nbsp;</div>-->
<input type="number" name = "quantityTicketchild" required="">
										</div>
									</div>
								</div>
								<div class="clear"></div>
							</div>
							<div class="clear"></div>
							<input type="submit" value="Search Flights">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-w3l">
		<p class="agileinfo"> &copy; 2020 Flight Ticket Booking . All Rights Reserved For BT18CSE021 and Team</p>
	</div>
	<!--script for portfolio-->
		<script src="js/jquery.min.js"> </script>
		<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(document).ready(function () {
				$('#horizontalTab').easyResponsiveTabs({
					type: 'default', //Types: default, vertical, accordion
					width: 'auto', //auto or any width like 600px
					fit: true   // 100% fit in a container
				});
			});
		</script>
		<!--//script for portfolio-->
				<!-- Calendar -->
				<link rel="stylesheet" href="css/jquery-ui.css" />
				<script src="js/jquery-ui.js"></script>
				  <script>
						  $(function() {
							$( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
						  });
				  </script>
			<!-- //Calendar -->
			<!--quantity-->
									<script>
									$('.value-plus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
										divUpd.text(newVal);
									});

									$('.value-minus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
										if(newVal>=1) divUpd.text(newVal);
									});
									</script>
								<!--//quantity-->
						<!--load more-->
								<script>
	$(document).ready(function () {
		size_li = $("#myList li").size();
		x=1;
		$('#myList li:lt('+x+')').show();
		$('#loadMore').click(function () {
			x= (x+1 <= size_li) ? x+1 : size_li;
			$('#myList li:lt('+x+')').show();
		});
		$('#showLess').click(function () {
			x=(x-1<0) ? 1 : x-1;
			$('#myList li').not(':lt('+x+')').hide();
		});
	});
</script>
<!-- //load-more -->



</body>
</html>