<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
	<head>
	
	<spring:url value="/resources/css/form.css" var="formCSS"/>
	<spring:url value="/resources/css/thumbs.css" var="thumbsCSS"/>
	<spring:url value="/resources/css/slider.css" var="sliderCSS"/>
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
	<spring:url value="/resources/js/jquery.iosslider.min.js" var="iossliderJS"/>
	<spring:url value="/resources/js/html5shiv.js" var="html5shivJS"/>
	<spring:url value="/resources/js/jquery.hoverdir.js" var="hoverdirJS"/>
	
	<!-- Image Files -->
	
	<spring:url value="/resources/image/favicon.ico" var="faviconICO"/>
	<spring:url value="/resources/image/logo.png" var="logoPNG"/>
	<spring:url value="/resources/image/page1_img1.jpg" var="founderPNG"/>
	
		<title>Media &amp; Gallery</title>
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
					<div class="menu_block ">
						<a href="#" class="donate">DONATE</a>
						<div class="clear"></div>
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu">
								<li><a href="index.html">Home</a></li>
								<li><a href="index-1.html">Our Objectives</a></li>
								<li class="current"><a href="index-2.html">Media &amp; Gallery</a></li>
								<li><a href="index-3.html">Get Involved</a></li>
								<li><a href="index-4.html">Contacts</a></li>
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
				<div class="grid_7">
					<div class="block2">
						<h2><a href="http://www.youtube.com/watch?v=W4GMYQx58OE">The Lizard Effect in Lesotho</a></h2>
						<figure class="video">
							<iframe width="640" height="360" src="http://www.youtube.com/embed/W4GMYQx58OE?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>
						</figure>
						Lorem ipsum dolor sit amet, secteturipiscing elitno mollis erat mattis neque cilisis, sit amet ultricies erater utrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit. Proin pharetra luctus diam
					</div>
					<div class="block2">
						<h2> <a href="http://www.youtube.com/watch?v=51eZ2IIPNas">Run It Forward - Official Charity (Promo Video)</a></h2>
						<figure class="video">
							<iframe width="640" height="360" src="http://www.youtube.com/embed/51eZ2IIPNas?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>
						</figure>
						Dorem ipsum dolor sit amet, secteturipiscing elitno mollis erat mattis nequetolim cilisis, sit amet ultricies erater utrum. Dras facilisis, nulla vel viverra auctorleot magna sodales felis, quis malesuada nibh odio ut veliroin pharetra luctus di
					</div>
					<div class="block2">
						<h2><a href="http://www.youtube.com/watch?v=DEnlrE4iMBU">World Water Day Video from Charity: Water</a></h2>
						<figure class="video">
							<iframe width="640" height="360" src="http://www.youtube.com/embed/DEnlrE4iMBU?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>
						</figure>
						Sorem ipsum dolor sit amet, secteturipiscing elitno mollis erat mattis nequetolim cilisis, sit amet ultricies erater utrum. Fras facilisis, nulla vel viverra auctorleot magna sodales felis, quis malesuada nibh odio ut veliroin pharetra
					</div>
				</div>
				<div class="grid_4 prefix_1">
					<h2>Top Videos</h2>
					<ul class="list2 col2">
						<li><a href="#">Vivamuagnamereoli molo der</a></li>
						<li><a href="#">Aliquam nibh ante, egestaslo</a></li>
						<li><a href="#">Integer convallis orci vel mi laoree</a></li>
						<li><a href="#">Hnteger convallis reoli molober</a></li>
						<li><a href="#">Holokitivamuagnamereoli molo</a></li>
						<li><a href="#">Geryvamuagnamereoli moki</a></li>
						<li><a href="#">Mertuagnamereoli molonuber</a></li>
						<li><a href="#">Berivamuagnamereoli molomi</a></li>
						<li><a href="#">Ferivamuagnamereoli molmji</a></li>
					</ul>
					<h2>Archive</h2>
					<ul class="list col2 l1">
						<li>
							<time datetime="2014-01-01">20<span>Jan</span></time>
							<div class="extra_wrapper"><a href="#">Lorem ipsum dolor sit ametcing elitno mollis erat mattis neque </a></div>
						</li>
						<li>
							<time datetime="2014-01-01">02<span>Feb</span></time>
							<div class="extra_wrapper"><a href="#">Zorem ipsum dolor sit uripiscing elitno mollis erat mattis neque </a></div>
						</li>
						<li>
							<time datetime="2014-01-01">10<span>Feb</span></time>
							<div class="extra_wrapper"><a href="#">Porem ipsum dolor sit etpiscing elitno mollis erat mattis neque</a></div>
						</li>
						<li>
							<time datetime="2014-01-01">02<span>Mar</span></time>
							<div class="extra_wrapper"><a href="#">Koloorem ipsum dolor sit amet, teturipiscing elitno mollis erat </a></div>
						</li>
					</ul>
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