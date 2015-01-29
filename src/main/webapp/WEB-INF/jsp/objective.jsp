	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	
	<!DOCTYPE html>
	<html lang="en">
	
	<spring:url value="/resources/css/form.css" var="formCSS" />
	<spring:url value="/resources/css/thumbs.css" var="thumbsCSS" />
	<spring:url value="/resources/css/slider.css" var="sliderCSS" />
	<spring:url value="/resources/css/style.css" var="styleCSS" />
	<spring:url value="/resources/css/ie.css" var="ieCSS" />
	
	<!-- JS Files -->
	<spring:url value="/resources/js/jquery.js" var="jqueryJS" />
	<spring:url value="/resources/js/jquery-migrate-1.2.1.js"
		var="migrateJS" />
	<spring:url value="/resources/js/script.js" var="scriptJS" />
	<spring:url value="/resources/js/superfish.js" var="superfishJS" />
	<spring:url value="/resources/js/sForm.js" var="sformJS" />
	<spring:url value="/resources/js/jquery.ui.totop.js" var="jqueryuiJS" />
	<spring:url value="/resources/js/jquery.equalheights.js"
		var="equalheightJS" />
	<spring:url value="/resources/js/jquery.easing.1.3.js" var="easingJS" />
	<spring:url value="/resources/js/jquery.iosslider.min.js"
		var="iossliderJS" />
	<spring:url value="/resources/js/html5shiv.js" var="html5shivJS" />
	<spring:url value="/resources/js/jquery.hoverdir.js" var="hoverdirJS" />
	
	<!-- Image Files -->
	
	<spring:url value="/resources/image/favicon.ico" var="faviconICO" />
	<spring:url value="/resources/image/logo.png" var="logoPNG" />
	<spring:url value="/resources/image/page1_img1.jpg" var="founderPNG" />
	
	<!-- Events images -->
	<spring:url value="/resources/image/page2_img1.jpg" var="firstPNG" />
	<spring:url value="/resources/image/page2_img2.jpg" var="secondPNG" />
	<spring:url value="/resources/image/page2_img3.jpg" var="thirdPNG" />
	<spring:url value="/resources/image/page2_img4.jpg" var="fourthPNG" />
	
	<head>
	<title>Our Objective</title>
	<meta charset="utf-8">
	<meta name="format-detection" content="telephone=no" />
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
		$(document).ready(function() {
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
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
						<a href="index.html"> <img src="${logoPNG}"
							alt="Your Happy Family">
						</a>
					</h1>
					<div class="menu_block">
						<a href="#" class="donate">DONATE</a>
						<div class="clear"></div>
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu">
								<li><a href="index.html">Home</a></li>
								<li class="current"><a href="index-1.html">Our
										Objectives</a></li>
								<li><a href="index-2.html">Media &amp; Gallery</a></li>
								<li><a href="index-3.html">Family Tree</a></li>
								<li><a href="index-4.html">Contacts</a></li>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</header>
		<!--==============================Content=================================-->
		<div class="content">
			<div class="ic">More Website Templates @ TemplateMonster.com -
				March 24, 2014!</div>
			<div class="container_12">
				<div class="grid_6">
					<h2>We Care About Giving</h2>
					<img src="${firstPNG}" alt="" class="img_inner fleft">
					<div class="extra_wrapper">
						<p class="col2">
							<a href="#">Bras facilisis, nulla vel viverra tor, leo magna
								sodales felis, quise </a>
						</p>
						Kroin pharetra luctus diamer scelerisque eros convalliko <br>
						<a href="#" class="btn">Learn More</a>
					</div>
					<div class="clear cl1"></div>
					<img src="${secondPNG}" alt="" class="img_inner fleft">
					<div class="extra_wrapper">
						<p class="col2">
							<a href="#">Horas facilisis, nulla vel viverra tor, leo magna
								sodales felisulo </a>
						</p>
						Proin pharetra luctus diamerer scelerisque eros convallisami <br>
						<a href="#" class="btn">Learn More</a>
					</div>
					<div class="clear cl2"></div>
					<img src="${thirdPNG}" alt="" class="img_inner fleft">
					<div class="extra_wrapper">
						<p class="col2">
							<a href="#">Goreas facilisis, nulla vel viverra tor, leo magna
								sodales felisuiser </a>
						</p>
						Loroin pharetra luctus diamer scelerisque eros convallisager <br>
						<a href="#" class="btn">Learn More</a>
					</div>
					<div class="clear cl1"></div>
				</div>
				<div class="grid_5 prefix_1">
					<h2>Upcoming Actions</h2>
					<ul class="list l1 col2">
						<li><time datetime="2014-01-01">
								20<span>Mar</span>
							</time>
							<div class="extra_wraper">
								<a href="#">Lorem ipsum dolor sit amet, secteturipiscing
									elitno mollis erat mattis neque facilisis, sit amet ultricies
									erater </a>
							</div></li>
						<li><time datetime="2014-01-01">
								30<span>Mar</span>
							</time>
							<div class="extra_wraper">
								<a href="#">Dorem ipsum dolor sit amet, secteturipiscing
									elitno mollis erat mattis neque facilisis, sit amet ultricies
									erater eroli</a>
							</div></li>
						<li><time datetime="2014-01-01">
								10<span>Apr</span>
							</time>
							<div class="extra_wraper">
								<a href="#">Morem ipsum dolor sit amet, secteturipiscing
									elitno mollis erat mattis neque facilisis, sit amet ultricies
									eraterer lokoi </a>
							</div></li>
						<li><time datetime="2014-01-01">
								25<span>Apr</span>
							</time>
							<div class="extra_wraper">
								<a href="#">Toloorem ipsum dolor sit amet, teturipiscing
									elitno mollis erat mattis neque facilisis, sit amet ultricies
									eraterwe retylo </a>
							</div></li>
					</ul>
				</div>
			</div>
			<div class="hor hr1"></div>
			<div class="container_12">
				<div class="grid_3 maxheight">
					<h2>Our Services</h2>
					<ul class="list1 col2">
						<li><a href="#">Vivamuagnamere bertoli molo</a></li>
						<li><a href="#">Mervamuagnarewq geertoli molotilo</a></li>
						<li><a href="#">Fergnamerolomer ertoli molore</a></li>
						<li><a href="#">Hertoamuagna bertoli tilok</a></li>
						<li><a href="#">Dasvamuagnarew ertoli molov</a></li>
					</ul>
				</div>
				<div class="grid_4 prefix_1 suffix_1 ver maxheight">
					<h2>About the Latest Action</h2>
					<div class="block1">
						<img src="${fourthPNG}" alt=""> Maecenas vehicula egestas
						enatis. Duis mass uctor non pellentesque vel liquet sit amet erat.
						Nullam eget dignissim nisi, aliquam
					</div>
				</div>
				<div class="grid_3 maxheight">
					<h2>Testimonials</h2>
					<blockquote class="bq2">
						<p>Nulla vel viverra auctorleo agna sodales felis, quis
							malesuada nibh odio ut velit. Proin phar</p>
						<div class="bq_bot">
							Mark Johnson, <a href="#" class="col1">info@demolink.org</a>
						</div>
					</blockquote>
					<blockquote class="bq2">
						<p>Mulla vel viverra auctorleo nign sodales felis, quis
							malesuadat nibh odio ut veliin pharew</p>
						<div class="bq_bot">
							Patrick Pool, <a href="#" class="col1">info@demolink.org</a>
						</div>
					</blockquote>
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
							<label class="email"> <input type="email"
								value="Enter your Email"> <span class="error">*This
									is not a valid email address.</span>
							</label>
						</div>
						<a href="#" class="btn" data-type="submit">Submit</a>
					</form>
				</div>
				<div class="grid_5 prefix_3">
					<h3>Stay Connected</h3>
					<div class="text1">Follow Us on Social Media Accounts</div>
					Cras facilisis, nulla vel viverra auctor, leo magna sodales felis,
					quis malesuada nibh odio ut velit. Proin pharetra
					<div class="socials">
						<a href="#"><div class="fa fa-twitter"></div></a> <a href="#"><div
								class="fa fa-facebook"></div></a> <a href="#"><div
								class="fa fa-pinterest-square"></div></a> <a href="#"><div
								class="fa fa-google-plus"></div></a> <a href="#"><div
								class="fa fa-instagram"></div></a>
					</div>
				</div>
			</div>
		</div>
		<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="copy">
						Life &copy; 2014 | <a href="#">Privacy Policy</a> <br> Website
						designed by <a href="http://www.templatemonster.com/"
							rel="nofollow">TemplateMonster.com</a>
					</div>
				</div>
			</div>
		</footer>
	</body>
	</html>