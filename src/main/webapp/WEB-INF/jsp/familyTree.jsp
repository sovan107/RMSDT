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
	
	<!-- Navigation URLs -->
	<spring:url value="/" var="objectiveURL"/>
	<spring:url value="/objective" var="objectiveURL"/>
	<spring:url value="/gallery" var="galleryURL"/>
	<spring:url value="/family_tree" var="familyTreeURL"/>
	<spring:url value="/contacts" var="contactURL"/>
	
	<!-- CSS Files -->
	<spring:url value="/resources/css/form.css" var="formCSS"/>
	<spring:url value="/resources/css/style.css" var="styleCSS"/>
	<spring:url value="/resources/css/ie.css" var="ieCSS"/>
	<spring:url value="/resources/css/touchTouch.css" var="touchCSS"/>
	
	<!-- JS Files -->
	<spring:url value="/resources/js/jquery.js" var="jqueryJS"/>
	<spring:url value="/resources/js/jquery-migrate-1.2.1.js" var="migrateJS"/>
	<spring:url value="/resources/js/script.js" var="scriptJS"/>
	<spring:url value="/resources/js/superfish.js" var="superfishJS"/>
	<spring:url value="/resources/js/sForm.js" var="sformJS"/>
	<spring:url value="/resources/js/jquery.ui.totop.js" var="jqueryuiJS"/> 
	<spring:url value="/resources/js/jquery.equalheights.js" var="equalheightJS"/>
	<spring:url value="/resources/js/jquery.easing.1.3.js" var="easingJS"/>
	<spring:url value="/resources/js/touchTouch.jquery.js" var="touchJS"/>
	<spring:url value="/resources/js/html5shiv.js" var="html5shivJS"/>
	
	<!-- Image Files -->
	
	<spring:url value="/resources/image/favicon.ico" var="faviconICO"/>
	<spring:url value="/resources/image/logo.png" var="logoPNG"/>
	
		<title>Get Involved</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="${faviconICO}">
		<link rel="shortcut icon" href="${faviconICO}" />
		<link rel="stylesheet" href="${formCSS}">
		<link rel="stylesheet" href="${touchCSS}">
		<link rel="stylesheet" href="${styleCSS}">
		
		<script src="${jqueryJS}"></script>
		<script src="${migrateJS}"></script>
		<script src="${scriptJS}"></script>
		<script src="${superfishJS}"></script>
		<script src="${sformJS}"></script>
		<script src="${jqueryuiJS}"></script>
		<script src="${equalheightJS}"></script>
		<script src="${easingJS}"></script>
		<script src="${touchJS}"></script>
		<script>
		$(document).ready(function(){
			$().UItoTop({ easingType: 'easeOutQuart' });
			$('.gallery a.gal').touchTouch();
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
					<div class="menu_block ">
						<a href="#" class="donate">DONATE</a>
						<div class="clear"></div>
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu">
								<li><a href="${homeURL}">Home</a></li>
								<li><a href="${objectiveURL}">Objectives</a></li>
								<li><a href="${galleryURL}">Media &amp; Gallery</a></li>
								<li class="current"><a href="${familyTree}">Family Tree</a></li>
								<li><a href="${contactURL}">Contacts</a></li>
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
				<div class="gallery">
					<div class="grid_3">
						<h2>Aliquam nibh antd dictum</h2>
						<a href="images/big1.jpg" class="gal"><img src="images/page4_img1.jpg" alt=""></a>
						Broin pharetra luctus diamesque eros convallikoaecenas vehicula egestas venenatis. Duis masser
						<br>
						<a href="#" class="btn">Learn More</a>
					</div>
					<div class="grid_3">
						<h2>Praesent faucibus malesu</h2>
						<a href="images/big2.jpg" class="gal"><img src="images/page4_img2.jpg" alt=""></a>
						Kroin pharetra luctus diamesque eros convallikoaecenas vehicula egestas venenatis. Duis mass
						<br>
						<a href="#" class="btn">Learn More</a>
					</div>
					<div class="grid_3">
						<h2>Hraesenibus malesua</h2>
						<a href="images/big3.jpg" class="gal"><img src="images/page4_img3.jpg" alt=""></a>
						Groin pharetra luctus diamesque eros convallikoaecenas vehicula egestas venenatis. Duis massylo
						<br>
						<a href="#" class="btn">Learn More</a>
					</div>
					<div class="grid_3">
						<h2>Tam nibh antd dictumer</h2>
						<a href="images/big4.jpg" class="gal"><img src="images/page4_img4.jpg" alt=""></a>
						Xasroin pharetra luctudiamesque eros convallikoaecenas vehicula egestas venenatisss
						<br>
						<a href="#" class="btn">Learn More</a>
					</div>
					<div class="clear"></div>
					<div class="grid_3">
						<h2>Stibuluantd dictumertol</h2>
						<a href="images/big5.jpg" class="gal"><img src="images/page4_img5.jpg" alt=""></a>
						Kroin pharetra luctus diamesque eros convallikoaecenas vehicula egestas venenatis. Duis mass
						<br>
						<a href="#" class="btn">Learn More</a>
					</div>
					<div class="grid_3">
						<h2>Vestibulum volutpat turpi</h2>
						<a href="images/big6.jpg" class="gal"><img src="images/page4_img6.jpg" alt=""></a>
						Froin pharetra luctus diamesque eros convallikoaecenas vehicula egestas venenatis. Duis massolo
						<br>
						<a href="#" class="btn">Learn More</a>
					</div>
					<div class="grid_3">
						<h2>Ferquam nibh antd dictuo</h2>
						<a href="images/big7.jpg" class="gal"><img src="images/page4_img7.jpg" alt=""></a>
						Rein pharetra luctus diamesque eros convallikoaecenas vehicula egestas venenatisis massde
						<br>
						<a href="#" class="btn">Learn More</a>
					</div>
					<div class="grid_3">
						<h2>Deram nibh antd dictumo</h2>
						<a href="images/big8.jpg" class="gal"><img src="images/page4_img8.jpg" alt=""></a>
						Jroin pharetra luctus diamesque eros convallikoaecenas vehicula egestas venenatis. Duis masolo
						<br>
						<a href="#" class="btn">Learn More</a>
					</div>
					<div class="clear"></div>
					<div class="grid_3">
						<h2>Gertolobh antd dictumew</h2>
						<a href="images/big9.jpg" class="gal"><img src="images/page4_img9.jpg" alt=""></a>
						Geroin pharetra luctusdiamesque erosallikoaecenas vehicul egestas venenatis. Duis masswertloi
						<br>
						<a href="#" class="btn">Learn More</a>
					</div>
					<div class="grid_3">
						<h2>Aliquam nibh antd dictum</h2>
						<a href="images/big10.jpg" class="gal"><img src="images/page4_img10.jpg" alt=""></a>
						Kroin pharetra luctus diamesque eros convallikoaecenas vehicula egestas venenatis. Duis mass
						<br>
						<a href="#" class="btn">Learn More</a>
					</div>
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