<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html lang="en">
	<head>
	
	<spring:url value="/resources/css/form.css" var="formCSS"/>
	<spring:url value="/resources/css/style.css" var="styleCSS"/>
	<spring:url value="/resources/css/ie.css" var="ieCSS"/>
	
	<!-- JS Files -->
	<spring:url value="/resources/js/jquery.js" var="jqueryJS"/>
	<spring:url value="/resources/js/jquery-migrate-1.2.1.js" var="migrateJS"/>
	<spring:url value="/resources/js/script.js" var="scriptJS"/>
	<spring:url value="/resources/js/superfish.js" var="superfishJS"/>
	<spring:url value="/resources/js/sForm.js" var="sformJS"/>
	<spring:url value="/resources/js/jquery.ui.totop.js" var="jqueryuiJS"/> 
	<spring:url value="/resources/js/jquery.equalheights.js" var="equalheightJS"/>
	<spring:url value="/resources/js/jquery.easing.1.3.js" var="easingJS"/>
	<spring:url value="/resources/js/html5shiv.js" var="html5shivJS"/>
	
	<!-- Image Files -->
	
	<spring:url value="/resources/image/favicon.ico" var="faviconICO"/>
	<spring:url value="/resources/image/logo.png" var="logoPNG"/>
	
		<title>Contacts</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="${faviconICO}">
		<link rel="shortcut icon" href="${faviconICO}" />
		<link rel="stylesheet" href="${formCSS}">
		<link rel="stylesheet" href="${styleCSS}">
		
		<script src="${jqueryJS}"></script>
		<script src="${migrateJS}"></script>
		<script src="${scriptJS}"></script>
		<script src="${superfishJS}"></script>
		<script src="${sformJS}"></script>
		<script src="${jqueryuiJS}"></script>
		<script src="${equalheightJS}"></script>
		<script src="${easingJS}"></script>
		<script>
		$(document).ready(function(){
			$().UItoTop({ easingType: 'easeOutQuart' });
			});
		</script>
		<!--[if lt IE 8]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
			<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
			</a>
		</div>
		<![endif]-->
		<!--[if lt IE 9]>
		<script src="${html5shivJS}"></script>
		<link rel="stylesheet" media="screen" href="${ieCSS}">
		<![endif]-->
	</head>
	<body class="" id="top">
<!--==============================header=================================-->
		<header>
			<div class="container_12">
				<div class="grid_12">
					<h1>
						<a href="index.html">
							<img src="${logoPNG}" alt="Your Happy Family">
						</a>
					</h1>
					<div class="menu_block">
						<a href="#" class="donate">DONATE</a>
						<div class="clear"></div>
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu">
								<li><a href="index.html">Home</a></li>
								<li><a href="index-1.html">Our Objectives</a></li>
								<li><a href="index-2.html">Media &amp; Gallery</a></li>
								<li><a href="index-3.html">Family Tree</a></li>
								<li class="current"><a href="index-4.html">Contacts</a></li>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</header>
<!--==============================Content=================================-->
		<div class="content"><div class="ic">More Website Templates @ TemplateMonster.com - March 24, 2014!</div>
			<div class="container_12">
				<div class="grid_12">
					<h2>Find Us</h2>
					<div class="map">
						<figure class="">
							<iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
						</figure>
						<div class="grid_4 alpha">
							<h2>Address:</h2>
							<address>
								<span class="fa fa-home"></span>
								138 Atlantis Ln <br>
								Kingsport <br>
								Illinois 121164
							</address>
						</div>
						<div class="grid_4">
							<h2>Phones:</h2>
							<div class="m_phone">
								<div class="fa fa-phone"></div>
								+1 800 559 6580
							</div>
							<div class="m_phone">
								<div class="fa fa-print"></div>
								+1 504 889 9898138
							</div>
						</div>
						<div class="grid_4 omega">
							<h2>Email:</h2>
							<a href="#"><span class="fa fa-envelope-o"></span> mail@demolink.org</a>
						</div>
						<div class="clear"></div>
					</div>
					<h2>Contact Form</h2>
					24/7 support is available for all <span class="col1"><a href="http://www.templatemonster.com/website-templates.php" rel="nofollow">premium</a></span> themes produced by TemplateMonster. Free themes go without it.
					<br>
					If you want a help in customization of the chosen freebie, address to <span class="col1"><a href="http://www.templatetuning.com/" rel="nofollow">TemplateTuning.</a></span>
					<form id="form">
						<div class="success_wrapper">
							<div class="success-message">Contact form submitted</div>
						</div>
						<label class="name">
							<input type="text" placeholder="Name:" data-constraints="@Required @JustLetters" />
							<span class="empty-message">*This field is required.</span>
							<span class="error-message">*This is not a valid name.</span>
						</label>
						<label class="email">
							<input type="text" placeholder="Email:" data-constraints="@Required @Email" />
							<span class="empty-message">*This field is required.</span>
							<span class="error-message">*This is not a valid email.</span>
						</label>
						<label class="subject">
							<input type="text" placeholder="Subject:" data-constraints="@Required @JustLetters"/>
							<span class="empty-message">*This field is required.</span>
							<span class="error-message">*This is not a valid phone.</span>
						</label>
						<label class="message">
							<textarea placeholder="Message:" data-constraints='@Required @Length(min=20,max=999999)'></textarea>
							<span class="empty-message">*This field is required.</span>
							<span class="error-message">*The message is too short.</span>
						</label>
						<div>
							<div class="clear"></div>
							<div class="btns">
								<a href="#" data-type="reset" class="btn">Clear</a>
								<a href="#" data-type="submit" class="btn">Send</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="bottom_block">
			<div class="container_12">
				<div class="grid_4 ">
					<h3>Stay Informed</h3>
					<div class="text1">Subscribe to Our Newsletter</div>
					<form id="newsletter">
						<div class="rel">
							<div class="success">Your subscribe request has been sent!</div>
							<label class="email">
								<input type="email" value="Enter your Email" >
								<span class="error">*This is not a valid email address.</span>
							</label>
						</div>
						<a href="#" class="btn" data-type="submit">Submit</a>
					</form>
				</div>
				<div class="grid_5 prefix_3">
					<h3>Stay Connected</h3>
					<div class="text1">Follow Us on Social Media Accounts </div>
					Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit. Proin pharetra
					<div class="socials">
						<a href="#"><div class="fa fa-twitter"></div></a>
						<a href="#"><div class="fa fa-facebook"></div></a>
						<a href="#"><div class="fa fa-pinterest-square"></div></a>
						<a href="#"><div class="fa fa-google-plus"></div></a>
						<a href="#"><div class="fa fa-instagram"></div></a>
					</div>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="copy">
						Life &copy; 2014 | <a href="#">Privacy Policy</a> <br> Website designed by <a href="http://www.templatemonster.com/" rel="nofollow">TemplateMonster.com </a>
					</div>
				</div>
			</div>
		</footer>
	</body>
</html>